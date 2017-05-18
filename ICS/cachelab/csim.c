#include "cachelab.h"
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

typedef char bool;

#define true 1
#define false 0

#define ADDRESS_LEN 64
#define ulong unsigned long

/*
 * basic cache line struct
 */
struct Cache_line {
    char v; // false for invalid
    ulong tag;
    unsigned char* data;

    // store the last visit time, for LRU replacement
    ulong last_visit_time;
};

/*
 * 2d array of cache lines
 * first deminsion for s, second deminsion for e
 */
struct Cache_line** g_cache;

bool g_verbose_flag = false;
FILE *g_trace_file = NULL;

ulong g_s = 0;
ulong g_S = 0;
ulong g_E = 0;
ulong g_b = 0; 
ulong g_B = 0;
ulong g_t = 0; // t bits tag

ulong g_hit_count = 0;
ulong g_miss_count = 0;
ulong g_eviction_count = 0;

ulong g_instruction_count = 0;

void Display_help_info() {
    printf("Usage: ./csim [-hv] -s <s> -E <E> -b <b> -t <tracefile>"
            "\n\t-h: Optional help flag that pints usage info"
            "\n\t-v: Optional verbose flag that displays trace info"
            "\n\t-s <s>: Number of set index bits"
            "\n\t-E <E>: Associativity"
            "\n\t-b <b>: Number of block bits"
            "\n\t-t <tracefile>: Name of the memory trace to replay\n");
}
/*
 * Parse command line arguments
 * Return if the format is correct
 */
bool Parse_arguments(int argc, char** argv) {
    int i = 1;
    while (i < argc) {
        if (strcmp(argv[i], "-h") == 0) {
            Display_help_info();
            exit(0);
        }
        else if (strcmp(argv[i], "-v") == 0) {
            g_verbose_flag = true;
            ++i;
        }
        else if (strcmp(argv[i], "-s") == 0) {
            g_s = atoi(argv[i + 1]);
            g_S = 1 << g_s;
            i += 2;
        }
        else if (strcmp(argv[i], "-E") == 0) {
            g_E = atoi(argv[i + 1]);
            if (g_E == 0) {
                goto fail_parse;
            }
            i += 2;
        }
        else if (strcmp(argv[i], "-b") == 0) {
            g_b = atoi(argv[i + 1]);
            g_B = 1 << g_b;
            i += 2;
        }
        else if (strcmp(argv[i], "-t") == 0) {
            g_trace_file = fopen(argv[i + 1], "r");
            if (!g_trace_file) {
                printf("trace file: %s not exists\n", argv[i + 1]);
                assert(g_trace_file);
            }
            i += 2;
        }
        else {
            goto fail_parse;
        }
    }
    return true;
fail_parse:
    Display_help_info();
    return false;
}

void Initialize_cache() {
    unsigned i, j;
    g_t = ADDRESS_LEN - g_s - g_b;
    g_cache = (struct Cache_line**) malloc(sizeof(struct Cache_line*) * g_S);
    for (i=0; i<g_S; ++i) {
        g_cache[i] = (struct Cache_line*) \
            malloc(sizeof(struct Cache_line) * g_E);
        for (j=0; j<g_E; ++j) {
            g_cache[i][j].v = false;
            g_cache[i][j].data = (unsigned char*) \
                malloc(sizeof(unsigned char) * g_B);
        }
    }
}

void Finalize_cache() {
    unsigned i, j;
    for (i=0; i<g_S; ++i) {
        for (j=0; j<g_E; ++j) {
            free(g_cache[i][j].data);
        }
        free(g_cache[i]);
    }
    free(g_cache);
}

void Add_hit(char op, ulong addr, ulong size) {
    ++g_hit_count;
    if (g_verbose_flag) {
        printf("%c %lx,%ld hit\n", op, addr, size);
    }
}

void Add_miss(char op, ulong addr, ulong size, bool eviction) {
    ++g_miss_count;
    if (eviction) {
        ++g_eviction_count;
    }
    if (g_verbose_flag) {
        printf("%c %lx,%ld miss", op, addr, size);
        if (eviction) {
            printf(" eviction");
        }
        printf("\n");
    }
}

void Parse_address(ulong addr, ulong *tag, 
        ulong *set_index, ulong *block_offset) {
    /*
     * -------------------------------------
     * | tag    | set index | block offset |
     * -------------------------------------
     * | t bits | s bits    | b bits       |
     * -------------------------------------
     */

    // unsigned, so logical right shift
    *tag = addr >> (g_s + g_b);

    // right shift, then remove tag
    *set_index = (addr >> g_b) & ((1 << g_s) - 1);

    // remove tag and set index
    *block_offset = addr & ((1 << g_b) - 1);
}
/*
 * because no actuall memory access happens
 * store and load are the same
 */
void Do_load_or_store(char op, ulong addr, ulong size) {
    ulong tag;
    ulong set_index;
    ulong block_offset;
    ulong i;
    ulong unused = g_E + 1;
    ulong victim = g_E + 1;
    Parse_address(addr, &tag, &set_index, &block_offset);

    struct Cache_line* cache_set = g_cache[set_index];
    for (i=0; i<g_E; ++i) {
        // hit
        if (cache_set[i].v && cache_set[i].tag == tag) {
            Add_hit(op, addr, size);
            cache_set[i].last_visit_time = g_instruction_count;
            return;
        }
        // find possible unused cache line 
        else if (!cache_set[i].v) {
            unused = i;
        }
        // find possible victim cache line
        else if (victim > g_E 
            || cache_set[i].last_visit_time 
                < cache_set[victim].last_visit_time) {
            victim = i;
        }
    }

    // unused cache line
    if (unused < g_E) {
        cache_set[unused].v = true;
        cache_set[unused].tag = tag;
        cache_set[unused].last_visit_time = g_instruction_count;
        Add_miss(op, addr, size, false);
    }
    // eviction
    else {
        cache_set[victim].tag = tag;
        cache_set[victim].last_visit_time = g_instruction_count;
        Add_miss(op, addr, size, true);
    }
}

void Simulate() {
    ulong addr;
    char op;
    ulong size;

    /*
     * read each line and simulate the cache
     */
    while (fscanf(g_trace_file, " %c %lx,%ld", &op, &addr, &size) != EOF) {
        Do_load_or_store(op, addr, size);
        ++g_instruction_count;
    }
}

int main(int argc, char** argv) {
    if (!Parse_arguments(argc, argv)) {
        return 0;
    }
    if (!g_trace_file) {
        printf("need trace file\n");
        return 0;
    }

    Initialize_cache();

    Simulate();
    printSummary(g_hit_count, g_miss_count, g_eviction_count);

    Finalize_cache();

    return 0;
}
