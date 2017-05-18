/*
 * LR.h
 * The declaration of class logistic regression
 */

#ifndef LR_HEADER
#define LR_HEADER

#include "Config.h"
#include "Sample.h"
#include "Matrix.h"
#include <vector>

/*
 * The class to run the logistic regression
 */
class LR {
    public:
        /*
         * Constructor, read the hyperprameters
         * and initialize member variables
         */
        LR(Config cfg);
        /*
         * The method of train. will print log likelihood each iteration
         * and RMSE every 10 iteration
         * Use hogwild! multi-thread training to accelarate
         */
        void train(const char *train_filename, const char *out_filename);
        /*
         * Calculate the result of testing set, store to file
         */
        void test(const char *test_filename, const char *out_filename);
    private:
        /*
         * Train each mini batch, return the loss on this batch
         */
        double train_mini_batch(int st, int thread_id);
        /*
         * The training process of each thread
         */
        void train_thread(int thread_id);
        /*
         * Predict the class and expectation of input
         */
        std::vector<std::pair<int, double>> predict();
        /*
         * Dump the result to file
         */
        void print_result(const char *out_filename);
        /*
         * Use input and weight to calculate output
         */
        DenseMat *forward(SparseMat *x);

        /*
         * input samples
         */
        std::vector<Sample*> m_samples;
        /*
         * idx use to random shuffle the input samples
         */
        std::vector<int> m_idx;

        /*
         * the parameter w
         */
        DenseMat *w;
        /*
         * The gradient of w for each thread
         */
        std::vector<DenseMat*> dw;
        /*
         * The loss of each thread
         */
        std::vector<double> l;

        /*
         * training hyper parameters
         */
        int m_batch_size;
        int m_feature_size;
        double m_alpha;
        double m_lambda;
        double m_momentum;
        int m_output_size;
        int m_iter_cnt;
        int m_thread_cnt;
};

#endif
