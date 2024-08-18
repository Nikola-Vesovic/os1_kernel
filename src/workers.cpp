//
// Created by marko on 20.4.22..
//

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    //printStr("\nInside Fibonacci\n");
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) {
        //printStr("Yield from Fibonacci\n");
        TCB::yield();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* sem)
{
    uint8 i = 0;
    printString("\nWait from A:");
/*    printInteger(sem_trywait((sem_t)sem));
    printStr("\n");*/
    printInt(sem_wait((sem_t)sem));
    printString("\n");
    printString("After sem_wait from A\n");
    for (; i < 3; i++)
    {
        printString("A: i=");
        printInt(i);
        printString("\n");
    }

    printString("A: yield\n");
    __asm__ ("li t1, 7");
    TCB::yield();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("A: t1=");
    printInt(t1);
    printString("\n");

    uint64 result = fibonacci(5);
    printString("A: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 6; i++)
    {
        printString("A: i=");
        printInt(i);
        printString("\n");
    }

    TCB::running->setFinished(true);
    printString("A ending\n");
    thread_exit();
    //TCB::yield();
}

void workerBodyB(void* sem)
{
    uint8 i = 10;
    for (; i < 13; i++)
    {
        printString("B: i=");
        printInt(i);
        printString("\n");
    }
    printString("Signal from B: ");
    printInt(sem_signal((sem_t)sem));
    printString("\n");
    printString("B: yield\n");
    __asm__ ("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(8);
    printString("B: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++)
    {
        printString("B: i=");
        printInt(i);
        printString("\n");
    }

    TCB::running->setFinished(true);
    printString("B ending\n");
    TCB::yield();
}


void workerBodyC(void* sem)
{
    uint8 i = 10;
    printString("\nFirst Wait from C:");
    printInt(sem_wait((sem_t)sem));
    printString("\nSecond Wait from C:");
    printInt(sem_wait((sem_t)sem));
    printString("\n");
    for (; i < 13; i++)
    {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }

    printString("C: yield\n");
    __asm__ ("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(12);
    printString("C: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++)
    {
        printString("C: i=");
        printInt(i);
        printString("\n");
    }

    TCB::running->setFinished(true);
    printString("C ending\n");
    TCB::yield();
}
