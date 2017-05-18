/*
 * Stopwatch.h
 * The declaration of class stopwatch
 */

#ifndef STOPWATCH_HEADER
#define STOPWATCH_HEADER

#include <ctime>

/*
 * To show the stop wall time
 */
class Stopwatch {
    public:
        Stopwatch();
        double time();
        void restart();
    private:
        std::clock_t m_start_time;
};

#endif
