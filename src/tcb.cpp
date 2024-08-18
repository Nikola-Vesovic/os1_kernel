#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, uint64* stack, void* arg)
{
    return (TCB*)new TCB(body, TIME_SLICE, stack, arg);

    //return (TCB*)new TCB();
}
TCB *TCB::createThread(Body body, void* arg)
{
    return (TCB*)new TCB(body, TIME_SLICE, arg);

    //return (TCB*)new TCB();
}


void TCB::yield()
{
    int trapCode = 0x13;
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
//    printString("in dispatch after get from Scheduler");
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}

int TCB::killThread() {
    TCB::running->setFinished(true);
    if (!running->isFinished()) return -1;
    //TCB::dispatch();
    TCB::yield();
    //freeing space
    //int status =  MemoryAllocator::mem_free(TCB::running);
    //TCB::running = nullptr;
    return 0;
}
