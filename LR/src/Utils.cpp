/*
 * Utils.cpp
 * Definition of functions in Utils.h
 */

#include "Utils.h"
#include <unordered_set>
#include <fstream>
#include <assert.h>
#include <random>

using namespace std;

vector<Sample*> read_sample(const char *infilename) {
    FILE *infile = fopen(infilename, "rb");

    int MAXLEN = 500 << 20; // 500 MB buffer
    char *buf = new char[MAXLEN];
    int n = fread(buf, 1, MAXLEN, infile);
    assert(n < MAXLEN);

    fclose(infile);

    vector<Sample*> samples;

    for (int i=0; i<n; ) {
        int len;
        memcpy(&len, buf + i, sizeof(int));
        Sample *s = new Sample();
        memcpy(&s->label, buf + i + sizeof(int), sizeof(int));
        s->label--;
        int m = len / sizeof(int) / 2 - 1;
        s->feat.resize(m);
        memcpy(s->feat.data(), buf + i + sizeof(int) + sizeof(int), 
                sizeof(int) * 2 * m);
        for (auto &p : s->feat) {
            p.first--;
        }

        i += len;
        samples.push_back(s);
    }

    return samples;
}

void random_permutation(std::vector<int> &x) {
    int n = x.size();
    for (int i=0; i<n; i++) {
        int j = random() % (n - i) + i;
        swap(x[i], x[j]);
    }
}
