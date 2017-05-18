/*
 * Log.h
 * declaration of useful functions for log
 */

#ifndef LOG_HEADER
#define LOG_HEADER

#include <cstdio>
#include <cstdlib>

#define LOG(...) Log::log(__VA_ARGS__)

class Log {
    public:
        /*
         * open log file
         */
        static void initialize(const char *log_filename);
        /*
         * close log file
         */
        static void close();
        /*
         * write a log, like printf format
         */
        static void log(const char* const fmt, ...);

    private:
        static FILE *log_file;
};

#endif
