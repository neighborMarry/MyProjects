/*
 * Matrix.h
 * The declaration of wrapper functions of matrix operation
 */

#ifndef MATRIX_HEADER
#define MATRIX_HEADER

#include "Eigen/Sparse"
#include "Eigen/Dense"
#include <vector>
#include "Sample.h"

typedef Eigen::SparseMatrix<double> SparseMat;
typedef Eigen::MatrixXd DenseMat;

/*
 * create the input sparse matrix of whole data
 */
SparseMat *create_sparse_matrix(
        int row, int col,
        const std::vector<Sample*> &samples);

/*
 * create the input sparse matrix of minibatch
 */
SparseMat *create_sparse_matrix(
        int row, int col,
        const std::vector<Sample*> &samples,
        const std::vector<int> &idx,
        int st, int ed);

/*
 * create the dense matrix of true label
 */
DenseMat *create_dense_matrix(
        int row, int col,
        const std::vector<Sample*> &samples,
        const std::vector<int> &idx,
        int st, int ed);

#endif



