/*
 * csapp.c - Functions for the cache
 *
 * Use linked list to store objects and pthread read-write lock to control
 * multi-thread read and write. Multiple threads can read at the same time,
 * but only one thread can write.
 *
 * If the total cache used size exceeds the MAX_CACHE_SIZE, it will choose
 * an object to evict.
 *
 * Eviction strategy: unstrict LRU eviction. Each block has a timestamp to
 * indicate the latest used time. Because multiple thread my read the same
 * object, an object's timestamp may be updated concurrently without lock.
 * That may lead to incorrect timestamp, but since the reads at the same
 * time will have similar timestamps, it is ok.
 */

#include "cache.h"
#include "limits.h"

/*
 * init_cache: initialize variable used in cache
 */
void init_cache() { 
    headp = NULL;
    used_size = 0;
    pthread_rwlock_init(&lock, NULL);
    g_timestamp = 0;
}

/*
 * insert_cache: insert the object to cache if meet the requirement.
 */
void insert_cache(char *data, char *url, size_t data_size) {
    pthread_rwlock_wrlock(&lock);
    size_t url_size = strlen(url);

    if (data_size + used_size > MAX_CACHE_SIZE) {
        /* eviction */
        evict_cache();
        pthread_rwlock_unlock(&lock);
        insert_cache(data, url, data_size);
        return;
    }


    cache_t *tmp = (cache_t *) Malloc(sizeof(cache_t));

    /* copy data and url to cache */
    tmp->data = (char *) Malloc(data_size);
    tmp->url = (char *) Malloc(url_size);
    memcpy(tmp->data, data, data_size);
    memcpy(tmp->url, url, url_size);

    /* update cache used size */
    used_size += data_size;

    tmp->size = data_size;

    tmp->timestamp = g_timestamp++;

    /* update link */
    tmp->next = headp;
    headp = tmp;

    dbg_printf("insert to cache\n");
    pthread_rwlock_unlock(&lock);
}

/*
 * get_cache: search the cache to find the data. if hit write to parameter
 *            data and return true, return false otherwise
 */
bool get_cache(char *url, char *data, size_t *data_size) {
    pthread_rwlock_rdlock(&lock);
    cache_t *iter;
    for (iter=headp; iter; iter=iter->next) {
        if (strcmp(iter->url, url) == 0) {
            dbg_printf("cache hit\n");
            memcpy(data, iter->data, iter->size);
            *data_size = iter->size;
            iter->timestamp = g_timestamp++;
            pthread_rwlock_unlock(&lock);
            return true;
        }
    }
    dbg_printf("cache miss\n");
    pthread_rwlock_unlock(&lock);
    return false;
}

/*
 * evict_cache: find the least recent used object by timestamp, remove it.
 *              write lock has already been locked in insert_cache 
 *              where this function is called
 */
void evict_cache() {
    int min_timestamp = INT_MAX;
    /* iteration variable */
    cache_t *p, *q;

    cache_t *evict_obj, *prev_obj;

    for (q=NULL,p=headp; p!=NULL; q=p,p=p->next) {
        if (p->timestamp < min_timestamp) {
            min_timestamp = p->timestamp;
            evict_obj = p;
            prev_obj = q;
        }
    }

    /* remove evicted object */
    used_size -= evict_obj->size;
    if (!prev_obj) {
        /* evict header */
        headp = evict_obj->next;
    }
    else {
        prev_obj->next = evict_obj->next;
    }

    /* free memory used */
    free(evict_obj->data);
    free(evict_obj->url);
    free(evict_obj);

    dbg_printf("evict\n");
}
