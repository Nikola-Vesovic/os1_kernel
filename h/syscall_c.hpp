#ifndef _SYSCALL_C_H
#define _SYSCALL_C_H

//#include "../lib/hw.h"
//#include "tcb.hpp"
#include "my_semaphore.hpp"

//Memory allocation

void* mem_alloc(size_t size);

int mem_free(void* ptr);

//Threads

class TCB;
typedef TCB* thread_t;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);


int thread_exit ();

void thread_dispatch ();

//Semaphores
class MySemaphore;
typedef MySemaphore* sem_t;

int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);
int sem_trywait(sem_t id);

typedef unsigned long time_t;
int time_sleep (time_t);


const int EOF = -1;
char getc();
void putc (char);


#endif //_SYSCALL_C_H