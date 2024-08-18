//
// Created by os on 8/10/24.
//
#include "../h/my_semaphore.hpp"
#include "../h/syscall_c.hpp"

/*MySemaphore* MySemaphore::init_sem(int value) {
    return new MySemaphore(value);
}*/
MySemaphore *MySemaphore::sem_open(int value) {
    //return init_sem(value);
    return new MySemaphore(value);
}



int MySemaphore::sem_close() {
    if (!this->open) {
        return -1;
    }
    while (this->blocked_threads.peekFirst()) {
        TCB* thread = this->blocked_threads.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    }
    return 0;
}

int MySemaphore::sem_trywait() {
    if (!this->open) {
        return -1;
    }
    if (this->val - 1 < 0) {
        return 0;
    } else {
        return 1;
    }
}

int MySemaphore::sem_wait() {
    //if this sem is not for further usage
    if(!this->open) {
        return -1;
    }
    if (--this->val < 0) {
        //suspend the running process by putting it into the queue,
        //take another process from the ready queue and switch context to it
        if(!TCB::running) return -2;
        TCB::running->setBlocked(true);
        this->blocked_threads.addLast(TCB::running);                        //ovde puca!!!!!!
        TCB::dispatch();
        //-----------------------------------------Try with TCB::dispatch instead if it doesnt work?------------------------
        //if thread waited on deallocated sem, return error code
        if (!this->open) {
            return  -2;
        }

    }
    return 0;
}
int MySemaphore::sem_signal() {
    //if this sem is not for further usage
    if (!this->open) {
        return -1;
    }
    if (this->val++ < 0) {
        //take one process from the suspended queue
        // and unblock it by putting it into the ready queue
        TCB* unblocked_thread = this->blocked_threads.removeFirst();
        if(!unblocked_thread) {
            return -1;
        }
        unblocked_thread->setBlocked(false);
        Scheduler::put(unblocked_thread);
    }

    return 0;
}




