//
// Created by os on 8/10/24.
//

#ifndef PROJECT_BASE_MY_SEMAPHORE_HPP
#define PROJECT_BASE_MY_SEMAPHORE_HPP

//#include "MemoryAllocator.hpp"
#include "list.hpp"
#include "tcb.hpp"


class MySemaphore {

private:

    void *operator new(size_t n)
    {
        //return __mem_alloc(n);
        //printInteger(n);
        return MemoryAllocator::mem_alloc(n);

    }
    void *operator new[](size_t n)
    {
        //return __mem_alloc(n);
        //printStr("\nSize passed to the new operator");
        //printInteger(n);
        return MemoryAllocator::mem_alloc(n);

    }
    void operator delete(void *p)
    {
        // mem_free(p);
        MemoryAllocator::mem_free(p);
    }
    void operator delete[](void *p)
    {
        //mem_free(p);
        MemoryAllocator::mem_free(p);
    }

public:
    MySemaphore(int val = 1) {
        this->val = val;
        this->open = true;
    }

    //static MySemaphore* init_sem(int value);
    static MySemaphore* sem_open(int value);
    int sem_close();
    int sem_signal();
    int sem_wait();
    int sem_trywait();


private:

    List<TCB> blocked_threads;
    bool open;
    int val;

};



#endif //PROJECT_BASE_MY_SEMAPHORE_HPP
