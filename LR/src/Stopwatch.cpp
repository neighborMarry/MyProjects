/*
 * Stopwatch.cpp
 * The definition of class stopwatch
 */

#include "Stopwatch.h"

Stopwatch::Stopwatch() {
    m_start_time = std::clock();
}

double Stopwatch::time() {
    return (std::clock() - m_start_time) / (double) CLOCKS_PER_SEC;
}

void Stopwatch::restart() {
    m_start_time = std::clock();
}
