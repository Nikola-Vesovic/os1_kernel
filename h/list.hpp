//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP

//#include "../test/printing.hpp"
#include "MemoryAllocator.hpp"
template<typename T>
class List
{
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

    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
//        printInt(sizeof(Elem));
//        printString("\n");
        //Elem *elem = new Elem(data, head);
        Elem *elem = (Elem*) MemoryAllocator::mem_alloc(sizeof(Elem));
        elem->data = data;
        elem->next = nullptr;
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        //printStr("Added to the Scheduler List!!!!\n");
        //Elem *elem = new Elem(data, 0);
        Elem *elem = (Elem*) MemoryAllocator::mem_alloc(sizeof(Elem));
        elem->data = data;
        elem->next = nullptr;
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
        //printStr("Added to the Scheduler List!!!!\n");
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        //delete elem;
        operator delete (elem);
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        //delete elem;
        operator delete (elem);
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
