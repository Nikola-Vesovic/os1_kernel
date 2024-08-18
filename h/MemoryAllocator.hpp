//
// Created by os on 6/19/24.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP


#include "../lib/hw.h"
//#include "../test/printing.hpp"

struct MemoryChunk
{
    size_t size;
    MemoryChunk* next;
};


class MemoryAllocator {

public:

    static MemoryChunk* free_head;
    static MemoryChunk* used_head;
    static uint64 newHeapStartingAddress;
    static const uint64 size_of_memory_chunk = 16;
    static size_t HEAP_SIZE;
    static uint8 isInitialised;

    static void* mem_alloc(size_t size);
    static int mem_free(void* start_of_block);
    static void try_to_join(MemoryChunk* cur);
    static void init_mem();
    static void update_used_list(MemoryChunk* curr);


private:
    //singleton
    MemoryAllocator() = default;




};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
