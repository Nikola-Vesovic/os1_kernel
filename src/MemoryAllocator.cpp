//
// Created by os on 6/20/24.
//
#include "../h/MemoryAllocator.hpp"

size_t MemoryAllocator::HEAP_SIZE = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;

MemoryChunk* MemoryAllocator::free_head = nullptr;
MemoryChunk* MemoryAllocator::used_head = nullptr;
uint64 MemoryAllocator::newHeapStartingAddress = (uint64) HEAP_START_ADDR ;
uint8 MemoryAllocator::isInitialised = 0;

void MemoryAllocator::init_mem()
{
    //MemoryAllocator::newHeapStartingAddress = (uint64) HEAP_START_ADDR;
    MemoryAllocator::HEAP_SIZE = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    //printInteger(HEAP_SIZE);
    MemoryAllocator::free_head = (MemoryChunk*) ((char*) HEAP_START_ADDR);
    free_head->next = nullptr;
    //size_t size = (char*) HEAP_END_ADDR - (char*) HEAP_START_ADDR - sizeof(MemoryChunk);
    //free_head->size = size;
    free_head->size = HEAP_SIZE;
    used_head = nullptr;

}



// TODO
// passing bytes to this function, not blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    if(!MemoryAllocator::isInitialised) {
        MemoryAllocator::isInitialised = 1;
        init_mem();
    }
    if (size > HEAP_SIZE || size <= 0 || !free_head) {
        return nullptr;
    }

    // if - if mem_alloc was called directly,
    // else - if it was called from syscall
    /*if (size % MEM_BLOCK_SIZE != 0) {
        newSize = (sizeof(MemoryChunk) + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    } else {
        newSize = size;
    }*/

    size_t num_of_bytes = (sizeof(MemoryChunk) + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
/*    size_t num_of_blocks = (newSize + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    size_t num_of_bytes = num_of_blocks * MEM_BLOCK_SIZE;*/

/*printString("\nSize of passed size: ");
    printInteger(size);
    printStr("\nSize of callculated size num_of_bytes: ");
    printInteger(num_of_bytes);*/

    MemoryChunk* prev = nullptr;
    MemoryChunk* curr;
    MemoryChunk* new_free_head;
    for (curr = free_head; curr; prev = curr, curr = curr->next) {
        if (curr->size > num_of_bytes) {
            // chunk that remains after taking num_of_bytes from it
            // curr is now the used fragment
            new_free_head = (MemoryChunk*) ((char*)curr + num_of_bytes);
            new_free_head->size = curr->size - num_of_bytes;
            new_free_head->next = curr->next;

            // update free list
            //if there is only one free fragment - correction! - If there is no previous fragments
            if (!prev) {
                MemoryAllocator::free_head = new_free_head;
                //free_head->next = nullptr;
            } else {
                prev->next = new_free_head;
                //new_free_head->next = curr->next;
                curr->next = nullptr;
            }
            // nema - sizeof(MemoryChunk) jer se u syscall_c.cpp
            // vec izracunalo zaokruzen broj bajtova na blokove

            curr->size = num_of_bytes;

            update_used_list(curr);
            //newHeapStartingAddress = (uint64) curr + sizeof(MemoryChunk) + num_of_bytes;
            return (char*)curr + sizeof(MemoryChunk);
        } else if (num_of_bytes == curr->size) {
            //update free list
            if (!prev) {
                MemoryAllocator::free_head = curr->next;
            } else {
                prev->next = curr->next;
                curr->next = nullptr;
            }
            update_used_list(curr);
            return (char*) curr + sizeof(MemoryChunk);
        }
    }
    return nullptr; // unwanted situation
}

int MemoryAllocator::mem_free(void *space_to_be_free) {

    if (MemoryAllocator::used_head == nullptr) {
        return -1;   //no used space, nothing to free
    }
    if (space_to_be_free == nullptr ||
        space_to_be_free < HEAP_START_ADDR ||
        space_to_be_free > HEAP_END_ADDR) {
        return -2;   //not adequate address
    }
//    MemoryChunk* test = (MemoryChunk*) ((char*) space_to_be_free);
//    test->size = ((MemoryChunk*) ((char*) space_to_be_free))->size;
//    printInteger((uint64)test);
    MemoryChunk* to_be_free = (MemoryChunk*) ((char*)space_to_be_free - sizeof(MemoryChunk));
//    to_be_free->size = (((MemoryChunk*)(char*) space_to_be_free)->size + size_of_memory_chunk + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    // if it's first used one
    if (to_be_free == used_head) {
        used_head = to_be_free->next;
        to_be_free->next = nullptr;
    // else find the previous used chunk and link it
    } else {
        MemoryChunk* tmp_used = used_head;
        if (tmp_used < used_head) return -3;                 //error, should never happen
        for (; tmp_used->next && tmp_used->next < to_be_free; tmp_used = tmp_used->next);      //tmp_used will be the first used block before required block to be released
        //removing from used list
        tmp_used->next = to_be_free->next;
        to_be_free->next = nullptr;
    }

    //and inserting into free list
    MemoryChunk* tmp_free = free_head;

    //if there were no free space
    if (tmp_free == nullptr) {
        free_head = to_be_free;
        free_head->size = to_be_free->size;
    } else {
        to_be_free->next = tmp_free;
        free_head = to_be_free;
    }
    /*
    for (; tmp_free->next; tmp_free = tmp_free->next);            //tmp_free will be the last free block before newly released block addition
    //if there were no free space
    if (tmp_free == nullptr) {
        free_head = to_be_free;
        free_head->size = to_be_free->size;
    } else {            //add it to the end
        tmp_free->next = to_be_free;
    }
     */
    try_to_join(to_be_free);    //with next
    try_to_join(tmp_free);      //with prev

    return 0;
}

void MemoryAllocator::try_to_join(MemoryChunk *cur) {
    if (!cur) return;
    //if overlaping occurs between cur and cur->next, join them together
    if (cur->next && (char*) cur + cur->size + sizeof(MemoryChunk) == (char*) cur->next) {      //could also be in while, so that it joins more than one fragments
        cur->size += cur->next->size + sizeof(MemoryChunk);
        MemoryChunk* tmp = cur->next;
        cur->next = cur->next->next;
        tmp->next = nullptr;
    }

}

void MemoryAllocator::update_used_list(MemoryChunk* curr) {
    //update used list
    //if it's empty
    if (!MemoryAllocator::used_head) {
        used_head = curr;
        used_head->size = curr->size;
        curr->next = nullptr;
    } else {
        MemoryChunk *tmp = used_head;
        //insert at the beginning
        if (curr < tmp) {
            curr->next = tmp;
            used_head = curr;
        } else {
            while (tmp->next && tmp->next < curr) {
                tmp = tmp->next;
            }
            curr->next = tmp->next;
            tmp->next = curr;
        }
    }
}

