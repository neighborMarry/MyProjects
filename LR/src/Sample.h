/*
 * Sample.h
 * The class of a single sample
 */
#ifndef SAMPLE_HEADER
#define SAMPLE_HEADER

#include <vector>
#include <algorithm>

class Sample {
    public:
        int label;
        std::vector<std::pair<int, float>> feat;
};

#endif

