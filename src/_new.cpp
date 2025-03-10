//
// Created by marko on 20.4.22..
//

//#include "../lib/mem.h"
//#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
//#include "../h/print.hpp"
#include "../h/syscall_cpp.hpp"


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    //return __mem_alloc(n);
    //printInteger(n);
    //return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    //return __mem_alloc(n);
    //printStr("\nSize passed to the new operator");
    //printInteger(n);
    //return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    mem_free(p);
   // MemoryAllocator::mem_free(p);
}

void operator delete[](void *p) noexcept
{
   mem_free(p);
    //MemoryAllocator::mem_free(p);
}

