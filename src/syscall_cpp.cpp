//
// Created by os on 8/13/24.
//
#include "../h/syscall_cpp.hpp"

//THREADS

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    //mem_free(this->myHandle);
    //delete this->myHandle;            //doesnt work, calling destructor,
    operator delete (this->myHandle);   //and operator delete bypasses it
}

int Thread::start() {
    //thread_create(&this->myHandle, thread_wrapper, this);
    thread_create(&this->myHandle, body, arg);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Thread::Thread() {
    this->body = Thread::thread_wrapper;    //implicit conversion, the same as: this->body = &Thread::thread_wrapper;
    this->arg = this;
}


//SEMAPHORES

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    sem_wait(this->myHandle);
    return 0;
}

int Semaphore::signal() {
    sem_signal(this->myHandle);
    return 0;
}

int Semaphore::tryWait() {
    sem_trywait(this->myHandle);
    return 0;
}

char Console::getc() {
    ::getc();
    return 0;
}

void Console::putc(char c) {
    ::putc(c);
}
