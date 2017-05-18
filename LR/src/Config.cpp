/*
 * Config.cpp
 * The definition of class config
 */

#include <fstream>
#include <iostream>
#include "Config.h"

std::string replace(std::string s, std::string t) {
    int pos = s.find("train");
    s.replace(pos, 5, t);
    return s;
}

void Config::parse(const char *cfg_filename) {
    std::cout << "start parsing config\n";
    std::ifstream cfg_file(cfg_filename, std::ios_base::in);
    std::string line;
    while (std::getline(cfg_file, line)) {
        size_t pos = line.find('=');
        if (pos == std::string::npos) {
            continue;
        }
        std::string key = line.substr(0, pos);
        std::string val = line.substr(pos + 1, line.size());
        if (key == "feature_filename") {
            feature_filename_train = val;
        }
        else if (key == "output_filename") {
            output_filename_train = val;
        }
        else if (key == "dict_top") {
            dict_top = atoi(val.c_str());
        }
        else if (key == "alpha") {
            alpha = atof(val.c_str());
        }
        else if (key == "lambda") {
            lambda = atof(val.c_str());
        }
        else if (key == "momentum") {
            momentum = atof(val.c_str());
        }
        else if (key == "batch_size") {
            batch_size = atoi(val.c_str());
        }
        else if (key == "feature_size") {
            feature_size = atoi(val.c_str());
        }
        else if (key == "iter_cnt") {
            iter_cnt = atoi(val.c_str());
        }
        else if (key == "thread_cnt") {
            thread_cnt = atoi(val.c_str());
        }
        else {
            throw "unseen config key";
        }
    }

    feature_filename_dev = replace(feature_filename_train, "dev");
    feature_filename_test = replace(feature_filename_train, "test");

    output_filename_dev = replace(output_filename_train, "dev");
    output_filename_test = replace(output_filename_train, "test");

    std::cout << "finish parsing config\n";
}

