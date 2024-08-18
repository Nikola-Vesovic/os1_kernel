//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"


// Thread Control Block
class TCB
{


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
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }
    void setBlocked(bool value) { blocked = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    int time_sleep() { return 0; }

    using Body = void (*)(void*);

    static TCB *createThread(Body body, uint64* stack, void* arg);
    static TCB *createThread(Body body, void* arg);

    static int killThread();

    static void yield();

    static TCB *running;

private:
    TCB() = default;
    TCB(Body body, uint64 timeSlice, uint64* stack, void* arg) :
            body(body),
            //stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            stack((uint8*) stack),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? ((uint64) &stack[DEFAULT_STACK_SIZE  / 8]) : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            blocked(false),
            arg(arg)
    {
        if (body != nullptr) {
            Scheduler::put(this);
//            printString("Put in Scheduler from constructor of TCB");
        }
        // Debug prints
//        printString("\nTCB Constructor 1:");
//        printString("\nBody: "); printInt((uint64)body);
//        printString("\nStack: "); printInt((uint64)stack);
//        printString("\nContext.ra: "); printInt(context.ra);
//        printString("\nContext.sp: "); printInt(context.sp);
//        printString("\nTimeSlice: "); printInt(timeSlice);
//        printString("\nFinished: "); printInt(finished);
//        printString("\nArg: "); printInt((uint64)arg);

    }

    TCB(Body body, uint64 timeSlice, void* arg) :
            body(body),
            stack(body != nullptr ? new uint8[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? ((uint64) &stack[STACK_SIZE]) : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            blocked(false),
            arg(arg)
    {
        if (body != nullptr) {
            Scheduler::put(this);
        }

    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint8 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    bool blocked;
    void* arg;

    friend class Riscv;
    friend class MySemaphore;
    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP