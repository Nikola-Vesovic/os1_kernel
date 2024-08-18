//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"


extern void userMain();

void dummyFunction(void* ) {
    userMain();
}

int main() {


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
   //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);             //za asihrone

    /*
    int n = 16;
    char** matrix = (char**)(n*sizeof(char*));
    checkNullptr(matrix);

    char* c = (char *)mem_alloc(n * sizeof(char));
    printInteger((uint64) c);
    __putc('\n');
    char* d = (char *)mem_alloc(n * sizeof(char));
    printInteger((uint64) d);
    __putc('\n');
    char* e = (char *)mem_alloc(n * sizeof(char));
    printInteger((uint64) e);

    __putc('\n');
    char* f = (char *)mem_alloc(n * sizeof(char));
    printInteger((uint64) f);
    __putc('\n');

    for(int i = 0; i < n; i++) {
        matrix[i] = (char *)mem_alloc(n * sizeof(char));
        printInteger((uint64)matrix[i]);
        checkNullptr(matrix[i]);
    }

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            matrix[i][j] = 'k';
        }
    }

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            __putc(matrix[i][j]);
            __putc(' ');
        }
        __putc('\n');
    }


    for(int i = 0; i < n; i++) {
        int status = mem_free(matrix[i]);
        checkStatus(status);
    }
    int status = mem_free(matrix);
    checkStatus(status);

    */

    /*
    printInteger((uint64)HEAP_START_ADDR);
    printString("\n");
    MemoryAllocator::init_mem();
    //MemoryAllocator::mem_alloc(sizeof(int));
    printInteger((uint64)MemoryAllocator::mem_alloc(sizeof(int)));
    printString("\n");
    //printInteger(MemoryAllocator::newHeapStartingAddress);
    printString("\n");
    printInteger((uint64)MemoryAllocator::mem_alloc(sizeof(double)));
    printString("\n");
    //printInteger(MemoryAllocator::newHeapStartingAddress);
    printString("\n");
    printString("\n");

    void* WTF = MemoryAllocator::mem_alloc(sizeof(int));
    printInteger((uint64)WTF);
    MemoryAllocator::mem_free(WTF);

    printInteger((uint64)MemoryAllocator::mem_alloc(sizeof(double)));
    printStr("\n");
    */

    //Test threads asynchronized
    /*
    TCB* threads[5];
    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA);
    printString("Thread A created\n");
    threads[2] = TCB::createThread(workerBodyB);
    printStr("Thread B created\n");
    threads[3] = TCB::createThread(workerBodyC);
    printString("Thread C created\n");
    threads[4] = TCB::createThread(workerBodyD);
    printString("Thread D created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    while(!(threads[1]->isFinished() &&
            threads[2]->isFinished() &&
            threads[3]->isFinished() &&
            threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for(auto &thread : threads)
    {
        delete thread;
    }


     */

    //Test threads synchronized


/*

    TCB *thread1;
    TCB *thread2;
    TCB *thread3;

    thread1 = TCB::createThread(nullptr, nullptr);
    TCB::running = thread1;

    thread2 = TCB::createThread(workerBodyA, nullptr);
    printString("Thread A created\n");
    printString("\nThis is the number of stack: ");
    printInteger((uint64) thread2->stack);
    printString("\nThis is the number of sp: ");
    printInteger(thread2->context.sp);
    thread3 = TCB::createThread(workerBodyB, nullptr);
    printStr("Thread B created\n");

    while (!(thread2->isFinished() &&
             thread3->isFinished()))
    {
        TCB::yield();
    }
*/

    /*TCB *threads[3];

    threads[0] = TCB::createThread(nullptr, nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA, nullptr);
    printStr("Thread A created\n");

    threads[2] = TCB::createThread(workerBodyB, nullptr);
    printString("Thread B created\n");


    while (!(threads[1]->isFinished() &&
            threads[2]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }*/

    /*thread_t *t1 = (thread_t*) new (void*);

    TCB* t2 = TCB::createThread(workerBodyA, nullptr);
    printInteger(t2->isFinished());


    int result = thread_create(t1, workerBodyA, nullptr);
    printInteger(result);

    uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    TCB *t3 = TCB::createThread(workerBodyA, stack, nullptr);
    printInteger(t3->isFinished());
     */

    /*
    //tests for threads!!!

    printInteger(DEFAULT_STACK_SIZE);

    thread_t *threads[4];
    for (int i = 0; i < 4; i++) {
        //threads[i] = (thread_t*)mem_alloc(sizeof(void*));
        threads[i] = (thread_t*) new thread_t;
    }

    printString("\nshort break");
    int result_t0 = thread_create(threads[0], nullptr, nullptr);
    printString("\nThis is the number of result_t0: ");
    printInteger(result_t0);
    printString("\n");
    TCB::running = *threads[0];


    int result_t1 = thread_create(threads[1], workerBodyA, nullptr);
    printString("\nThread A created\n");
    printString("\nThis is the number of result_t1: ");
    printInteger(result_t1);
    printStr("\n");

    int result_t2 = thread_create(threads[2], workerBodyB, nullptr);
    printString("\nThread B created\n");
    printString("\nThis is the number of result_t2: ");
    printInteger(result_t2);
    printString("\n");

    int result_t3 = thread_create(threads[3], workerBodyC, nullptr);
    printString("\nThread C created\n");
    printString("\nThis is the number of result_t3: ");
    printInteger(result_t3);
    printString("\n");

    //TCB::running = *threads[3];
    //thread_exit();
    uint64 cnt = 0;
    while (!((*threads[1])->isFinished() && (*threads[2])->isFinished() && (*threads[3])->isFinished()))
    {
        cnt++;
        //TCB::yield();
        thread_dispatch();
        if (cnt == 2) {
            printString("\n\n\n\n");
            printInteger(thread_exit());
            printString("\n\n\n\n");
        }


    }


    for (auto &thread: threads)
    {
        printString("Inside deleter area");
        delete thread;
    }

    */

    /*
    //tests for semaphores

    sem_t sem;
    sem_open(&sem, 1);

    thread_t *threads[4];
    for (int i = 0; i < 4; i++) {
        //threads[i] = (thread_t*)mem_alloc(sizeof(void*));
        threads[i] = (thread_t*) new thread_t;
    }

    printString("\nshort break");
    int result_t0 = thread_create(threads[0], nullptr, sem);
    printString("\nThis is the number of result_t0: ");
    printInteger(result_t0);
    printStr("\n");
    TCB::running = *threads[0];


    int result_t1 = thread_create(threads[1], workerBodyA, sem);
    printString("\nThread A created\n");
    printString("\nThis is the number of result_t1: ");
    printInteger(result_t1);
    printString("\n");

    int result_t2 = thread_create(threads[2], workerBodyB, sem);
    printString("\nThread B created\n");
    printString("\nThis is the number of result_t2: ");
    printInteger(result_t2);
    printString("\n");

    int result_t3 = thread_create(threads[3], workerBodyC, sem);
    printString("\nThread C created\n");
    printString("\nThis is the number of result_t3: ");
    printInteger(result_t3);
    printString("\n");

    //TCB::running = *threads[3];
    //thread_exit();
    uint64 cnt = 0;
    while (!((*threads[1])->isFinished() && (*threads[2])->isFinished() && (*threads[3])->isFinished()))
    {
        cnt++;
        //TCB::yield();
        thread_dispatch();



    }






    for (auto &thread: threads)
    {
        printString("Inside deleter area");
        delete thread;
    }



    */
/*
    printString("Unesite broj testa? [1-7]\n");
    __putc('d');
    putc('l');
    putc('\n');
    putc('k');
    while(1) {
        char test_char = __getc();
        __putc(test_char + 30);
    }*/



    TCB *threads[2];
    threads[0] = TCB::createThread(nullptr,nullptr);
    TCB::running = threads[0];


    thread_create(&threads[1], dummyFunction, nullptr);

    //thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!threads[1]->isFinished()) {
        //printString("\nWTF\n");
        thread_dispatch();

    }

    printString("Vratio sam se u main\n");

    return 0;

    printString("\nFinished\n");

    return 0;
}
