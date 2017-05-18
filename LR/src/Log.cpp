/*
 * Log.cpp
 * Definition of functions in Log
 */

#include "Log.h"
#include <cstdarg>

void Log::initialize(const char *log_filename) {
    log_file = fopen(log_filename, "w");
}

void Log::close() {
    fclose(log_file);
}

void Log::log(const char* const fmt, ...) {
    va_list arg;
    va_start(arg, fmt);
    vfprintf(stdout, fmt, arg);
    fflush(stdout);
    vfprintf(log_file, fmt, arg);
    fflush(log_file);
    va_end(arg);
}

FILE *Log::log_file = NULL;
