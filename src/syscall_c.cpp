//
// Created by os on 6/21/24.
//

#ifndef PROJECT_BASE_SYSCALL_C_C
#define PROJECT_BASE_SYSCALL_C_C

#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
//#include "../h/riscv.hpp"
#include "../lib/console.h"


void* mem_alloc(size_t size) {

    volatile unsigned int trapCode = 0x01;
    //new size in bytes
    volatile uint64 newSize = (16 + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    //volatile uint64 newSize = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;

    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile("mv a1, %[newSize]" : : [newSize] "r"(newSize));
    __asm__ volatile ("ecall");

    void* result;
    __asm__ volatile("mv %0, a0" : [result] "=r"(result));

    return result;

}

int mem_free(void* ptr) {

    volatile unsigned int trapCode = 0x02;

    // Arguments are stored in a0, a1... So if mv a0 is done first,
    // it will override what was in a0, when ptr was passed to this function!!!
    __asm__ volatile("mv a1, %[ptr]" : : [ptr] "r"(ptr));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");

    uint64 result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {

    volatile unsigned int trapCode = 0x11;

    //uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    uint64* stack;
    if (start_routine != nullptr) {
        stack = new uint64[DEFAULT_STACK_SIZE / sizeof(uint64)];
        //stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    } else {
        stack = nullptr;
    }

    __asm__ volatile("mv a4, %[handle]" : : [handle] "r"(handle));
    __asm__ volatile("mv a3, %[stack]" : : [stack] "r"(stack));
    __asm__ volatile("mv a2, %[arg]" : : [arg] "r"(arg));
    __asm__ volatile("mv a1, %[start_routine]" : : [start_routine] "r"(start_routine));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile ("ecall");
    //printString("\nreturned from ecall");
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    return result;
};

int thread_exit () {
    volatile unsigned int trapCode = 0x12;
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile ("ecall");
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    return result;
}


void thread_dispatch () {
    volatile unsigned int trapCode = 0x13;
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");
}


int sem_open(sem_t* handle, unsigned init) {
    volatile unsigned int trapCode = 0x21;

    __asm__ volatile("mv a2, %[handle]" : : [handle] "r"(handle));
    __asm__ volatile("mv a1, %[init]" : : [init] "r"(init));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile("ecall");

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}

int sem_close(sem_t id) {
    volatile unsigned int trapCode = 0x22;
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile("ecall");

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}

int sem_wait(sem_t id) {
    volatile unsigned int trapCode = 0x23;
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile("ecall");

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}

int sem_signal(sem_t id) {
    volatile unsigned int trapCode = 0x24;
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile("ecall");

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}

int sem_trywait(sem_t id) {
    volatile unsigned int trapCode = 0x26;
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));

    __asm__ volatile("ecall");

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));

    return result;
}


int time_sleep(time_t time) {
    volatile unsigned int trapCode = 0x31;
    __asm__ volatile("mv a1, %[time]" : : [time] "r"(time));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    return result;
}

char getc() {

    volatile unsigned int trapCode = 0x41;
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");

    char ret_char;
    __asm__ volatile("mv %[ret_char], a0" : [ret_char] "=r"(ret_char));
    return ret_char;

    //return __getc();

}

void putc(char c) {
    volatile unsigned int trapCode = 0x42;
    __asm__ volatile("mv a1, %[c]" : : [c] "r"(c));
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");
}



#endif //PROJECT_BASE_SYSCALL_C_C
