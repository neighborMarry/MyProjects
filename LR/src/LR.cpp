/*
 * LR.cpp
 * The definition of class LR
 */

#include "LR.h"
#include "Utils.h"
#include <thread>
#include "Stopwatch.h"
#include "Log.h"

using namespace std;

inline double sqr(double x) {
    return x * x;
}

LR::LR(Config cfg) {
    LOG("start initialize LR\n");
    m_alpha = cfg.alpha;
    m_batch_size = cfg.batch_size;
    m_lambda = cfg.lambda;
    m_feature_size = cfg.feature_size;
    m_output_size = 5;
    m_iter_cnt = cfg.iter_cnt;
    m_thread_cnt = cfg.thread_cnt;
    m_momentum = cfg.momentum;

    l.resize(m_thread_cnt);
    for (int i=0; i<m_thread_cnt; i++) {
        dw.push_back(new DenseMat(m_output_size, m_feature_size));
        dw[i]->setZero();
    }

    w = new DenseMat(m_output_size, m_feature_size);
    // random initialize
    for (int i=0; i<m_output_size; i++) {
        for (int j=0; j<m_feature_size; j++) {
            (*w)(i, j) = (random() % 1000) / 10000.0;
        }
    }
    LOG("finish initialize LR\n");
}

void LR::train(const char *train_filename, const char *out_filename) {
    //LOG("start LR train\n");
    m_samples = read_sample(train_filename);
    int n = m_samples.size();
    m_idx.resize(n);
    for (int i=0; i<n; i++) {
        m_idx[i] = i;
    }

    float last_loss = 0;

    Stopwatch stopwatch;
    // one iteration is train through the whole dataset
    for (int iter=0; iter<m_iter_cnt; iter++) {
        random_permutation(m_idx); 
        // hogwild! training
        vector<thread> pool;
        for (int i=0; i<m_thread_cnt; i++) {
            pool.push_back(thread(
                        [=]() {
                        train_thread(i);
                        }));
        }
        for (int i=0; i<m_thread_cnt; i++) {
            pool[i].join();
        }
        double loss = 0;
        for (int i=0; i<m_thread_cnt; i++) {
            loss += l[i];
        }
        loss /= n;
        if ((iter + 1) % 1 == 0) {
            LOG("iter: %d, l: %.10f, time: %.2fs\n", iter + 1, loss, stopwatch.time());
        }
        if ((iter + 1) % 10 == 0) {
            LOG("start calculate error\n");
            // calculate error
            vector<pair<int, double>> pred = predict();
            double acc = 0;
            double rmse = 0;
            for (int i=0; i<n; i++) {
                if (pred[i].first == m_samples[i]->label) {
                    acc++;
                }
                rmse += sqr(pred[i].first - m_samples[i]->label);
            }
            LOG("acc: %.10f, rmse: %.10f\n", acc / n, sqrt(rmse / n));
        }

        if (fabs(loss - last_loss) < 1e-7) {
            break;
        }
    }

    LOG("finish train\n");

    LOG("start calculate error\n");
    // calculate error
    vector<pair<int, double>> pred = predict();
    double acc = 0;
    double rmse = 0;
    for (int i=0; i<n; i++) {
        if (pred[i].first == m_samples[i]->label) {
            acc++;
        }
        rmse += sqr(pred[i].first - m_samples[i]->label);
    }
    LOG("acc: %.5f, rmse: %.5f\n", acc / n, sqrt(rmse / n));

    print_result(out_filename);

    // free memory
    for (auto i : m_samples) {
        delete i;
    }
    LOG("finish LR train\n");
}

void LR::train_thread(int thread_id) {
    int t = (m_samples.size() + m_thread_cnt - 1) / m_thread_cnt;
    int st = t * thread_id;
    int ed = min(t * (thread_id + 1), (int)m_samples.size());
    l[thread_id] = 0;
    for (int i=st; i<ed; i+=m_batch_size) {
        l[thread_id] += train_mini_batch(i, thread_id);
    }
}

void LR::test(const char *test_filename, const char *out_filename) {
    LOG("start test\n");
    m_samples = read_sample(test_filename);

    print_result(out_filename);

    for (auto i : m_samples) {
        delete i;
    }
    LOG("finish test\n");
}

void LR::print_result(const char *out_filename) {
    vector<pair<int, double>> pred = predict();

    FILE *fo = fopen(out_filename, "w");
    for (auto p : pred) {
        fprintf(fo, "%d %.8f\n", p.first + 1, p.second + 1);
    }
    fclose(fo);
}

vector<pair<int, double>> LR::predict() {
    LOG("start predict\n");
    SparseMat *x = create_sparse_matrix(m_feature_size, 
            m_samples.size(), m_samples);
    DenseMat *y = forward(x);
    vector<pair<int, double>> pred;
    int n = m_samples.size();
    for (int i=0; i<n; i++) {
        double E = 0;
        double maxv = 0;
        int maxy = 0;
        for (int j=0; j<m_output_size; j++) {
            double v = (*y)(j, i);
            E += j * v;
            if (v > maxv) {
                maxv = v;
                maxy = j;
            }
        }
        pred.push_back(make_pair(maxy, E));
    }

    delete x;
    delete y;

    LOG("finish predict\n");
    return pred;
}

DenseMat *LR::forward(SparseMat *x) {
    DenseMat *y = new DenseMat(*w * *x);
    for (int j=0; j<y->cols(); j++) {
        double v = 0;
        for (int i=0; i<m_output_size; i++) {
            (*y)(i, j) = exp((*y)(i, j));
            v += (*y)(i, j);
        }
        for (int i=0; i<m_output_size; i++) {
            (*y)(i, j) /= v;
        }
    }
    return y;
}

double LR::train_mini_batch(int st, int thread_id) {
    int ed = min(st + m_batch_size, (int)m_samples.size());
    if (ed < st) return 0;
    SparseMat *x = create_sparse_matrix(m_feature_size, ed - st, 
            m_samples, m_idx, st, ed);

    DenseMat *y = forward(x);

    double l = 0;
    for (int j=st; j<ed; j++) {
        double t = (*y)(m_samples[m_idx[j]]->label, j - st);
        l += log(t);
    }

    DenseMat *truth = create_dense_matrix(m_output_size, ed - st, 
            m_samples, m_idx, st, ed);

    *dw[thread_id] *= m_momentum;
    *dw[thread_id] += (1 - m_momentum) * m_alpha * ( ((*truth) - (*y))
            * x->transpose() - m_lambda * (*w));

    *w += *dw[thread_id]; 

    delete x;
    delete y;
    delete truth;

    return l;
}

