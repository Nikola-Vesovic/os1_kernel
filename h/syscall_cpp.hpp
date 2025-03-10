//
// Created by os on 8/10/24.
//

#ifndef PROJECT_BASE_SYSCALL_CPP_HPP
#define PROJECT_BASE_SYSCALL_CPP_HPP

#include "syscall_c.hpp"
#include "MemoryAllocator.hpp"
#include "../lib/console.h"

void* operator new(size_t);
void operator delete(void*) noexcept;

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void thread_wrapper(void* thread) {
        Thread* t = (Thread*) thread;
        if(t) {
            ((Thread*)t)->run();
        }
    }
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    //int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};


class PeriodicThread : public Thread {
public:
    void terminate () {}
protected:
    PeriodicThread (time_t period) {}
    virtual void periodicActivation () {}
private:
    time_t period;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif //PROJECT_BASE_SYSCALL_CPP_HPP

