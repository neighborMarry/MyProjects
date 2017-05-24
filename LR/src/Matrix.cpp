/*
 * Matrix.cpp
 * The definition of matrix operations
 */

#include "Matrix.h"

using namespace Eigen;

typedef Eigen::Triplet<float> T;

SparseMat *create_sparse_matrix(
        int row, int col,
        const std::vector<Sample*> &samples) {
    SparseMat *ret = new SparseMat(row, col);
    ret->setZero();
    std::vector<T> t;
    for (int i=0; i<(int)samples.size(); i++) {
        Sample *s = samples[i];
        // p: feat id, value
        for (auto &p : s->feat) {
            t.push_back(T(p.first, i, p.second));
        }
    }
    ret->setFromTriplets(t.begin(), t.end());
    return ret;
}

SparseMat *create_sparse_matrix(
        int row, int col,
        const std::vector<Sample*> &samples,
        const std::vector<int> &idx,
        int st, int ed) {
    SparseMat *ret = new SparseMat(row, col);
    ret->setZero();
    std::vector<T> t;
    for (int i=st; i<ed; i++) {
        Sample *s = samples[idx[i]];
        // p: feat id, value
        for (auto &p : s->feat) {
            t.push_back(T(p.first, i - st, p.second));
        }
    }
    ret->setFromTriplets(t.begin(), t.end());
    return ret;
}

DenseMat *create_dense_matrix(
        int row, int col,
        const std::vector<Sample*> &samples,
        const std::vector<int> &idx,
        int st, int ed) {
    DenseMat *ret = new DenseMat(row, col);
    ret->setZero();
    for (int i=st; i<ed; i++) {
        Sample *s = samples[idx[i]];
        (*ret)(s->label, i - st) = 1;
    }
    return ret;
}
