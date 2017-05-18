/*
 * Main.cpp
 * The main functions of the project
 */
#include "Utils.h"
#include "LR.h"
#include "Log.h"

Config cfg;

using namespace std;

/*
 * The main routine
 */
int main(int argc, char **argv) {

    if (argc < 2) {
        printf("usage: ./main cfg.txt\n");
        return 0;
    }

    cfg.parse(argv[1]);

    Log::initialize("log.txt");

    LR lr(cfg);
    lr.train((cfg.feature_filename_train + ".bin").c_str(),
             cfg.output_filename_train.c_str());
    lr.test((cfg.feature_filename_dev + ".bin").c_str(),
            cfg.output_filename_dev.c_str());
    lr.test((cfg.feature_filename_test + ".bin").c_str(),
            cfg.output_filename_test.c_str());

    Log::close();

    return 0;
}
