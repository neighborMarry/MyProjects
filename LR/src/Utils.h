/*
 * Utils.h
 * Declaration of functions used to process raw data,
 * generate feature and most I/O functions
 */
#ifndef UTILS_HEADER
#define UTILS_HEADER
#include "Config.h"
#include "Sample.h"
#include <vector>
#include <string>
#include <unordered_map>

/*
 * read the samples from file
 */
std::vector<Sample*> read_sample(const char *infilename);

/*
 * random permutation the array in O(n) time
 */
void random_permutation(std::vector<int> &x);

#endif
