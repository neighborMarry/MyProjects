/*
 * Config.h
 * The declaration of class config
 */

#ifndef CONFIG_HEADER
#define CONFIG_HEADER

#include <string>

/*
 * store the running config and provide the config parser
 */
class Config {
    public:
        std::string feature_filename_train;
        std::string feature_filename_dev;
        std::string feature_filename_test;

        std::string output_filename_train;
        std::string output_filename_dev;
        std::string output_filename_test;

        int dict_top;
        int feature_size;
        // learning rate
        float alpha;
        // normalization factor
        float lambda;

        float momentum;
        // minibatch size
        int batch_size;
        // maximum iteration count
        int iter_cnt;
        // number of threads in training
        int thread_cnt;

        /*
         * parse the config file
         */
        void parse(const char *cfg_filename);
};

#endif
