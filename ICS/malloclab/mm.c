/*
 * mm.c
 *
 * DOCUMENTATION
 *
 * ** STRUCTURE **
 *
 * Allocated blocks: 8 byte header + payload
 * Free blocks: 8 byte header 
 *              + pointer to next free block
 *              + pointer to previous free block
 *              + empty regions
 *              + 8 byte footer
 *  Allocated blocks and free blocks' headers share the same design
 *  Header: 8-byte, aligned to 8th byte of an 16-byte aligned heap, where
 *          - The lowest order bit is 1 when block is allocated, and 0
 *            otherwise
 *          - The second lowest order bit is 1 when previous block is free
 *            block, and 0 otherwise
 *          - The whole 8-byte value with the least 2 significant bit set
 *            to 0 represents the size of the block as a size_t
 *  Footer: 8-byte, only free blocks have footer. The structure of footer 
 *          is basically the same with header, except that footer does not
 *          have the bit to indicate previous block's status
 *
 *  The minimum blocksize is 16 bytes.
 *
 *
 *
 *  ** SEGREGATED FREE LIST **
 *
 *  The free blocks form several double linked lists whose starters are stored
 *  in the global array.
 *  The size of free block determines which list it belongs to. 
 *  More particularly:
 *      0-16 byte blocks: No.1 list
 *      17-32 byte blocks: No.2 list
 *  and so on.
 *
 *
 *
 *  ** INITIALIZATION **
 *
 *  Create 8-byte prologue footer and 8-byte epilogue block header.
 *
 *
 *
 *  ** BLOCK ALLOCATION **
 *
 *  Upon memory request of size S, a block of size S + 8 byte(header), 
 *  rounded up to 16 bytes, is allocated on the heap.
 *  Selecting the block for allocation is performed by finding the best block 
 *  which can fit the content based the segregated free list. 
 *  The search will traverse all lists whose size is equal to or bigger than 
 *  required size.
 *
 *
 *
 *  ** SPECIAL CASE **
 *
 *  The minimum block size is 16 bytes and they are too small for header and
 *  footer.
 *
 *  16-byte free blocks: 8 byte pointer to next free block
 *                       + 8 byte pointer to previous free block
 *  
 *  Because the last 3 bits of pointer must be zero, so the alloc flag and 
 *  prev is free flag can be used like other blocks.
 *  Also, add a new flag at the 3th last bit to indicate whether this is a 
 *  16-byte block.
 *
 *  Most of the operations of these small blocks should use special methods.
 *  
*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdint.h>

#include "mm.h"
#include "memlib.h"

/*
 * If you want debugging output, uncomment the following.  Be sure not
 * to have debugging enabled in your final submission
 */
//#define DEBUG

#ifdef DEBUG
/* When debugging is enabled, the underlying functions get called */
#define dbg_printf(...) printf(__VA_ARGS__)
#define dbg_assert(...) assert(__VA_ARGS__)
#define dbg_requires(...) assert(__VA_ARGS__)
#define dbg_ensures(...) assert(__VA_ARGS__) 
#define dbg_checkheap(...) mm_checkheap(__VA_ARGS__)
#define dbg_printheap(...) print_heap(__VA_ARGS__)

#define dbg_assert_checkheap() dbg_assert(dbg_checkheap(__LINE__))

#define dbg_print_start(...) \
{ print_indent(); printf("start "); printf(__VA_ARGS__); indent += 2; }
#define dbg_print_end(...) \
{ indent -= 2; print_indent(); printf("end "); printf(__VA_ARGS__); }
#define dbg_print_indent(...) \
{ print_indent(); printf(__VA_ARGS__); }

static int indent = 0;
/*
 * print_indent: print indent before dbg information.
 *               make it easier to find which function is buggy
 */
static void print_indent() {
    int i;
    for (i=0; i<indent; i++) {
        printf(" ");
    }
}
#else
/* When debugging is disabled, no code gets generated */
#define dbg_printf(...)
#define dbg_assert(...)
#define dbg_requires(...)
#define dbg_ensures(...)
#define dbg_checkheap(...)
#define dbg_printheap(...)

#define dbg_assert_checkheap()

#define dbg_print_start(...)
#define dbg_print_end(...)
#define dbg_print_indent(...)

#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#define memset mem_memset
#define memcpy mem_memcpy
#endif /* def DRIVER */

/* What is the correct alignment? */
#define ALIGNMENT 16

/* basic constants */
typedef uint64_t word_t;
static const size_t AF = 0x1;                   // alloc flag
static const size_t PIFF = 0x2;                 // prev_is_free flag
static const size_t DSF = 0x4;                  // dsize flag
static const size_t wsize = sizeof(word_t);     // word, 8 bytes
static const size_t dsize = 2 * wsize;          // double word, 16 bytes
static const size_t min_block_size = dsize;     // minimum block size, 16 bytes
static const size_t chunk_size = (1 << 10);     // minimum extend size
static const size_t seg_num = 13;               // seg list number

typedef struct block {
    /* size and allocation flag */
    word_t header;

    /* payload and footer */
    char payload[0];
} block_t;

static block_t *heap_start = NULL;              // pointer to first block

// pointers to the segregated lists' starters
static block_t *seg_start[seg_num]; 


/* helper functions */
static size_t get_size(block_t *block);
static size_t extract_size(word_t word);
static bool get_dsize(block_t *block);
static bool extract_dsize(word_t word);
static size_t get_payload_size(block_t *block);
static bool get_alloc(block_t *block);
static bool extract_alloc(word_t word);
static size_t round_up(size_t size, size_t n);
static word_t pack(size_t size, bool alloc, bool prev_is_free);
static block_t *first_block();
static word_t get_header(block_t *block);
static word_t get_footer(block_t *block);
static bool get_prev_is_free(block_t *block);
static bool extract_prev_is_free(word_t word);
static void set_prev_is_free(block_t *block, bool prev_is_free);
static void set_dsize_header(block_t *block);
static void set_dsize_footer(block_t *block);
static word_t get_dsize_block_header(block_t *block);
static word_t get_dsize_block_footer(block_t *block);

static block_t *extend_heap(size_t size);

static void place(block_t *block, size_t size);

static void *block_to_payload(block_t *block);
static block_t *payload_to_block(void *ptr);

static void write_header(block_t *block, size_t size, 
        bool alloc, bool prev_is_free);
static void write_footer(block_t *block, size_t size, bool alloc);

static block_t *coalesce(block_t *block);

static void insert_free_block(block_t *block);
static void remove_free_block(block_t *block);
static void insert_dsize_free_block(block_t *block);

static void set_next_free_block(block_t *block, block_t *next);
static void set_prev_free_block(block_t *block, block_t *prev);
static void set_dsize_next_free_block(block_t *block, block_t *next);
static void set_dsize_prev_free_block(block_t *block, block_t *prev);
static block_t *get_next_free_block(block_t *block);
static block_t *get_prev_free_block(block_t *block);

static size_t get_seg_id(size_t size);
static size_t log2(size_t x);

static block_t *next_block(block_t *block);
static block_t *prev_block(block_t *block);

static size_t min(size_t x, size_t y);
static size_t max(size_t x, size_t y);

static block_t *find_fit(size_t asize);

/* rounds up to the nearest multiple of ALIGNMENT */
static size_t align(size_t x) {
    return ALIGNMENT * ((x+ALIGNMENT-1)/ALIGNMENT);
}

/*
 * Initialize: return false on error, true on success.
 *             run when heap_start == NULL
 *             create prologue and epilogue
 *             initialize seg_start array to NULLs
 */
bool mm_init(void) {
    dbg_print_start("init\n");
    block_t *extend_block;
    size_t i;

    // create heap with 2 words
    word_t *start = (word_t *)(mem_sbrk(dsize));

    if (start == (void *)-1) {
        return false;
    }

    start[0] = pack(0, true, false);
    start[1] = pack(0, true, false);

    // set heap start to first block header (prologue)
    heap_start = (block_t *) &(start[0]);

    // set seg_start array to NULL
    for (i=0; i<seg_num; i++) {
        seg_start[i] = NULL;
    }

    // extend the empty heap with a free block
    if ((extend_block = extend_heap(chunk_size)) == NULL) {
        return false;
    }

    // add free block to free list
    insert_free_block(extend_block);

    dbg_print_end("init\n");
    return true;
}

/*
 * malloc: allocate a block with size at least size + wsize(header), round up 
 *         to nearest double word.
 *         find an enough free block to allocate.
 *         if not found, extend the heap.
 *         returns NULL on failure, otherwise a pointer to the block
 *         block won't be used again until freed
 */
void *malloc (size_t size) {
    dbg_print_start("malloc\n");

    size_t asize;                   // adjusted block size
    size_t extend_size;             // amount to extend heap if no fit is found
    block_t *block;
    void *bp = NULL;

    if (heap_start == NULL) {       // initialize heap
        mm_init();
    }

    if (size == 0) {                // bad request
        goto malloc_fail;
    }

    /*
     * adjust block size to meet alignment requirements
     * alloc blocks have no footer
     */
    asize = max(round_up(size + wsize, dsize), min_block_size);

    // Search the free list for a fit
    block = find_fit(asize);

    dbg_print_indent("find_fit result: 0x%lx\n", (word_t)block);

    // block == NULL, not find, extend heap
    if (block == NULL) {
        // extend at least a chunk
        extend_size = max(chunk_size, asize);
        block = extend_heap(extend_size);
        if (block == NULL) { // cannot extend heap
            goto malloc_fail;
        }
    }

    // place a asize alloc block on the free block
    place(block, asize);
    bp = block_to_payload(block);

    dbg_printf("Malloc(%zd) -> %p\n", size, bp);
    dbg_assert_checkheap();
    dbg_print_end("malloc\n");
    return bp;

malloc_fail:
    dbg_printf("Malloc(%zd) -> %p\n", size, bp);
    dbg_print_end("malloc\n");
    return NULL;
}

/*
 * free: find the block contain the given ptr, mark it freed and add to
 *       segregated free list
 *       freed block can be used for malloc
 */
void free (void *ptr) {
    if (ptr == NULL) {
        return;
    }

    block_t *block = payload_to_block(ptr);

    dbg_print_start("free 0x%lx\n", (word_t) block);

    size_t size = get_size(block);

    dbg_assert_checkheap();

    if (size == dsize) {
        // 16-byte free block
        dbg_print_indent("free 16-byte block\n");

        // save the flag to temp variable
        bool tmp = get_prev_is_free(block);

        /*
         * clear header and footer because the set functions do not
         * clear.
         */ 
        block->header = 0x0;
        *(word_t *)block->payload = 0x0;

        set_dsize_header(block);
        set_dsize_footer(block);

        // copy prev_is_free stauts
        block->header |= tmp ? PIFF : 0;

        /*
         * coalesce free blocks, at this time, block is not in the
         * segregated list
         */
        block = coalesce(block);

        // coalesced block is not in the segregated list
        if (get_size(block) == dsize) {
            insert_dsize_free_block(block);
        }
        else {
            insert_free_block(block);
        }
    }
    else {
        write_header(block, size, false, get_prev_is_free(block));
        write_footer(block, size, false);

        block = coalesce(block);

        // coalesced block is not in the segregated list
        insert_free_block(block);
    }


    dbg_assert_checkheap();
    dbg_printf("Completed free(%p)\n", ptr);
    dbg_print_end("free\n");
    return;
}

/*
 * realloc: reallocate a memory block, with different actions.
 *          if oldptr == NULL, call malloc(size)
 *          if size == 0, call free(ptr), return NULL
 *          else allocates new region of memory, copy old data to new memory, 
 *          then free old block. Returns NULL if fails otherwise return new 
 *          pointer.
 */
void *realloc(void *oldptr, size_t size) {
    dbg_print_start("realloc\n");
    block_t *block = payload_to_block(oldptr);
    size_t copysize;
    void *newptr;

    //if size == 0, free block and return NULL
    if (size == 0) {
        free(oldptr);
        dbg_assert_checkheap();
        dbg_print_end("realloc\n");
        return NULL;
    }

    // if oldptr == NULL, call malloc
    if (oldptr == NULL) {
        void *ret = malloc(size);
        dbg_assert_checkheap();
        dbg_print_end("realloc\n");
        return ret;
    }

    // otherwise, reallocate
    newptr = malloc(size);
    if (!newptr) {
        dbg_assert_checkheap();
        dbg_print_end("realloc\n");
        return NULL;
    }

    dbg_print_indent("size: 0x%lx, payload_size: 0x%lx\n", 
            get_size(block), get_payload_size(block));
    copysize = min(get_payload_size(block), size);
    memcpy(newptr, oldptr, copysize);

    // free old block
    free(oldptr);

    dbg_assert_checkheap();
    dbg_print_end("realloc\n");
    return newptr;
}

/*
 * calloc: malloc with size = (nmemb * size) and initialize all bits to 0
 *         return NULL on failure
 * This function is not tested by mdriver
 */
void *calloc (size_t nmemb, size_t size) {
    void *bp;
    size_t asize = nmemb * size;

    // overflow
    if (asize / nmemb != size) {
        return NULL;
    }

    bp = malloc(asize);
    if (bp == NULL) {
        return NULL;
    }

    // initialize to 0
    memset(bp, 0, asize);

    return bp;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static bool in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static bool aligned(const void *p) {
    size_t ip = (size_t) p;
    return align(ip) == ip;
}

/*
 * mm_checkheap: check the heap consistency
 */
bool mm_checkheap(int lineno) {
    dbg_print_start("checkheap\n");
    // check prologue
    if (get_size(heap_start) || !get_alloc(heap_start)) {
        dbg_print_indent("prologue error: 0x%lx\n", heap_start->header);
        goto checkheap_fail;
    }
    block_t *block;
    block_t *next;
    block_t *prev;
    size_t size;
    word_t header;
    word_t footer;
    size_t id;
    size_t free_count = 0;

    // traverse the heap, check each block
    for (block=first_block(); get_size(block)!=0; block=next_block(block)) {
        // check heap boundary
        if (!in_heap(block)) {
            dbg_print_indent("not in heap, block: 0x%lx\n", (word_t)block);
            goto checkheap_fail;
        }

        // check minimum block size
        size = get_size(block); 
        if (size < min_block_size) {
            dbg_print_indent("less than min_block_size, "
                    "block: 0x%lx, size: 0x%lx\n",
                    (word_t)block, size);
            goto checkheap_fail;
        }

        // check size is a multiple of dsize
        if (size % dsize) {
            dbg_print_indent("block size error, block: 0x%lx, size: 0x%lx\n",
                    (word_t)block, size);
            goto checkheap_fail;
        }

        if (get_alloc(block)) {
            // allocated block

            // check alignment
            if (!aligned(block_to_payload(block))) {
                dbg_print_indent("not aligned, block: 0x%lx\n", (word_t)block);
                goto checkheap_fail;
            }

            // check next block's prev_is_free status, should not be set
            if (get_prev_is_free(next_block(block))) {
                dbg_print_indent("current is alloc, but next flag set "
                        "current: 0x%lx, next: 0x%lx, header: 0x%lx\n",
                        (word_t)block, (word_t)next_block(block), 
                        next_block(block)->header);
                goto checkheap_fail;
            }
        }
        else {
            // free block
            free_count++;

            header = get_header(block);
            footer = get_footer(block); 

            if (!get_dsize(block)) {
                // it is not a 16 byte free block
                // check header equals to footer
                if (header != footer) {
                    dbg_print_indent("header footer not consistent," 
                            "block: 0x%lx, header: 0x%lx, footer: 0x%lx\n",
                            (word_t)block, (word_t)header, (word_t)footer);
                    goto checkheap_fail;
                }
            }

            // check cannot coalesce
            next = next_block(block);
            prev = prev_block(block);
            if (!get_alloc(next)) {
                dbg_print_indent("coalesce error, block: 0x%lx, "
                        "next: 0x%lx\n", (word_t)block, (word_t)next);
                goto checkheap_fail;
            }
            if (prev) {
                dbg_print_indent("coalesce error, block: 0x%lx, "
                        "prev: 0x%lx\n" , 
                        (word_t)block, (word_t)prev);
                dbg_print_indent("prev header: 0x%lx\n", prev->header);
                goto checkheap_fail;
            }

            // check next block's prev_is_free status, should be set
            if (!get_prev_is_free(next_block(block))) {
                dbg_print_indent("current is free, but next flag unset "
                        "current: 0x%lx, next: 0x%lx, header: 0x%lx\n",
                        (word_t)block, (word_t)next_block(block), 
                        next_block(block)->header);
                goto checkheap_fail;
            }

        }
    }

    // check epilogue
    if (get_size(block) || !get_alloc(block)) {
        dbg_print_indent("epilogue error, 0x%lx\n", block->header);
        goto checkheap_fail;
    }

    // check segregated free list
    for (id=0; id<seg_num; id++) {
        prev = NULL;
        for (block=seg_start[id]; block; block=get_next_free_block(block)) {
            free_count--;
            // heap boundary
            if (!in_heap(block)) {
                dbg_print_indent("not in heap, block: 0x%lx\n", (word_t)block);
                goto checkheap_fail;
            }

            // check 16 byte free block, the 16-byte flag should be set
            if (id == 0 && (!get_dsize(block) 
                        || !extract_dsize(get_dsize_block_footer(block)))) {
                dbg_print_indent("block size not 16 byte. block: 0x%lx, "
                        "header: 0x%lx, footer: 0x%lx\n", 
                        (word_t)block, block->header, 
                        *(word_t *)(((char *)block) + wsize));
                goto checkheap_fail;
            }

            // prev and next free block consistency
            if (prev != get_prev_free_block(block)) {
                dbg_print_indent("prev not equal. \nid: %ld, block: 0x%lx, "
                        "prev: 0x%lx, true prev: 0x%lx\n",
                        id, (word_t)block, 
                        (word_t)get_prev_free_block(block), 
                        (word_t)prev);
                goto checkheap_fail;
            }


            prev = block;
        }
    }

    /*
     * check free block count. there may be one free block has not been added
     * to the segregated list
     */
    if (free_count != 0 && free_count != 1) {
        dbg_print_indent("free_count not zero: %ld\n", free_count);
        goto checkheap_fail;
    }

    dbg_print_end("checkheap\n");
    return true;
checkheap_fail:
    dbg_print_indent("checkheap fail line: %d\n", lineno);
    return false;
}


/* ============================helper functions============================ */

/* 
 * get_size: return the size of block by reading header and remove alloc bit
 */
static size_t get_size(block_t *block) {
    return extract_size(block->header);
}

/*
 * extract_size: return the size of a word
 */
static size_t extract_size(word_t word) {
    if (extract_dsize(word)) return dsize;
    return word & ~(word_t)0xf;
}

/*
 * get_dsize: get the dsize flag of block
 */
static bool get_dsize(block_t *block) {
    return extract_dsize(block->header);
}

/*
 * extract_dsize: get the dsize flag of word
 */
static bool extract_dsize(word_t word) {
    return (word & DSF) >> 2;
}

/*
 * get_pay_load_size: get block size and remove header size.
 *                    only used when block is allocated
 */
static size_t get_payload_size(block_t *block) {
    // ensure it is an allocated block
    dbg_assert(get_alloc(block));
    return get_size(block) - wsize;
}

/*
 * get_alloc: return whether block is allocated
 */
static bool get_alloc(block_t *block) {
    return extract_alloc(block->header);
}

/*
 * extract_alloc: return word's lowest bit
 */
static bool extract_alloc(word_t word) {
    return word & AF;
}

/*
 * round_up: rounds size up to next multiple of n
 */
static size_t round_up(size_t size, size_t n) {
    return (n * ((size + (n - 1)) / n));
}

/*
 * pack: pack the header with size and alloc
 *       if alloc == true, lowest bit is set to 1, otherwise 0
 */
static word_t pack(size_t size, bool alloc, bool prev_is_free) {
    if (alloc) size |= AF;
    if (prev_is_free) size |= PIFF;
    return size;
}

/*
 * return the first block(after prologue) in heap
 */
static block_t *first_block() {
    return (block_t *)(((char *)heap_start) + wsize);
}

/*
 * get_header: return the header of block
 */
static word_t get_header(block_t *block) {
    return block->header;
}

/*
 * get_footer: return the footer of block
 */
static word_t get_footer(block_t *block) {
    return *(word_t *)(((char *)block) + get_size(block) - wsize);
}

/*
 * get_prev_is_free: return the prev status of block
 */
static bool get_prev_is_free(block_t *block) {
    return extract_prev_is_free(block->header);
}

/*
 * extract_prev_is_free: return the prev status of header
 */
static bool extract_prev_is_free(word_t word) {
    return (word & PIFF) >> 1;
}

/*
 * set_prev_is_free: set the prev_is_free status
 */
static void set_prev_is_free(block_t *block, bool prev_is_free) {
    block->header = pack(get_size(block), get_alloc(block), prev_is_free);
}

/*
 * set_dsize_header: set the 16-byte block's header's dsize status
 */
static void set_dsize_header(block_t *block) {
    block->header |= DSF; 
}

/*
 * set_dsize_footer: set the 16-byte block's footer's dsize status
 */
static void set_dsize_footer(block_t *block) {
    *(word_t *)block->payload |= DSF;
}

/*
 * get_dsize_block_header: return the header of 16-byte block
 */
static word_t get_dsize_block_header(block_t *block) {
    return block->header;
}

/*
 * get_dsize_block_footer: return the footer of 16-byte block
 */
static word_t get_dsize_block_footer(block_t *block) {
    return *(word_t*)block->payload;
}

/*
 * extend_heap: exntends the heap with requested size, and recreates epilogue.
 *              returns a pointer to the result of coalescing the 
 *              newly-crated block with previous free block, if applicable, 
 *              or NULL in failure.
 *              extended free block is not in the segregated list, 
 *              need to call insert_free_block
 */ 
static block_t *extend_heap(size_t size) {
    dbg_print_start("extend_heap\n");
    void *bp;

    // fail
    if ((bp = mem_sbrk(size)) == (void *)-1) {
        return NULL;
    }

    // set free block header and footer
    block_t *block = payload_to_block(bp);
    write_header(block, size, false, get_prev_is_free(block));
    write_footer(block, size, false);

    // create new epilogue header
    block_t *block_next = next_block(block);
    write_header(block_next, 0, true, true);

    // coalesce in case the previous block was free
    block_t *ret = coalesce(block);

    dbg_assert_checkheap();
    dbg_print_end("extend_heap\n");
    return ret;
}

/*
 * place: place a block with size at the start of bp
 *        if the remaining size is at least the minimum block size, then 
 *        split the block, and the remaining block is free and insterted 
 *        to the segregated list.
 *        requires the block is free
 */
static void place(block_t *block, size_t asize) {
    dbg_print_start("place\n");
    // free block size
    size_t csize = get_size(block);

    if ((csize - asize) == min_block_size) {
        // split 16 byte free block
        write_header(block, asize, true, get_prev_is_free(block));

        block_t *block_next = next_block(block);

        // insert to list. this function will fill the block's info
        insert_dsize_free_block(block_next);
    }
    else if ((csize - asize) > min_block_size) {
        // split normal free block
        write_header(block, asize, true, get_prev_is_free(block));

        block_t *block_next = next_block(block);
        write_header(block_next, csize - asize, false, false);
        write_footer(block_next, csize - asize, false);

        //insert to segregated list
        insert_free_block(block_next);
    }
    else {
        // do not split
        write_header(block, csize, true, get_prev_is_free(block));

        // the next block's prev is free flag changed
        set_prev_is_free(next_block(block), false);
    }

    dbg_assert_checkheap();
    dbg_print_end("place\n");
}

/*
 * block_to_payload: given a block pointer, return a pointer to the payload
 */
static void *block_to_payload(block_t *block) {
    return (void *) block->payload;
}

/*
 * payload_to_block: given a payload pointer, return a pointer to its block
 */
static block_t *payload_to_block(void *bp) {
    return (block_t *)(((char *)bp) - offsetof(block_t, payload));
}

/*
 * write_header: given a block and its size and allocation status,
 *               use pack to create the header and write it to block.
 */
static void write_header(block_t *block, 
        size_t size, 
        bool alloc, 
        bool prev_is_free) {
    block->header = pack(size, alloc, prev_is_free);
}

/*
 * write_footer: given a freed block and its size and allocation status,
 *               use pack to create the footer and write to the block's
 *               foot position which is calculated by its size
 */
static void write_footer(block_t *block, size_t size, bool alloc) {
    word_t *footerp = (word_t *)((block->payload) + get_size(block) - dsize);
    *footerp = pack(size, alloc, false);
}

/*
 * coalesce: coalesce the free block with free blocks before and after it.
 *           after coalesce function is called, this free block's next and 
 *           previous block must be allocated, if they exist.
 *           also, the free block is not added to segregated list after this 
 *           function is called, need to call insert_free_block
 */
static block_t *coalesce(block_t *block) {
    dbg_print_start("coalesce 0x%lx\n", (word_t)block);
    block_t *block_next = NULL;
    block_t *block_prev = NULL;
    size_t size = get_size(block);
    //size_t coalesce_cnt = 0;

    block_next = next_block(block);
    block_prev = prev_block(block);

    if (!get_alloc(block_next)) {
        size += get_size(block_next);
        remove_free_block(block_next);
    }
    if (block_prev) {
        size += get_size(block_prev);
        remove_free_block(block_prev);
        block = block_prev;
    }

    write_header(block, size, false, get_prev_is_free(block));
    write_footer(block, size, false);

    set_prev_is_free(next_block(block), true);

    dbg_assert_checkheap();
    dbg_print_end("coalesce\n");
    return block;

#if 0
    /* 
     * coalesce next free block repeatedly
     * edge condition is block_next == epilogue, whose alloc == true,
     * so no special judgement is needed
     */
    while (block_next = next_block(block), !get_alloc(block_next)) { 
        dbg_print_indent("coalesce next, block: 0x%lx, size: 0x%lx\n", 
                (word_t)block_next, size);

        remove_free_block(block_next); 
        size = get_size(block) + get_size(block_next); 

        write_header(block, size, false, get_prev_is_free(block));
        write_footer(block, size, false);

        coalesce_cnt++;
    }

    /*
     * coalesce previous free block repeatedly
     * function prev_block will return NULL if previous block is not free block
     */
    while (block_prev = prev_block(block), block_prev) {
        dbg_print_indent("coalesce prev, block: 0x%lx, size: 0x%lx\n", 
                (word_t)block_prev, size);

        remove_free_block(block_prev);
        size = get_size(block) + get_size(block_prev);

        block = block_prev;
        write_header(block, size, false, get_prev_is_free(block));
        write_footer(block, size, false);

        coalesce_cnt++;
    }

    set_prev_is_free(next_block(block), true);

    dbg_print_indent("coalesce_cnt: %lx\n", coalesce_cnt);

    dbg_assert_checkheap();
    dbg_print_end("coalesce\n");
    // do not add to segregated list
    return block;
#endif
}

/*
 * insert_free_block: insert the free block to segregated list according 
 *                    to its size
 */
static void insert_free_block(block_t *block) {
    dbg_print_start("insert_free_block, 0x%lx\n", (word_t) block);
    size_t size = get_size(block);
    size_t id = get_seg_id(size);       // segregate list id
    block_t *start;

    if (seg_start[id] == NULL) {
        // this list is NULL
        seg_start[id] = block;
        set_prev_free_block(block, NULL);
        set_next_free_block(block, NULL);
    }
    else {
        // insert before the list start
        start = seg_start[id];
        set_next_free_block(block, start);
        set_prev_free_block(block, NULL);
        set_prev_free_block(start, block);

        seg_start[id] = block;
    }

    dbg_assert_checkheap();
    dbg_print_end("insert_free_block\n");
}

/*
 * remove_free_block: remove block from segregated list by connecting its
 *                    prev and next blocks. if the removed block is start
 *                    of list, set the new start
 */
static void remove_free_block(block_t *block) {
    dbg_print_start("remove_free_block 0x%lx\n", (word_t)block);

    block_t *prev = get_prev_free_block(block);
    block_t *next = get_next_free_block(block);
    size_t size = get_size(block);
    size_t id = get_seg_id(size);

    if (!prev && !next) {
        // remove the last block of list
        seg_start[id] = NULL;
    }
    else if (!prev) {
        // is the start
        seg_start[id] = next;
        if (id == 0) {
            set_dsize_prev_free_block(next, NULL);
        }
        else {
            set_prev_free_block(next, NULL);
        }
    }
    else {
        // prev and next both exist
        if (id == 0) {
            set_dsize_next_free_block(prev, next);
            if (next) {
                set_dsize_prev_free_block(next, prev);
            }
        }
        else {
            set_next_free_block(prev, next);
            if (next) {
                set_prev_free_block(next, prev);
            }
        }
    }

    dbg_print_end("remove_free_block\n");
}

/*
 * insert_dsize_free_block: insert the 16-byte free block to list
 *                          almost the same with insert_dsize_block
 *                          except the calc of next and prev is different
 */
static void insert_dsize_free_block(block_t *block) {
    dbg_print_start("insert_dsize_free_block, 0x%lx\n", (word_t) block);
    size_t id = 0;       // segregate list id
    block_t *start;

    if (seg_start[id] == NULL) {
        // this list is NULL
        seg_start[id] = block;
        set_dsize_prev_free_block(block, NULL);
        set_dsize_next_free_block(block, NULL);
    }
    else {
        // insert before the list start
        start = seg_start[id];
        set_dsize_next_free_block(block, start);
        set_dsize_prev_free_block(block, NULL);
        set_dsize_prev_free_block(start, block);

        seg_start[id] = block;
    }

    dbg_print_end("insert_dsize_free_block\n");
}

/*
 * set_next_free_block: set the block's next free block to next, overwrite
 *                      original pointer
 */
static void set_next_free_block(block_t *block, block_t *next) {
    memcpy(&block->payload[0], &next, wsize);
}

/*
 * set_prev_free_block: set the block's previous free block to prev, overwrite
 *                      original pointer
 */
static void set_prev_free_block(block_t *block, block_t *prev) {
    memcpy(&block->payload[wsize], &prev, wsize);
}

/*
 * set_dsize_next_free_block: set the 16-byte block's next free block
 */
static void set_dsize_next_free_block(block_t *block, block_t *next) {
    memcpy(&block->header, &next, wsize);

    // set dsize status
    set_dsize_header(block);
}

/*
 * set_dsize_prev_free_block: set the 16-byte block's previous free block
 */
static void set_dsize_prev_free_block(block_t *block, block_t *prev) {
    memcpy(&block->payload[0], &prev, wsize);

    // set dsize status
    set_dsize_footer(block);
}

/*
 * get_next_free_block: return pointer to next free block
 */
static block_t *get_next_free_block(block_t *block) {
    if (get_dsize(block)) {
        // 16-byte block, need remove flag
        word_t tmp = block->header & ~(word_t)0x7;
        return (block_t *)tmp;
    }
    return *(block_t **)&block->payload[0];
}

/*
 * get_prev_free_block: return pointer to previous free block
 */
static block_t *get_prev_free_block(block_t *block) {
    if (get_dsize(block)) {
        // 16-byte block, need remove flag
        word_t tmp = *(word_t *)block->payload & ~(word_t)0x7;
        return (block_t *)tmp;
    }
    return *(block_t **)&block->payload[wsize];
}


/*
 * get_seg_id: use size to determine which list the block belongs to
 */
static size_t get_seg_id(size_t size) {
    return min(max(4, log2(size)) - 4, seg_num - 1);
}

/*
 * log2: return log2, round up.
 */
static size_t log2(size_t x) {
    if (x == 0) return 0;
    size_t i;
    for (i=0; x!=0; i++, x>>=1)
        ;

    return i - 1;
}

/*
 * next_block: use the size to get next block
 */
static block_t *next_block(block_t *block) {
    return (block_t *)(((char *)block) + get_size(block));
}

/*
 * prev_block: if current block's prev_is_free status is true, return 
 *             previous block, otherwise return NULL
 */
static block_t *prev_block(block_t *block) {
    if (get_prev_is_free(block)) {
        // if flag is set
        word_t footer = *(word_t *)(((char *)block) - wsize);
        word_t *headerptr;
        if (extract_dsize(footer)) {
            // previous is a 16-byte free block
            headerptr = (word_t *)(((char *)block) - dsize); 
        }
        else {
            size_t size = extract_size(footer);
            headerptr = (word_t *)(((char *)block) - size); 
        }
        return (block_t *)headerptr;
    }
    return NULL;
}

/*
 * min: return the smaller of x, y
 */
static size_t min(size_t x, size_t y) {
    return x < y ? x : y;
}

/*
 * max: return the bigger of x, y
 */
static size_t max(size_t x, size_t y) {
    return x > y ? x : y;
}


/*
 * find_fit: find an smallest enough free block, 
 *           and remove it from free list
 */
static block_t *find_fit(size_t asize) {
    dbg_print_start("find_fit, size: 0x%lx\n", asize);
    size_t id = get_seg_id(asize);
    block_t *block;
    block_t *ret = NULL;
    size_t min_size = -1;
    size_t size;

    // find all segregated lists whose size is equal to or bigger than asize
    for (; id<seg_num; id++) {
        for (block=seg_start[id]; block; block=get_next_free_block(block)) {
            size = get_size(block);
            if (size >= asize && size < min_size) {
                // find smallest fit block
                min_size = size;
                ret = block;

                // pruning
                if (size == asize) break;
            }
        }

        // pruning
        if (ret) {
            remove_free_block(ret);
            dbg_print_end("find_fit\n");
            return ret;
        }
    }
    dbg_assert_checkheap();
    dbg_print_end("find_fit\n");
    return NULL;
}
