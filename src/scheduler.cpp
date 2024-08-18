//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/print.hpp"

List<TCB> Scheduler::readyThreadQueue;

TCB *Scheduler::get()
{
    //printStr("Got from Scheduler\n");
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
    //printStr("Put into Scheduler\n");
}