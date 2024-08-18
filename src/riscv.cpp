//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/my_semaphore.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    if(TCB::running->body) {
        __asm__ volatile("csrc sstatus, %0" :: "r"(SSTATUS_SPP));
    }

    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");

}

inline uint64 Riscv::r_a2() {
    uint64 volatile a2;
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 val) {
    __asm__ volatile ("mv a2, %0" : : "r"(val));
}

inline uint64 Riscv::r_a3() {
    uint64 volatile a3;
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a3(uint64 val) {
    __asm__ volatile ("mv a3, %0" : : "r"(val));
}



void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    uint64 whichCase = Riscv::r_a0();
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();
    uint64 stval = r_stval();

    /*
    printString("Entering handleSupervisorTrap\n");  // Debug print
    printInteger(scause);  // Print scause to understand the cause of the trap
    printString("\n");  // Debug print
    printInteger(sepc);    // Print sepc to see where the trap was triggered
    printString("\n");  // Debug print
    printInteger(sstatus); // Print sstatus for additional context
    printStr("\n\n");
    */
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        //printStr("Ecall\n");
        MySemaphore* sem_id;
        //interrupt: no, cause code : environment call from U-mode (8) or S-mode (9)
        //uint64 sepc = r_sepc() + 4;     //iza instrukcije ecall koja nas je dovela ovde. sve instructions su 4 B
        //uint64 sstatus = r_sstatus();
        //sepc = r_sepc() + 4;
        sstatus = r_sstatus();

        switch (whichCase) {
            //void* mem_alloc(size_t size)
            case 0x01: {
                size_t size;
                __asm__ volatile("ld %[size], 11 * 8(x8)" : [size] "=r"(size));
                void* ptr;
                ptr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
                __asm__ volatile ("sw t0, 80(x8)"); //load it into the location at which a0 is saved
                break;
            }

            case 0x02: {
                void *volatile memptr;
                __asm__ volatile("ld %[memptr], 11 * 8(x8)" : [memptr] "=r"(memptr));

                int returnValue = MemoryAllocator::mem_free(memptr);
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            }
            //thread_create
            case 0x11: {

                using Body = void (*)(void*);
                Body body;
                TCB** handle;
                //TCB* tcb;
                uint64* address;
                void *arg;
                uint64 *stack;
                __asm__ volatile("ld %[body], 11 * 8(x8)" : [body] "=r"(body));
                __asm__ volatile("ld %[address], 11 * 8(x8)" : [address] "=r"(address));
                //void (*startR)(void*) = reinterpret_cast<void (*)(void*)>(address);
                __asm__ volatile("ld %[arg], 12 * 8(x8)" : [arg] "=r"(arg));
                __asm__ volatile("ld %[stack], 13 * 8(x8)" : [stack] "=r"(stack));
                __asm__ volatile("ld %[handle], 14 * 8(x8)" : [handle] "=r"(handle));

                //body = (Body) address;
                *handle = TCB::createThread(body, stack, arg);
                uint64 result = (*handle != nullptr) ? 0 : -1;
                //uint64 result = 1;
                /*tcb = TCB::createThread(body, stack, arg);
                uint64 result = tcb ? 1 : 0;*/

                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
                break;
            }
            case 0x12: {
                //TCB::killThread();
                uint64 result = TCB::killThread();
                /*uint64 result = 1;
                TCB::running->setFinished(true);
                TCB::dispatch();*/
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
                break;
            }
            case 0x13: {
                //TCB::timeSliceCounter = 0;
                TCB::dispatch();
                break;
            }
            case 0x21: {

                int init;
                MySemaphore** sem_handle;

                __asm__ volatile("ld %[init], 11 * 8(x8)" : [init] "=r"(init));
                __asm__ volatile("ld %[sem_handle], 12 * 8(x8)" : [sem_handle] "=r"(sem_handle));

                //*sem_handle = MySemaphore::init_sem(init);
                *sem_handle = MySemaphore::sem_open(init);
                uint64 result = (*sem_handle != nullptr) ? 0 : -1;
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
                break;
            }
            case 0x22: {

                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
                uint64 result = sem_id->sem_close();
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0

                break;
            }
            case 0x23: {
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
                uint64 result = sem_id->sem_wait();
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0

                break;
            }
            case 0x24: {
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
                uint64 result = sem_id->sem_signal();
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0

                break;
            }
            case 0x26: {
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
                uint64 result = sem_id->sem_trywait();
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0

                break;
            }
            case 0x31: {
                time_t time;
                __asm__ volatile("ld %[time], 11 * 8(x8)" : [time] "=r"(time));
                uint64 result = TCB::running->time_sleep();
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0

                break;
            }
            case 0x41: {
                char ret_char = __getc();
                __asm__ volatile("sd %[ret_char], 10 * 8(x8)" : : [ret_char] "r" (ret_char)); //write on loc of saved a0
                break;
            }
            case 0x42: {
                char put_char;
                __asm__ volatile("ld %[put_char], 11 * 8(x8)" : [put_char] "=r"(put_char));
                __putc(put_char);
                break;
            }
            default:
                break;

        }

        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL)
    {
        //printString("Timer call\n");
        //interrupt: yes, cause code: supervisor software interrupt (timer)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            // ovo ce biti ono sepc koje je neka prethodna nit sacuvala na svom steku pre
            // nego sto je usla u dispatch i predala procesor drugoj, a onda sledeci put
            // kada ova prvobitna bude povratila kontekst ce se njen sepc restaurirati
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    } else if (scause == 0x8000000000000009UL) {
        //interrupt: yes, cause code: supervisor external interrupt (console)
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();

        console_handler();

        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x0000000000000002UL) {
        printString("Error - forbidden command\n");
        __asm__ volatile ("li t0, 0x5555");
        __asm__ volatile ("li t1, 0x100000");
        __asm__ volatile ("sw t0, 0 * 8(t1)");
    }
    else {
            //unexpected trap cause
            printString("\nScause: ");
            printInt(scause);
            printString("\nSepc: ");
            printInt(sepc);
            printString("\nStval: ");
            printInt(stval);
            printString("\nSstatus: ");
            printInt(sstatus);
    }
}
