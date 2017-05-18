/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

#include <stdlib.h>

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    /*
     * use 12 local variables in total.
     * i, j, k, l for loop
     * a1 .. a8 for temp storage ( register )
     * handle 3 conditions separately
     */

    int i, j, k, l;
    int a1, a2, a3, a4, a5, a6, a7, a8;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    if (M == 32 && N == 32) {
        /*
         * do transpose for each 8*8 submatrix
         * for each submatrix, read one line of A to register
         * then copy that line to B
         */
        for (i=0; i<4; i++) {
            for (j=0; j<4; j++) {
                for (k=i*8; k<(i+1)*8; k++) {
                    l = j * 8;
                    a1 = A[k][l++];
                    a2 = A[k][l++];
                    a3 = A[k][l++];
                    a4 = A[k][l++];
                    a5 = A[k][l++];
                    a6 = A[k][l++];
                    a7 = A[k][l++];
                    a8 = A[k][l++];
                    l = j * 8;
                    B[l++][k] = a1;
                    B[l++][k] = a2;
                    B[l++][k] = a3;
                    B[l++][k] = a4;
                    B[l++][k] = a5;
                    B[l++][k] = a6;
                    B[l++][k] = a7;
                    B[l++][k] = a8;
                }
            }
        } 
    }
    if (M == 64 && N == 64) {
        /*
         * also transpose each 8*8 sub matrix;
         * because B[x][y]'s cache line == B[x + 4][y]'s cache line, 
         * only first four elements can be stored to B directly.
         * the last four elements need to be stored to B's unused place temporarily
         * choose the upper right submatrix of B to store
         * when i + 1 == j, different situation
         */
        for (i=0; i<7; i++) {
            for (j=0; j<8; j++) {
                if (i == 6 && j == 7) break;
                for (k=i*8; k<i*8+8; k++) {
                    l = j * 8;
                    a1 = A[k][l++];
                    a2 = A[k][l++];
                    a3 = A[k][l++];
                    a4 = A[k][l++];
                    a5 = A[k][l++];
                    a6 = A[k][l++];
                    a7 = A[k][l++];
                    a8 = A[k][l++];

                    l = j * 8;
                    B[l++][k] = a1;
                    B[l++][k] = a2;
                    B[l++][k] = a3;
                    B[l++][k] = a4;

                    l = 0;
                    if (j != i + 1) {
                        B[l++][k + 8] = a5;
                        B[l++][k + 8] = a6;
                        B[l++][k + 8] = a7;
                        B[l++][k + 8] = a8;
                    }
                    else {
                        B[l++][k + 16] = a5;
                        B[l++][k + 16] = a6;
                        B[l++][k + 16] = a7;
                        B[l++][k + 16] = a8;
                    }
                }
                for (k=i*8; k<i*8+8; k++) {
                    if (j != i + 1) {
                        for (l=0; l<4; l++) {
                            B[j*8+l+4][k] = B[l][k + 8];
                        }
                    }
                    else {
                        for (l=0; l<4; l++) {
                            B[j*8+l+4][k] = B[l][k + 16];
                        }
                    }
                }
            }
        }
        /*
         * last 9 submatrix have no temporary space to use
         * consider them as 36 4*4 submatrix
         * do transpose for each 4*4 submatrix
         */
        for (i=12; i<16; i++) {
            for (j=0; j<16; j++) {
                if (i < 14 && j < 14) {
                    continue;
                }
                for (k=i*4; k<(i+1)*4; k++) {
                    l = j*4;
                    a1 = A[k][l++];
                    a2 = A[k][l++];
                    a3 = A[k][l++];
                    a4 = A[k][l++];
                    l = j*4;
                    B[l++][k] = a1;
                    B[l++][k] = a2;
                    B[l++][k] = a3;
                    B[l++][k] = a4;
                }
            }
        } 
    } 
    if (M == 61 && N == 67) {
        /*
         * tranpose each 8*8 submatrix in the 64 * 56 matrix
         */
        for (i=0; i<8; i++) {
            for (j=0; j<7; j++) {
                for (k=i*8; k<(i+1)*8; k++) {
                    l = j*8;
                    a1 = A[k][l++];
                    a2 = A[k][l++];
                    a3 = A[k][l++];
                    a4 = A[k][l++];
                    a5 = A[k][l++];
                    a6 = A[k][l++];
                    a7 = A[k][l++];
                    a8 = A[k][l++];
                    l = j*8;
                    B[l++][k] = a1;
                    B[l++][k] = a2;
                    B[l++][k] = a3;
                    B[l++][k] = a4;
                    B[l++][k] = a5;
                    B[l++][k] = a6;
                    B[l++][k] = a7;
                    B[l++][k] = a8;
                }
            }
        } 
        /*
         * the remain columns
         */
        for (i=0; i<64; i++) {
            j = 56;
            a1 = A[i][j++];
            a2 = A[i][j++];
            a3 = A[i][j++];
            a4 = A[i][j++];
            a5 = A[i][j++];

            j = 56;
            B[j++][i] = a1;
            B[j++][i] = a2;
            B[j++][i] = a3;
            B[j++][i] = a4;
            B[j++][i] = a5;
        }

        /*
         * the remain rows
         */
        for (j=0; j<M; j+=8) {
            for (i=64; i<N; i++) {
                l = j;
                a1 = A[i][l++];
                a2 = A[i][l++];
                a3 = A[i][l++];
                a4 = A[i][l++];
                a5 = A[i][l++];
                if (l < M) {
                    a6 = A[i][l++];
                    a7 = A[i][l++];
                    a8 = A[i][l++];
                }
                l = j;
                B[l++][i] = a1;
                B[l++][i] = a2;
                B[l++][i] = a3;
                B[l++][i] = a4;
                B[l++][i] = a5;
                if (l < M) {
                    B[l++][i] = a6;
                    B[l++][i] = a7;
                    B[l++][i] = a8;
                }
            }
        }
    }


    ENSURES(is_transpose(M, N, A, B));
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

