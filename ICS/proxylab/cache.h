/*
 * cache.h - prototypes and definitions for cache
 */
#ifndef __CACHE_H__
#define __CACHE_H__

#include "csapp.h"

/* max cache and object size */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/*
 * cache_t: basic cache item
 */


typedef struct cache {
    char *data;
    char *url;
    struct cache *next;  
    size_t size;
    /* 
     * for LRU eviction
     * because do not need strict LRU eviction, non-atomic timestamp
     * is enough
     */
    int timestamp;
} cache_t;

volatile size_t used_size;
cache_t *headp;
pthread_rwlock_t lock;
/* global time stamp */
volatile sig_atomic_t g_timestamp;


void init_cache();
void insert_cache(char *url, char *data, size_t data_size);
bool get_cache(char *url, char *data, size_t *data_size);
void evict_cache();

#endif
