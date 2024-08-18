
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	72813103          	ld	sp,1832(sp) # 8000b728 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5d8060ef          	jal	ra,800065f4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256           #   8*64
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)  #   sd x3, 3 * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256       #    8*64
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
#   inerrupt routine
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256           #   8*64
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)  #   sd x0, 0 * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	3e0010ef          	jal	ra,80002564 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256       #    8*64
    80001208:	10010113          	addi	sp,sp,256


    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 -> &old->context;
    # a1 -> &running->context;
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../test/printing.hpp"
//#include "../h/riscv.hpp"
#include "../lib/console.h"


void* mem_alloc(size_t size) {
    80001244:	fe010113          	addi	sp,sp,-32
    80001248:	00813c23          	sd	s0,24(sp)
    8000124c:	02010413          	addi	s0,sp,32

    volatile unsigned int trapCode = 0x01;
    80001250:	00100793          	li	a5,1
    80001254:	fef42623          	sw	a5,-20(s0)
    //new size in bytes
    volatile uint64 newSize = (16 + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001258:	04f50513          	addi	a0,a0,79
    8000125c:	fc057513          	andi	a0,a0,-64
    80001260:	fea43023          	sd	a0,-32(s0)
    //volatile uint64 newSize = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;

    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001264:	fec42783          	lw	a5,-20(s0)
    80001268:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %[newSize]" : : [newSize] "r"(newSize));
    8000126c:	fe043783          	ld	a5,-32(s0)
    80001270:	00078593          	mv	a1,a5
    __asm__ volatile ("ecall");
    80001274:	00000073          	ecall

    void* result;
    __asm__ volatile("mv %0, a0" : [result] "=r"(result));
    80001278:	00050513          	mv	a0,a0

    return result;

}
    8000127c:	01813403          	ld	s0,24(sp)
    80001280:	02010113          	addi	sp,sp,32
    80001284:	00008067          	ret

0000000080001288 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001288:	fe010113          	addi	sp,sp,-32
    8000128c:	00813c23          	sd	s0,24(sp)
    80001290:	02010413          	addi	s0,sp,32

    volatile unsigned int trapCode = 0x02;
    80001294:	00200793          	li	a5,2
    80001298:	fef42623          	sw	a5,-20(s0)

    // Arguments are stored in a0, a1... So if mv a0 is done first,
    // it will override what was in a0, when ptr was passed to this function!!!
    __asm__ volatile("mv a1, %[ptr]" : : [ptr] "r"(ptr));
    8000129c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    800012a0:	fec42783          	lw	a5,-20(s0)
    800012a4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800012a8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    800012ac:	00050513          	mv	a0,a0

    return result;
}
    800012b0:	0005051b          	sext.w	a0,a0
    800012b4:	01813403          	ld	s0,24(sp)
    800012b8:	02010113          	addi	sp,sp,32
    800012bc:	00008067          	ret

00000000800012c0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800012c0:	fc010113          	addi	sp,sp,-64
    800012c4:	02113c23          	sd	ra,56(sp)
    800012c8:	02813823          	sd	s0,48(sp)
    800012cc:	02913423          	sd	s1,40(sp)
    800012d0:	03213023          	sd	s2,32(sp)
    800012d4:	01313c23          	sd	s3,24(sp)
    800012d8:	04010413          	addi	s0,sp,64
    800012dc:	00050993          	mv	s3,a0
    800012e0:	00058493          	mv	s1,a1
    800012e4:	00060913          	mv	s2,a2

    volatile unsigned int trapCode = 0x11;
    800012e8:	01100793          	li	a5,17
    800012ec:	fcf42623          	sw	a5,-52(s0)

    //uint64* stack = new uint64[DEFAULT_STACK_SIZE];
    uint64* stack;
    if (start_routine != nullptr) {
    800012f0:	04058c63          	beqz	a1,80001348 <_Z13thread_createPP3TCBPFvPvES2_+0x88>
        stack = new uint64[DEFAULT_STACK_SIZE / sizeof(uint64)];
    800012f4:	00001537          	lui	a0,0x1
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	e78080e7          	jalr	-392(ra) # 80002170 <_Znam>
        //stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);
    } else {
        stack = nullptr;
    }

    __asm__ volatile("mv a4, %[handle]" : : [handle] "r"(handle));
    80001300:	00098713          	mv	a4,s3
    __asm__ volatile("mv a3, %[stack]" : : [stack] "r"(stack));
    80001304:	00050693          	mv	a3,a0
    __asm__ volatile("mv a2, %[arg]" : : [arg] "r"(arg));
    80001308:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %[start_routine]" : : [start_routine] "r"(start_routine));
    8000130c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001310:	fcc42783          	lw	a5,-52(s0)
    80001314:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    80001318:	00000073          	ecall
    //printString("\nreturned from ecall");
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    8000131c:	00050793          	mv	a5,a0
    80001320:	fcf43023          	sd	a5,-64(s0)
    return result;
    80001324:	fc043503          	ld	a0,-64(s0)
};
    80001328:	0005051b          	sext.w	a0,a0
    8000132c:	03813083          	ld	ra,56(sp)
    80001330:	03013403          	ld	s0,48(sp)
    80001334:	02813483          	ld	s1,40(sp)
    80001338:	02013903          	ld	s2,32(sp)
    8000133c:	01813983          	ld	s3,24(sp)
    80001340:	04010113          	addi	sp,sp,64
    80001344:	00008067          	ret
        stack = nullptr;
    80001348:	00000513          	li	a0,0
    8000134c:	fb5ff06f          	j	80001300 <_Z13thread_createPP3TCBPFvPvES2_+0x40>

0000000080001350 <_Z11thread_exitv>:

int thread_exit () {
    80001350:	fe010113          	addi	sp,sp,-32
    80001354:	00813c23          	sd	s0,24(sp)
    80001358:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x12;
    8000135c:	01200793          	li	a5,18
    80001360:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001364:	fec42783          	lw	a5,-20(s0)
    80001368:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    8000136c:	00000073          	ecall
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    80001370:	00050793          	mv	a5,a0
    80001374:	fef43023          	sd	a5,-32(s0)
    return result;
    80001378:	fe043503          	ld	a0,-32(s0)
}
    8000137c:	0005051b          	sext.w	a0,a0
    80001380:	01813403          	ld	s0,24(sp)
    80001384:	02010113          	addi	sp,sp,32
    80001388:	00008067          	ret

000000008000138c <_Z15thread_dispatchv>:


void thread_dispatch () {
    8000138c:	fe010113          	addi	sp,sp,-32
    80001390:	00813c23          	sd	s0,24(sp)
    80001394:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x13;
    80001398:	01300793          	li	a5,19
    8000139c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    800013a0:	fec42783          	lw	a5,-20(s0)
    800013a4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013a8:	00000073          	ecall
}
    800013ac:	01813403          	ld	s0,24(sp)
    800013b0:	02010113          	addi	sp,sp,32
    800013b4:	00008067          	ret

00000000800013b8 <_Z8sem_openPP11MySemaphorej>:


int sem_open(sem_t* handle, unsigned init) {
    800013b8:	fe010113          	addi	sp,sp,-32
    800013bc:	00813c23          	sd	s0,24(sp)
    800013c0:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x21;
    800013c4:	02100793          	li	a5,33
    800013c8:	fef42623          	sw	a5,-20(s0)

    __asm__ volatile("mv a2, %[handle]" : : [handle] "r"(handle));
    800013cc:	00050613          	mv	a2,a0
    __asm__ volatile("mv a1, %[init]" : : [init] "r"(init));
    800013d0:	00058593          	mv	a1,a1
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    800013d4:	fec42783          	lw	a5,-20(s0)
    800013d8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013dc:	00000073          	ecall

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    800013e0:	00050793          	mv	a5,a0
    800013e4:	fef43023          	sd	a5,-32(s0)

    return result;
    800013e8:	fe043503          	ld	a0,-32(s0)
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	01813403          	ld	s0,24(sp)
    800013f4:	02010113          	addi	sp,sp,32
    800013f8:	00008067          	ret

00000000800013fc <_Z9sem_closeP11MySemaphore>:

int sem_close(sem_t id) {
    800013fc:	fe010113          	addi	sp,sp,-32
    80001400:	00813c23          	sd	s0,24(sp)
    80001404:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x22;
    80001408:	02200793          	li	a5,34
    8000140c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    80001410:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001414:	fec42783          	lw	a5,-20(s0)
    80001418:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000141c:	00000073          	ecall

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    80001420:	00050793          	mv	a5,a0
    80001424:	fef43023          	sd	a5,-32(s0)

    return result;
    80001428:	fe043503          	ld	a0,-32(s0)
}
    8000142c:	0005051b          	sext.w	a0,a0
    80001430:	01813403          	ld	s0,24(sp)
    80001434:	02010113          	addi	sp,sp,32
    80001438:	00008067          	ret

000000008000143c <_Z8sem_waitP11MySemaphore>:

int sem_wait(sem_t id) {
    8000143c:	fe010113          	addi	sp,sp,-32
    80001440:	00813c23          	sd	s0,24(sp)
    80001444:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x23;
    80001448:	02300793          	li	a5,35
    8000144c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    80001450:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001454:	fec42783          	lw	a5,-20(s0)
    80001458:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    80001460:	00050793          	mv	a5,a0
    80001464:	fef43023          	sd	a5,-32(s0)

    return result;
    80001468:	fe043503          	ld	a0,-32(s0)
}
    8000146c:	0005051b          	sext.w	a0,a0
    80001470:	01813403          	ld	s0,24(sp)
    80001474:	02010113          	addi	sp,sp,32
    80001478:	00008067          	ret

000000008000147c <_Z10sem_signalP11MySemaphore>:

int sem_signal(sem_t id) {
    8000147c:	fe010113          	addi	sp,sp,-32
    80001480:	00813c23          	sd	s0,24(sp)
    80001484:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x24;
    80001488:	02400793          	li	a5,36
    8000148c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    80001490:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001494:	fec42783          	lw	a5,-20(s0)
    80001498:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000149c:	00000073          	ecall

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    800014a0:	00050793          	mv	a5,a0
    800014a4:	fef43023          	sd	a5,-32(s0)

    return result;
    800014a8:	fe043503          	ld	a0,-32(s0)
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	01813403          	ld	s0,24(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret

00000000800014bc <_Z11sem_trywaitP11MySemaphore>:

int sem_trywait(sem_t id) {
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00813c23          	sd	s0,24(sp)
    800014c4:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x26;
    800014c8:	02600793          	li	a5,38
    800014cc:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[id]" : : [id] "r"(id));
    800014d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    800014d4:	fec42783          	lw	a5,-20(s0)
    800014d8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014dc:	00000073          	ecall

    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    800014e0:	00050793          	mv	a5,a0
    800014e4:	fef43023          	sd	a5,-32(s0)

    return result;
    800014e8:	fe043503          	ld	a0,-32(s0)
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	01813403          	ld	s0,24(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z10time_sleepm>:


int time_sleep(time_t time) {
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00813c23          	sd	s0,24(sp)
    80001504:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x31;
    80001508:	03100793          	li	a5,49
    8000150c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[time]" : : [time] "r"(time));
    80001510:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001514:	fec42783          	lw	a5,-20(s0)
    80001518:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000151c:	00000073          	ecall
    uint64 volatile result;
    __asm__ volatile("mv %[result], a0" : [result] "=r"(result));
    80001520:	00050793          	mv	a5,a0
    80001524:	fef43023          	sd	a5,-32(s0)
    return result;
    80001528:	fe043503          	ld	a0,-32(s0)
}
    8000152c:	0005051b          	sext.w	a0,a0
    80001530:	01813403          	ld	s0,24(sp)
    80001534:	02010113          	addi	sp,sp,32
    80001538:	00008067          	ret

000000008000153c <_Z4getcv>:

char getc() {
    8000153c:	fe010113          	addi	sp,sp,-32
    80001540:	00813c23          	sd	s0,24(sp)
    80001544:	02010413          	addi	s0,sp,32

    volatile unsigned int trapCode = 0x41;
    80001548:	04100793          	li	a5,65
    8000154c:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001550:	fec42783          	lw	a5,-20(s0)
    80001554:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001558:	00000073          	ecall

    char ret_char;
    __asm__ volatile("mv %[ret_char], a0" : [ret_char] "=r"(ret_char));
    8000155c:	00050513          	mv	a0,a0
    return ret_char;

    //return __getc();

}
    80001560:	0ff57513          	andi	a0,a0,255
    80001564:	01813403          	ld	s0,24(sp)
    80001568:	02010113          	addi	sp,sp,32
    8000156c:	00008067          	ret

0000000080001570 <_Z4putcc>:

void putc(char c) {
    80001570:	fe010113          	addi	sp,sp,-32
    80001574:	00813c23          	sd	s0,24(sp)
    80001578:	02010413          	addi	s0,sp,32
    volatile unsigned int trapCode = 0x42;
    8000157c:	04200793          	li	a5,66
    80001580:	fef42623          	sw	a5,-20(s0)
    __asm__ volatile("mv a1, %[c]" : : [c] "r"(c));
    80001584:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80001588:	fec42783          	lw	a5,-20(s0)
    8000158c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001590:	00000073          	ecall
}
    80001594:	01813403          	ld	s0,24(sp)
    80001598:	02010113          	addi	sp,sp,32
    8000159c:	00008067          	ret

00000000800015a0 <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    800015a0:	fe010113          	addi	sp,sp,-32
    800015a4:	00113c23          	sd	ra,24(sp)
    800015a8:	00813823          	sd	s0,16(sp)
    800015ac:	00913423          	sd	s1,8(sp)
    800015b0:	01213023          	sd	s2,0(sp)
    800015b4:	02010413          	addi	s0,sp,32
    800015b8:	00050493          	mv	s1,a0
    //printStr("\nInside Fibonacci\n");
    if (n == 0 || n == 1) { return n; }
    800015bc:	00100793          	li	a5,1
    800015c0:	02a7f663          	bgeu	a5,a0,800015ec <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    800015c4:	00357793          	andi	a5,a0,3
    800015c8:	02078e63          	beqz	a5,80001604 <_ZL9fibonaccim+0x64>
        //printStr("Yield from Fibonacci\n");
        TCB::yield();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    800015cc:	fff48513          	addi	a0,s1,-1
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	fd0080e7          	jalr	-48(ra) # 800015a0 <_ZL9fibonaccim>
    800015d8:	00050913          	mv	s2,a0
    800015dc:	ffe48513          	addi	a0,s1,-2
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	fc0080e7          	jalr	-64(ra) # 800015a0 <_ZL9fibonaccim>
    800015e8:	00a90533          	add	a0,s2,a0
}
    800015ec:	01813083          	ld	ra,24(sp)
    800015f0:	01013403          	ld	s0,16(sp)
    800015f4:	00813483          	ld	s1,8(sp)
    800015f8:	00013903          	ld	s2,0(sp)
    800015fc:	02010113          	addi	sp,sp,32
    80001600:	00008067          	ret
        TCB::yield();
    80001604:	00001097          	auipc	ra,0x1
    80001608:	a18080e7          	jalr	-1512(ra) # 8000201c <_ZN3TCB5yieldEv>
    8000160c:	fc1ff06f          	j	800015cc <_ZL9fibonaccim+0x2c>

0000000080001610 <_Z11workerBodyAPv>:

void workerBodyA(void* sem)
{
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	01213023          	sd	s2,0(sp)
    80001624:	02010413          	addi	s0,sp,32
    80001628:	00050493          	mv	s1,a0
    uint8 i = 0;
    printString("\nWait from A:");
    8000162c:	00008517          	auipc	a0,0x8
    80001630:	9f450513          	addi	a0,a0,-1548 # 80009020 <CONSOLE_STATUS+0x10>
    80001634:	00004097          	auipc	ra,0x4
    80001638:	d70080e7          	jalr	-656(ra) # 800053a4 <_Z11printStringPKc>
/*    printInteger(sem_trywait((sem_t)sem));
    printStr("\n");*/
    printInt(sem_wait((sem_t)sem));
    8000163c:	00048513          	mv	a0,s1
    80001640:	00000097          	auipc	ra,0x0
    80001644:	dfc080e7          	jalr	-516(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    80001648:	00000613          	li	a2,0
    8000164c:	00a00593          	li	a1,10
    80001650:	00004097          	auipc	ra,0x4
    80001654:	f04080e7          	jalr	-252(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    80001658:	00008517          	auipc	a0,0x8
    8000165c:	f7850513          	addi	a0,a0,-136 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001660:	00004097          	auipc	ra,0x4
    80001664:	d44080e7          	jalr	-700(ra) # 800053a4 <_Z11printStringPKc>
    printString("After sem_wait from A\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	9c850513          	addi	a0,a0,-1592 # 80009030 <CONSOLE_STATUS+0x20>
    80001670:	00004097          	auipc	ra,0x4
    80001674:	d34080e7          	jalr	-716(ra) # 800053a4 <_Z11printStringPKc>
    uint8 i = 0;
    80001678:	00000493          	li	s1,0
    8000167c:	0400006f          	j	800016bc <_Z11workerBodyAPv+0xac>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	9c850513          	addi	a0,a0,-1592 # 80009048 <CONSOLE_STATUS+0x38>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	d1c080e7          	jalr	-740(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    80001690:	00000613          	li	a2,0
    80001694:	00a00593          	li	a1,10
    80001698:	00048513          	mv	a0,s1
    8000169c:	00004097          	auipc	ra,0x4
    800016a0:	eb8080e7          	jalr	-328(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    800016a4:	00008517          	auipc	a0,0x8
    800016a8:	f2c50513          	addi	a0,a0,-212 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800016ac:	00004097          	auipc	ra,0x4
    800016b0:	cf8080e7          	jalr	-776(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 3; i++)
    800016b4:	0014849b          	addiw	s1,s1,1
    800016b8:	0ff4f493          	andi	s1,s1,255
    800016bc:	00200793          	li	a5,2
    800016c0:	fc97f0e3          	bgeu	a5,s1,80001680 <_Z11workerBodyAPv+0x70>
    }

    printString("A: yield\n");
    800016c4:	00008517          	auipc	a0,0x8
    800016c8:	98c50513          	addi	a0,a0,-1652 # 80009050 <CONSOLE_STATUS+0x40>
    800016cc:	00004097          	auipc	ra,0x4
    800016d0:	cd8080e7          	jalr	-808(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800016d4:	00700313          	li	t1,7
    TCB::yield();
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	944080e7          	jalr	-1724(ra) # 8000201c <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800016e0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800016e4:	00008517          	auipc	a0,0x8
    800016e8:	97c50513          	addi	a0,a0,-1668 # 80009060 <CONSOLE_STATUS+0x50>
    800016ec:	00004097          	auipc	ra,0x4
    800016f0:	cb8080e7          	jalr	-840(ra) # 800053a4 <_Z11printStringPKc>
    printInt(t1);
    800016f4:	00000613          	li	a2,0
    800016f8:	00a00593          	li	a1,10
    800016fc:	0009051b          	sext.w	a0,s2
    80001700:	00004097          	auipc	ra,0x4
    80001704:	e54080e7          	jalr	-428(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    80001708:	00008517          	auipc	a0,0x8
    8000170c:	ec850513          	addi	a0,a0,-312 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001710:	00004097          	auipc	ra,0x4
    80001714:	c94080e7          	jalr	-876(ra) # 800053a4 <_Z11printStringPKc>

    uint64 result = fibonacci(5);
    80001718:	00500513          	li	a0,5
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	e84080e7          	jalr	-380(ra) # 800015a0 <_ZL9fibonaccim>
    80001724:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001728:	00008517          	auipc	a0,0x8
    8000172c:	94050513          	addi	a0,a0,-1728 # 80009068 <CONSOLE_STATUS+0x58>
    80001730:	00004097          	auipc	ra,0x4
    80001734:	c74080e7          	jalr	-908(ra) # 800053a4 <_Z11printStringPKc>
    printInt(result);
    80001738:	00000613          	li	a2,0
    8000173c:	00a00593          	li	a1,10
    80001740:	0009051b          	sext.w	a0,s2
    80001744:	00004097          	auipc	ra,0x4
    80001748:	e10080e7          	jalr	-496(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    8000174c:	00008517          	auipc	a0,0x8
    80001750:	e8450513          	addi	a0,a0,-380 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001754:	00004097          	auipc	ra,0x4
    80001758:	c50080e7          	jalr	-944(ra) # 800053a4 <_Z11printStringPKc>
    8000175c:	0400006f          	j	8000179c <_Z11workerBodyAPv+0x18c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001760:	00008517          	auipc	a0,0x8
    80001764:	8e850513          	addi	a0,a0,-1816 # 80009048 <CONSOLE_STATUS+0x38>
    80001768:	00004097          	auipc	ra,0x4
    8000176c:	c3c080e7          	jalr	-964(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    80001770:	00000613          	li	a2,0
    80001774:	00a00593          	li	a1,10
    80001778:	00048513          	mv	a0,s1
    8000177c:	00004097          	auipc	ra,0x4
    80001780:	dd8080e7          	jalr	-552(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    80001784:	00008517          	auipc	a0,0x8
    80001788:	e4c50513          	addi	a0,a0,-436 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    8000178c:	00004097          	auipc	ra,0x4
    80001790:	c18080e7          	jalr	-1000(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001794:	0014849b          	addiw	s1,s1,1
    80001798:	0ff4f493          	andi	s1,s1,255
    8000179c:	00500793          	li	a5,5
    800017a0:	fc97f0e3          	bgeu	a5,s1,80001760 <_Z11workerBodyAPv+0x150>
    }

    TCB::running->setFinished(true);
    800017a4:	0000a797          	auipc	a5,0xa
    800017a8:	f8c7b783          	ld	a5,-116(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017ac:	0007b783          	ld	a5,0(a5)

public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    800017b0:	00100713          	li	a4,1
    800017b4:	02e78423          	sb	a4,40(a5)
    printString("A ending\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	8c050513          	addi	a0,a0,-1856 # 80009078 <CONSOLE_STATUS+0x68>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	be4080e7          	jalr	-1052(ra) # 800053a4 <_Z11printStringPKc>
    thread_exit();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	b88080e7          	jalr	-1144(ra) # 80001350 <_Z11thread_exitv>
    //TCB::yield();
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_Z11workerBodyBPv>:

void workerBodyB(void* sem)
{
    800017e8:	fe010113          	addi	sp,sp,-32
    800017ec:	00113c23          	sd	ra,24(sp)
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	00913423          	sd	s1,8(sp)
    800017f8:	01213023          	sd	s2,0(sp)
    800017fc:	02010413          	addi	s0,sp,32
    80001800:	00050913          	mv	s2,a0
    uint8 i = 10;
    80001804:	00a00493          	li	s1,10
    80001808:	0400006f          	j	80001848 <_Z11workerBodyBPv+0x60>
    for (; i < 13; i++)
    {
        printString("B: i=");
    8000180c:	00008517          	auipc	a0,0x8
    80001810:	87c50513          	addi	a0,a0,-1924 # 80009088 <CONSOLE_STATUS+0x78>
    80001814:	00004097          	auipc	ra,0x4
    80001818:	b90080e7          	jalr	-1136(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    8000181c:	00000613          	li	a2,0
    80001820:	00a00593          	li	a1,10
    80001824:	00048513          	mv	a0,s1
    80001828:	00004097          	auipc	ra,0x4
    8000182c:	d2c080e7          	jalr	-724(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    80001830:	00008517          	auipc	a0,0x8
    80001834:	da050513          	addi	a0,a0,-608 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001838:	00004097          	auipc	ra,0x4
    8000183c:	b6c080e7          	jalr	-1172(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001840:	0014849b          	addiw	s1,s1,1
    80001844:	0ff4f493          	andi	s1,s1,255
    80001848:	00c00793          	li	a5,12
    8000184c:	fc97f0e3          	bgeu	a5,s1,8000180c <_Z11workerBodyBPv+0x24>
    }
    printString("Signal from B: ");
    80001850:	00008517          	auipc	a0,0x8
    80001854:	84050513          	addi	a0,a0,-1984 # 80009090 <CONSOLE_STATUS+0x80>
    80001858:	00004097          	auipc	ra,0x4
    8000185c:	b4c080e7          	jalr	-1204(ra) # 800053a4 <_Z11printStringPKc>
    printInt(sem_signal((sem_t)sem));
    80001860:	00090513          	mv	a0,s2
    80001864:	00000097          	auipc	ra,0x0
    80001868:	c18080e7          	jalr	-1000(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
    8000186c:	00000613          	li	a2,0
    80001870:	00a00593          	li	a1,10
    80001874:	00004097          	auipc	ra,0x4
    80001878:	ce0080e7          	jalr	-800(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    8000187c:	00008517          	auipc	a0,0x8
    80001880:	d5450513          	addi	a0,a0,-684 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001884:	00004097          	auipc	ra,0x4
    80001888:	b20080e7          	jalr	-1248(ra) # 800053a4 <_Z11printStringPKc>
    printString("B: yield\n");
    8000188c:	00008517          	auipc	a0,0x8
    80001890:	81450513          	addi	a0,a0,-2028 # 800090a0 <CONSOLE_STATUS+0x90>
    80001894:	00004097          	auipc	ra,0x4
    80001898:	b10080e7          	jalr	-1264(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000189c:	00500313          	li	t1,5
    TCB::yield();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	77c080e7          	jalr	1916(ra) # 8000201c <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(8);
    800018a8:	00800513          	li	a0,8
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	cf4080e7          	jalr	-780(ra) # 800015a0 <_ZL9fibonaccim>
    800018b4:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    800018b8:	00007517          	auipc	a0,0x7
    800018bc:	7f850513          	addi	a0,a0,2040 # 800090b0 <CONSOLE_STATUS+0xa0>
    800018c0:	00004097          	auipc	ra,0x4
    800018c4:	ae4080e7          	jalr	-1308(ra) # 800053a4 <_Z11printStringPKc>
    printInt(result);
    800018c8:	00000613          	li	a2,0
    800018cc:	00a00593          	li	a1,10
    800018d0:	0009051b          	sext.w	a0,s2
    800018d4:	00004097          	auipc	ra,0x4
    800018d8:	c80080e7          	jalr	-896(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    800018dc:	00008517          	auipc	a0,0x8
    800018e0:	cf450513          	addi	a0,a0,-780 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800018e4:	00004097          	auipc	ra,0x4
    800018e8:	ac0080e7          	jalr	-1344(ra) # 800053a4 <_Z11printStringPKc>
    800018ec:	0400006f          	j	8000192c <_Z11workerBodyBPv+0x144>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800018f0:	00007517          	auipc	a0,0x7
    800018f4:	79850513          	addi	a0,a0,1944 # 80009088 <CONSOLE_STATUS+0x78>
    800018f8:	00004097          	auipc	ra,0x4
    800018fc:	aac080e7          	jalr	-1364(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    80001900:	00000613          	li	a2,0
    80001904:	00a00593          	li	a1,10
    80001908:	00048513          	mv	a0,s1
    8000190c:	00004097          	auipc	ra,0x4
    80001910:	c48080e7          	jalr	-952(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    80001914:	00008517          	auipc	a0,0x8
    80001918:	cbc50513          	addi	a0,a0,-836 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    8000191c:	00004097          	auipc	ra,0x4
    80001920:	a88080e7          	jalr	-1400(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001924:	0014849b          	addiw	s1,s1,1
    80001928:	0ff4f493          	andi	s1,s1,255
    8000192c:	00f00793          	li	a5,15
    80001930:	fc97f0e3          	bgeu	a5,s1,800018f0 <_Z11workerBodyBPv+0x108>
    }

    TCB::running->setFinished(true);
    80001934:	0000a797          	auipc	a5,0xa
    80001938:	dfc7b783          	ld	a5,-516(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000193c:	0007b783          	ld	a5,0(a5)
    80001940:	00100713          	li	a4,1
    80001944:	02e78423          	sb	a4,40(a5)
    printString("B ending\n");
    80001948:	00007517          	auipc	a0,0x7
    8000194c:	77850513          	addi	a0,a0,1912 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001950:	00004097          	auipc	ra,0x4
    80001954:	a54080e7          	jalr	-1452(ra) # 800053a4 <_Z11printStringPKc>
    TCB::yield();
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	6c4080e7          	jalr	1732(ra) # 8000201c <_ZN3TCB5yieldEv>
}
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret

0000000080001978 <_Z11workerBodyCPv>:


void workerBodyC(void* sem)
{
    80001978:	fe010113          	addi	sp,sp,-32
    8000197c:	00113c23          	sd	ra,24(sp)
    80001980:	00813823          	sd	s0,16(sp)
    80001984:	00913423          	sd	s1,8(sp)
    80001988:	01213023          	sd	s2,0(sp)
    8000198c:	02010413          	addi	s0,sp,32
    80001990:	00050493          	mv	s1,a0
    uint8 i = 10;
    printString("\nFirst Wait from C:");
    80001994:	00007517          	auipc	a0,0x7
    80001998:	73c50513          	addi	a0,a0,1852 # 800090d0 <CONSOLE_STATUS+0xc0>
    8000199c:	00004097          	auipc	ra,0x4
    800019a0:	a08080e7          	jalr	-1528(ra) # 800053a4 <_Z11printStringPKc>
    printInt(sem_wait((sem_t)sem));
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	a94080e7          	jalr	-1388(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    800019b0:	00000613          	li	a2,0
    800019b4:	00a00593          	li	a1,10
    800019b8:	00004097          	auipc	ra,0x4
    800019bc:	b9c080e7          	jalr	-1124(ra) # 80005554 <_Z8printIntiii>
    printString("\nSecond Wait from C:");
    800019c0:	00007517          	auipc	a0,0x7
    800019c4:	72850513          	addi	a0,a0,1832 # 800090e8 <CONSOLE_STATUS+0xd8>
    800019c8:	00004097          	auipc	ra,0x4
    800019cc:	9dc080e7          	jalr	-1572(ra) # 800053a4 <_Z11printStringPKc>
    printInt(sem_wait((sem_t)sem));
    800019d0:	00048513          	mv	a0,s1
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	a68080e7          	jalr	-1432(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    800019dc:	00000613          	li	a2,0
    800019e0:	00a00593          	li	a1,10
    800019e4:	00004097          	auipc	ra,0x4
    800019e8:	b70080e7          	jalr	-1168(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    800019ec:	00008517          	auipc	a0,0x8
    800019f0:	be450513          	addi	a0,a0,-1052 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800019f4:	00004097          	auipc	ra,0x4
    800019f8:	9b0080e7          	jalr	-1616(ra) # 800053a4 <_Z11printStringPKc>
    uint8 i = 10;
    800019fc:	00a00493          	li	s1,10
    80001a00:	0400006f          	j	80001a40 <_Z11workerBodyCPv+0xc8>
    for (; i < 13; i++)
    {
        printString("C: i=");
    80001a04:	00007517          	auipc	a0,0x7
    80001a08:	6fc50513          	addi	a0,a0,1788 # 80009100 <CONSOLE_STATUS+0xf0>
    80001a0c:	00004097          	auipc	ra,0x4
    80001a10:	998080e7          	jalr	-1640(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    80001a14:	00000613          	li	a2,0
    80001a18:	00a00593          	li	a1,10
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00004097          	auipc	ra,0x4
    80001a24:	b34080e7          	jalr	-1228(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    80001a28:	00008517          	auipc	a0,0x8
    80001a2c:	ba850513          	addi	a0,a0,-1112 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001a30:	00004097          	auipc	ra,0x4
    80001a34:	974080e7          	jalr	-1676(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a38:	0014849b          	addiw	s1,s1,1
    80001a3c:	0ff4f493          	andi	s1,s1,255
    80001a40:	00c00793          	li	a5,12
    80001a44:	fc97f0e3          	bgeu	a5,s1,80001a04 <_Z11workerBodyCPv+0x8c>
    }

    printString("C: yield\n");
    80001a48:	00007517          	auipc	a0,0x7
    80001a4c:	6c050513          	addi	a0,a0,1728 # 80009108 <CONSOLE_STATUS+0xf8>
    80001a50:	00004097          	auipc	ra,0x4
    80001a54:	954080e7          	jalr	-1708(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a58:	00500313          	li	t1,5
    TCB::yield();
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	5c0080e7          	jalr	1472(ra) # 8000201c <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(12);
    80001a64:	00c00513          	li	a0,12
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	b38080e7          	jalr	-1224(ra) # 800015a0 <_ZL9fibonaccim>
    80001a70:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001a74:	00007517          	auipc	a0,0x7
    80001a78:	6a450513          	addi	a0,a0,1700 # 80009118 <CONSOLE_STATUS+0x108>
    80001a7c:	00004097          	auipc	ra,0x4
    80001a80:	928080e7          	jalr	-1752(ra) # 800053a4 <_Z11printStringPKc>
    printInt(result);
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	0009051b          	sext.w	a0,s2
    80001a90:	00004097          	auipc	ra,0x4
    80001a94:	ac4080e7          	jalr	-1340(ra) # 80005554 <_Z8printIntiii>
    printString("\n");
    80001a98:	00008517          	auipc	a0,0x8
    80001a9c:	b3850513          	addi	a0,a0,-1224 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001aa0:	00004097          	auipc	ra,0x4
    80001aa4:	904080e7          	jalr	-1788(ra) # 800053a4 <_Z11printStringPKc>
    80001aa8:	0400006f          	j	80001ae8 <_Z11workerBodyCPv+0x170>

    for (; i < 16; i++)
    {
        printString("C: i=");
    80001aac:	00007517          	auipc	a0,0x7
    80001ab0:	65450513          	addi	a0,a0,1620 # 80009100 <CONSOLE_STATUS+0xf0>
    80001ab4:	00004097          	auipc	ra,0x4
    80001ab8:	8f0080e7          	jalr	-1808(ra) # 800053a4 <_Z11printStringPKc>
        printInt(i);
    80001abc:	00000613          	li	a2,0
    80001ac0:	00a00593          	li	a1,10
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00004097          	auipc	ra,0x4
    80001acc:	a8c080e7          	jalr	-1396(ra) # 80005554 <_Z8printIntiii>
        printString("\n");
    80001ad0:	00008517          	auipc	a0,0x8
    80001ad4:	b0050513          	addi	a0,a0,-1280 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80001ad8:	00004097          	auipc	ra,0x4
    80001adc:	8cc080e7          	jalr	-1844(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ae0:	0014849b          	addiw	s1,s1,1
    80001ae4:	0ff4f493          	andi	s1,s1,255
    80001ae8:	00f00793          	li	a5,15
    80001aec:	fc97f0e3          	bgeu	a5,s1,80001aac <_Z11workerBodyCPv+0x134>
    }

    TCB::running->setFinished(true);
    80001af0:	0000a797          	auipc	a5,0xa
    80001af4:	c407b783          	ld	a5,-960(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001af8:	0007b783          	ld	a5,0(a5)
    80001afc:	00100713          	li	a4,1
    80001b00:	02e78423          	sb	a4,40(a5)
    printString("C ending\n");
    80001b04:	00007517          	auipc	a0,0x7
    80001b08:	62450513          	addi	a0,a0,1572 # 80009128 <CONSOLE_STATUS+0x118>
    80001b0c:	00004097          	auipc	ra,0x4
    80001b10:	898080e7          	jalr	-1896(ra) # 800053a4 <_Z11printStringPKc>
    TCB::yield();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	508080e7          	jalr	1288(ra) # 8000201c <_ZN3TCB5yieldEv>
}
    80001b1c:	01813083          	ld	ra,24(sp)
    80001b20:	01013403          	ld	s0,16(sp)
    80001b24:	00813483          	ld	s1,8(sp)
    80001b28:	00013903          	ld	s2,0(sp)
    80001b2c:	02010113          	addi	sp,sp,32
    80001b30:	00008067          	ret

0000000080001b34 <_Z13dummyFunctionPv>:
#include "../h/syscall_cpp.hpp"


extern void userMain();

void dummyFunction(void* ) {
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00113423          	sd	ra,8(sp)
    80001b3c:	00813023          	sd	s0,0(sp)
    80001b40:	01010413          	addi	s0,sp,16
    userMain();
    80001b44:	00004097          	auipc	ra,0x4
    80001b48:	f28080e7          	jalr	-216(ra) # 80005a6c <_Z8userMainv>
}
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	01010113          	addi	sp,sp,16
    80001b58:	00008067          	ret

0000000080001b5c <main>:

int main() {
    80001b5c:	fe010113          	addi	sp,sp,-32
    80001b60:	00113c23          	sd	ra,24(sp)
    80001b64:	00813823          	sd	s0,16(sp)
    80001b68:	02010413          	addi	s0,sp,32


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001b6c:	0000a797          	auipc	a5,0xa
    80001b70:	bac7b783          	ld	a5,-1108(a5) # 8000b718 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001b74:	10579073          	csrw	stvec,a5
    }*/



    TCB *threads[2];
    threads[0] = TCB::createThread(nullptr,nullptr);
    80001b78:	00000593          	li	a1,0
    80001b7c:	00000513          	li	a0,0
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	3c4080e7          	jalr	964(ra) # 80001f44 <_ZN3TCB12createThreadEPFvPvES0_>
    80001b88:	fea43023          	sd	a0,-32(s0)
    TCB::running = threads[0];
    80001b8c:	0000a797          	auipc	a5,0xa
    80001b90:	ba47b783          	ld	a5,-1116(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b94:	00a7b023          	sd	a0,0(a5)


    thread_create(&threads[1], dummyFunction, nullptr);
    80001b98:	00000613          	li	a2,0
    80001b9c:	00000597          	auipc	a1,0x0
    80001ba0:	f9858593          	addi	a1,a1,-104 # 80001b34 <_Z13dummyFunctionPv>
    80001ba4:	fe840513          	addi	a0,s0,-24
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	718080e7          	jalr	1816(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>

    //thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!threads[1]->isFinished()) {
    80001bb0:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const { return finished; }
    80001bb4:	0287c783          	lbu	a5,40(a5)
    80001bb8:	00079863          	bnez	a5,80001bc8 <main+0x6c>
        //printString("\nWTF\n");
        thread_dispatch();
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	7d0080e7          	jalr	2000(ra) # 8000138c <_Z15thread_dispatchv>
    80001bc4:	fedff06f          	j	80001bb0 <main+0x54>

    }

    printString("Vratio sam se u main\n");
    80001bc8:	00007517          	auipc	a0,0x7
    80001bcc:	57050513          	addi	a0,a0,1392 # 80009138 <CONSOLE_STATUS+0x128>
    80001bd0:	00003097          	auipc	ra,0x3
    80001bd4:	7d4080e7          	jalr	2004(ra) # 800053a4 <_Z11printStringPKc>
    return 0;

    printString("\nFinished\n");

    return 0;
}
    80001bd8:	00000513          	li	a0,0
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret

0000000080001bec <_ZN11MySemaphore8sem_openEi>:
#include "../h/syscall_c.hpp"

/*MySemaphore* MySemaphore::init_sem(int value) {
    return new MySemaphore(value);
}*/
MySemaphore *MySemaphore::sem_open(int value) {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	00913423          	sd	s1,8(sp)
    80001bfc:	02010413          	addi	s0,sp,32
    80001c00:	00050493          	mv	s1,a0

    void *operator new(size_t n)
    {
        //return __mem_alloc(n);
        //printInteger(n);
        return MemoryAllocator::mem_alloc(n);
    80001c04:	01800513          	li	a0,24
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	0a0080e7          	jalr	160(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001c10:	00053023          	sd	zero,0(a0)
    80001c14:	00053423          	sd	zero,8(a0)
        MemoryAllocator::mem_free(p);
    }

public:
    MySemaphore(int val = 1) {
        this->val = val;
    80001c18:	00952a23          	sw	s1,20(a0)
        this->open = true;
    80001c1c:	00100713          	li	a4,1
    80001c20:	00e50823          	sb	a4,16(a0)
    //return init_sem(value);
    return new MySemaphore(value);
}
    80001c24:	01813083          	ld	ra,24(sp)
    80001c28:	01013403          	ld	s0,16(sp)
    80001c2c:	00813483          	ld	s1,8(sp)
    80001c30:	02010113          	addi	sp,sp,32
    80001c34:	00008067          	ret

0000000080001c38 <_ZN11MySemaphore9sem_closeEv>:



int MySemaphore::sem_close() {
    80001c38:	fe010113          	addi	sp,sp,-32
    80001c3c:	00113c23          	sd	ra,24(sp)
    80001c40:	00813823          	sd	s0,16(sp)
    80001c44:	00913423          	sd	s1,8(sp)
    80001c48:	01213023          	sd	s2,0(sp)
    80001c4c:	02010413          	addi	s0,sp,32
    80001c50:	00050493          	mv	s1,a0
    if (!this->open) {
    80001c54:	01054783          	lbu	a5,16(a0)
    80001c58:	02079663          	bnez	a5,80001c84 <_ZN11MySemaphore9sem_closeEv+0x4c>
        return -1;
    80001c5c:	fff00513          	li	a0,-1
    80001c60:	0480006f          	j	80001ca8 <_ZN11MySemaphore9sem_closeEv+0x70>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001c64:	0004b423          	sd	zero,8(s1)

        T *ret = elem->data;
    80001c68:	00053903          	ld	s2,0(a0)
        MemoryAllocator::mem_free(p);
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	eec080e7          	jalr	-276(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>

    bool isBlocked() const { return blocked; }
    void setBlocked(bool value) { blocked = value; }
    80001c74:	020904a3          	sb	zero,41(s2)
    }
    while (this->blocked_threads.peekFirst()) {
        TCB* thread = this->blocked_threads.removeFirst();
        thread->setBlocked(false);
        Scheduler::put(thread);
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	d30080e7          	jalr	-720(ra) # 800029ac <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001c84:	0004b503          	ld	a0,0(s1)
    80001c88:	00050e63          	beqz	a0,80001ca4 <_ZN11MySemaphore9sem_closeEv+0x6c>
        return head->data;
    80001c8c:	00053783          	ld	a5,0(a0)
    while (this->blocked_threads.peekFirst()) {
    80001c90:	02078863          	beqz	a5,80001cc0 <_ZN11MySemaphore9sem_closeEv+0x88>
        head = head->next;
    80001c94:	00853783          	ld	a5,8(a0)
    80001c98:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001c9c:	fc0796e3          	bnez	a5,80001c68 <_ZN11MySemaphore9sem_closeEv+0x30>
    80001ca0:	fc5ff06f          	j	80001c64 <_ZN11MySemaphore9sem_closeEv+0x2c>
    }
    return 0;
    80001ca4:	00000513          	li	a0,0
}
    80001ca8:	01813083          	ld	ra,24(sp)
    80001cac:	01013403          	ld	s0,16(sp)
    80001cb0:	00813483          	ld	s1,8(sp)
    80001cb4:	00013903          	ld	s2,0(sp)
    80001cb8:	02010113          	addi	sp,sp,32
    80001cbc:	00008067          	ret
    return 0;
    80001cc0:	00000513          	li	a0,0
    80001cc4:	fe5ff06f          	j	80001ca8 <_ZN11MySemaphore9sem_closeEv+0x70>

0000000080001cc8 <_ZN11MySemaphore11sem_trywaitEv>:

int MySemaphore::sem_trywait() {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00813423          	sd	s0,8(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    if (!this->open) {
    80001cd4:	01054783          	lbu	a5,16(a0)
    80001cd8:	02078263          	beqz	a5,80001cfc <_ZN11MySemaphore11sem_trywaitEv+0x34>
        return -1;
    }
    if (this->val - 1 < 0) {
    80001cdc:	01452783          	lw	a5,20(a0)
    80001ce0:	00f05a63          	blez	a5,80001cf4 <_ZN11MySemaphore11sem_trywaitEv+0x2c>
        return 0;
    } else {
        return 1;
    80001ce4:	00100513          	li	a0,1
    }
}
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret
        return 0;
    80001cf4:	00000513          	li	a0,0
    80001cf8:	ff1ff06f          	j	80001ce8 <_ZN11MySemaphore11sem_trywaitEv+0x20>
        return -1;
    80001cfc:	fff00513          	li	a0,-1
    80001d00:	fe9ff06f          	j	80001ce8 <_ZN11MySemaphore11sem_trywaitEv+0x20>

0000000080001d04 <_ZN11MySemaphore8sem_waitEv>:

int MySemaphore::sem_wait() {
    //if this sem is not for further usage
    if(!this->open) {
    80001d04:	01054783          	lbu	a5,16(a0)
    80001d08:	0a078863          	beqz	a5,80001db8 <_ZN11MySemaphore8sem_waitEv+0xb4>
int MySemaphore::sem_wait() {
    80001d0c:	fe010113          	addi	sp,sp,-32
    80001d10:	00113c23          	sd	ra,24(sp)
    80001d14:	00813823          	sd	s0,16(sp)
    80001d18:	00913423          	sd	s1,8(sp)
    80001d1c:	01213023          	sd	s2,0(sp)
    80001d20:	02010413          	addi	s0,sp,32
    80001d24:	00050493          	mv	s1,a0
        return -1;
    }
    if (--this->val < 0) {
    80001d28:	01452783          	lw	a5,20(a0)
    80001d2c:	fff7879b          	addiw	a5,a5,-1
    80001d30:	00f52a23          	sw	a5,20(a0)
    80001d34:	02079713          	slli	a4,a5,0x20
    80001d38:	02074063          	bltz	a4,80001d58 <_ZN11MySemaphore8sem_waitEv+0x54>
        if (!this->open) {
            return  -2;
        }

    }
    return 0;
    80001d3c:	00000513          	li	a0,0
}
    80001d40:	01813083          	ld	ra,24(sp)
    80001d44:	01013403          	ld	s0,16(sp)
    80001d48:	00813483          	ld	s1,8(sp)
    80001d4c:	00013903          	ld	s2,0(sp)
    80001d50:	02010113          	addi	sp,sp,32
    80001d54:	00008067          	ret
        if(!TCB::running) return -2;
    80001d58:	0000a797          	auipc	a5,0xa
    80001d5c:	9d87b783          	ld	a5,-1576(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d60:	0007b903          	ld	s2,0(a5)
    80001d64:	04090e63          	beqz	s2,80001dc0 <_ZN11MySemaphore8sem_waitEv+0xbc>
    80001d68:	00100793          	li	a5,1
    80001d6c:	02f904a3          	sb	a5,41(s2)
        Elem *elem = (Elem*) MemoryAllocator::mem_alloc(sizeof(Elem));
    80001d70:	01000513          	li	a0,16
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	f34080e7          	jalr	-204(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    80001d7c:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    80001d80:	00053423          	sd	zero,8(a0)
        if (tail)
    80001d84:	0084b783          	ld	a5,8(s1)
    80001d88:	02078263          	beqz	a5,80001dac <_ZN11MySemaphore8sem_waitEv+0xa8>
            tail->next = elem;
    80001d8c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001d90:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	308080e7          	jalr	776(ra) # 8000209c <_ZN3TCB8dispatchEv>
        if (!this->open) {
    80001d9c:	0104c783          	lbu	a5,16(s1)
    80001da0:	02078463          	beqz	a5,80001dc8 <_ZN11MySemaphore8sem_waitEv+0xc4>
    return 0;
    80001da4:	00000513          	li	a0,0
    80001da8:	f99ff06f          	j	80001d40 <_ZN11MySemaphore8sem_waitEv+0x3c>
            head = tail = elem;
    80001dac:	00a4b423          	sd	a0,8(s1)
    80001db0:	00a4b023          	sd	a0,0(s1)
    80001db4:	fe1ff06f          	j	80001d94 <_ZN11MySemaphore8sem_waitEv+0x90>
        return -1;
    80001db8:	fff00513          	li	a0,-1
}
    80001dbc:	00008067          	ret
        if(!TCB::running) return -2;
    80001dc0:	ffe00513          	li	a0,-2
    80001dc4:	f7dff06f          	j	80001d40 <_ZN11MySemaphore8sem_waitEv+0x3c>
            return  -2;
    80001dc8:	ffe00513          	li	a0,-2
    80001dcc:	f75ff06f          	j	80001d40 <_ZN11MySemaphore8sem_waitEv+0x3c>

0000000080001dd0 <_ZN11MySemaphore10sem_signalEv>:
int MySemaphore::sem_signal() {
    //if this sem is not for further usage
    if (!this->open) {
    80001dd0:	01054703          	lbu	a4,16(a0)
    80001dd4:	08070863          	beqz	a4,80001e64 <_ZN11MySemaphore10sem_signalEv+0x94>
    80001dd8:	00050793          	mv	a5,a0
        return -1;
    }
    if (this->val++ < 0) {
    80001ddc:	01452703          	lw	a4,20(a0)
    80001de0:	0017069b          	addiw	a3,a4,1
    80001de4:	00d52a23          	sw	a3,20(a0)
    80001de8:	00074663          	bltz	a4,80001df4 <_ZN11MySemaphore10sem_signalEv+0x24>
        }
        unblocked_thread->setBlocked(false);
        Scheduler::put(unblocked_thread);
    }

    return 0;
    80001dec:	00000513          	li	a0,0
    80001df0:	00008067          	ret
        if (!head) { return 0; }
    80001df4:	00053503          	ld	a0,0(a0)
    80001df8:	06050a63          	beqz	a0,80001e6c <_ZN11MySemaphore10sem_signalEv+0x9c>
int MySemaphore::sem_signal() {
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	02010413          	addi	s0,sp,32
        head = head->next;
    80001e10:	00853703          	ld	a4,8(a0)
    80001e14:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80001e18:	02070e63          	beqz	a4,80001e54 <_ZN11MySemaphore10sem_signalEv+0x84>
        T *ret = elem->data;
    80001e1c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	d38080e7          	jalr	-712(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>
        if(!unblocked_thread) {
    80001e28:	02048a63          	beqz	s1,80001e5c <_ZN11MySemaphore10sem_signalEv+0x8c>
    80001e2c:	020484a3          	sb	zero,41(s1)
        Scheduler::put(unblocked_thread);
    80001e30:	00048513          	mv	a0,s1
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	b78080e7          	jalr	-1160(ra) # 800029ac <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001e3c:	00000513          	li	a0,0
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret
        if (!head) { tail = 0; }
    80001e54:	0007b423          	sd	zero,8(a5)
    80001e58:	fc5ff06f          	j	80001e1c <_ZN11MySemaphore10sem_signalEv+0x4c>
            return -1;
    80001e5c:	fff00513          	li	a0,-1
    80001e60:	fe1ff06f          	j	80001e40 <_ZN11MySemaphore10sem_signalEv+0x70>
        return -1;
    80001e64:	fff00513          	li	a0,-1
    80001e68:	00008067          	ret
            return -1;
    80001e6c:	fff00513          	li	a0,-1
}
    80001e70:	00008067          	ret

0000000080001e74 <_ZN3TCB12createThreadEPFvPvEPmS0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, uint64* stack, void* arg)
{
    80001e74:	fd010113          	addi	sp,sp,-48
    80001e78:	02113423          	sd	ra,40(sp)
    80001e7c:	02813023          	sd	s0,32(sp)
    80001e80:	00913c23          	sd	s1,24(sp)
    80001e84:	01213823          	sd	s2,16(sp)
    80001e88:	01313423          	sd	s3,8(sp)
    80001e8c:	01413023          	sd	s4,0(sp)
    80001e90:	03010413          	addi	s0,sp,48
    80001e94:	00050993          	mv	s3,a0
    80001e98:	00058913          	mv	s2,a1
    80001e9c:	00060a13          	mv	s4,a2
        return MemoryAllocator::mem_alloc(n);
    80001ea0:	03800513          	li	a0,56
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	e04080e7          	jalr	-508(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
    80001eac:	00050493          	mv	s1,a0
                     stack != nullptr ? ((uint64) &stack[DEFAULT_STACK_SIZE  / 8]) : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            blocked(false),
            arg(arg)
    80001eb0:	01353023          	sd	s3,0(a0)
    80001eb4:	01253423          	sd	s2,8(a0)
    80001eb8:	00000797          	auipc	a5,0x0
    80001ebc:	18878793          	addi	a5,a5,392 # 80002040 <_ZN3TCB13threadWrapperEv>
    80001ec0:	00f53823          	sd	a5,16(a0)
                     stack != nullptr ? ((uint64) &stack[DEFAULT_STACK_SIZE  / 8]) : 0
    80001ec4:	02090c63          	beqz	s2,80001efc <_ZN3TCB12createThreadEPFvPvEPmS0_+0x88>
    80001ec8:	000015b7          	lui	a1,0x1
    80001ecc:	00b90933          	add	s2,s2,a1
            arg(arg)
    80001ed0:	0124bc23          	sd	s2,24(s1)
    80001ed4:	00200793          	li	a5,2
    80001ed8:	02f4b023          	sd	a5,32(s1)
    80001edc:	02048423          	sb	zero,40(s1)
    80001ee0:	020484a3          	sb	zero,41(s1)
    80001ee4:	0344b823          	sd	s4,48(s1)
    {
        if (body != nullptr) {
    80001ee8:	02098c63          	beqz	s3,80001f20 <_ZN3TCB12createThreadEPFvPvEPmS0_+0xac>
            Scheduler::put(this);
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	abc080e7          	jalr	-1348(ra) # 800029ac <_ZN9Scheduler3putEP3TCB>
    80001ef8:	0280006f          	j	80001f20 <_ZN3TCB12createThreadEPFvPvEPmS0_+0xac>
                     stack != nullptr ? ((uint64) &stack[DEFAULT_STACK_SIZE  / 8]) : 0
    80001efc:	00000913          	li	s2,0
    80001f00:	fd1ff06f          	j	80001ed0 <_ZN3TCB12createThreadEPFvPvEPmS0_+0x5c>
    80001f04:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(p);
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	c4c080e7          	jalr	-948(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>
    80001f14:	00090513          	mv	a0,s2
    80001f18:	0000b097          	auipc	ra,0xb
    80001f1c:	9e0080e7          	jalr	-1568(ra) # 8000c8f8 <_Unwind_Resume>
    return (TCB*)new TCB(body, TIME_SLICE, stack, arg);

    //return (TCB*)new TCB();
}
    80001f20:	00048513          	mv	a0,s1
    80001f24:	02813083          	ld	ra,40(sp)
    80001f28:	02013403          	ld	s0,32(sp)
    80001f2c:	01813483          	ld	s1,24(sp)
    80001f30:	01013903          	ld	s2,16(sp)
    80001f34:	00813983          	ld	s3,8(sp)
    80001f38:	00013a03          	ld	s4,0(sp)
    80001f3c:	03010113          	addi	sp,sp,48
    80001f40:	00008067          	ret

0000000080001f44 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::createThread(Body body, void* arg)
{
    80001f44:	fd010113          	addi	sp,sp,-48
    80001f48:	02113423          	sd	ra,40(sp)
    80001f4c:	02813023          	sd	s0,32(sp)
    80001f50:	00913c23          	sd	s1,24(sp)
    80001f54:	01213823          	sd	s2,16(sp)
    80001f58:	01313423          	sd	s3,8(sp)
    80001f5c:	03010413          	addi	s0,sp,48
    80001f60:	00050913          	mv	s2,a0
    80001f64:	00058993          	mv	s3,a1
        return MemoryAllocator::mem_alloc(n);
    80001f68:	03800513          	li	a0,56
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	d3c080e7          	jalr	-708(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
    80001f74:	00050493          	mv	s1,a0
                     stack != nullptr ? ((uint64) &stack[STACK_SIZE]) : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            blocked(false),
            arg(arg)
    80001f78:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint8[STACK_SIZE] : nullptr),
    80001f7c:	00090a63          	beqz	s2,80001f90 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001f80:	40000513          	li	a0,1024
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	1ec080e7          	jalr	492(ra) # 80002170 <_Znam>
    80001f8c:	0080006f          	j	80001f94 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001f90:	00000513          	li	a0,0
            arg(arg)
    80001f94:	00a4b423          	sd	a0,8(s1)
    80001f98:	00000797          	auipc	a5,0x0
    80001f9c:	0a878793          	addi	a5,a5,168 # 80002040 <_ZN3TCB13threadWrapperEv>
    80001fa0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? ((uint64) &stack[STACK_SIZE]) : 0
    80001fa4:	02050a63          	beqz	a0,80001fd8 <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001fa8:	40050793          	addi	a5,a0,1024
            arg(arg)
    80001fac:	00f4bc23          	sd	a5,24(s1)
    80001fb0:	00200793          	li	a5,2
    80001fb4:	02f4b023          	sd	a5,32(s1)
    80001fb8:	02048423          	sb	zero,40(s1)
    80001fbc:	020484a3          	sb	zero,41(s1)
    80001fc0:	0334b823          	sd	s3,48(s1)
    {
        if (body != nullptr) {
    80001fc4:	02090c63          	beqz	s2,80001ffc <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
            Scheduler::put(this);
    80001fc8:	00048513          	mv	a0,s1
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	9e0080e7          	jalr	-1568(ra) # 800029ac <_ZN9Scheduler3putEP3TCB>
    80001fd4:	0280006f          	j	80001ffc <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
                     stack != nullptr ? ((uint64) &stack[STACK_SIZE]) : 0
    80001fd8:	00000793          	li	a5,0
    80001fdc:	fd1ff06f          	j	80001fac <_ZN3TCB12createThreadEPFvPvES0_+0x68>
    80001fe0:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(p);
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	b70080e7          	jalr	-1168(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>
    80001ff0:	00090513          	mv	a0,s2
    80001ff4:	0000b097          	auipc	ra,0xb
    80001ff8:	904080e7          	jalr	-1788(ra) # 8000c8f8 <_Unwind_Resume>
    return (TCB*)new TCB(body, TIME_SLICE, arg);

    //return (TCB*)new TCB();
}
    80001ffc:	00048513          	mv	a0,s1
    80002000:	02813083          	ld	ra,40(sp)
    80002004:	02013403          	ld	s0,32(sp)
    80002008:	01813483          	ld	s1,24(sp)
    8000200c:	01013903          	ld	s2,16(sp)
    80002010:	00813983          	ld	s3,8(sp)
    80002014:	03010113          	addi	sp,sp,48
    80002018:	00008067          	ret

000000008000201c <_ZN3TCB5yieldEv>:


void TCB::yield()
{
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    int trapCode = 0x13;
    __asm__ volatile("mv a0, %[trapCode]" : : [trapCode] "r"(trapCode));
    80002028:	01300793          	li	a5,19
    8000202c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002030:	00000073          	ecall
}
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN3TCB13threadWrapperEv>:
//    printString("in dispatch after get from Scheduler");
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80002040:	fe010113          	addi	sp,sp,-32
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	00813823          	sd	s0,16(sp)
    8000204c:	00913423          	sd	s1,8(sp)
    80002050:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002054:	00000097          	auipc	ra,0x0
    80002058:	4d4080e7          	jalr	1236(ra) # 80002528 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000205c:	00009497          	auipc	s1,0x9
    80002060:	73448493          	addi	s1,s1,1844 # 8000b790 <_ZN3TCB7runningE>
    80002064:	0004b783          	ld	a5,0(s1)
    80002068:	0007b703          	ld	a4,0(a5)
    8000206c:	0307b503          	ld	a0,48(a5)
    80002070:	000700e7          	jalr	a4
    running->setFinished(true);
    80002074:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002078:	00100713          	li	a4,1
    8000207c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80002080:	00000097          	auipc	ra,0x0
    80002084:	f9c080e7          	jalr	-100(ra) # 8000201c <_ZN3TCB5yieldEv>
}
    80002088:	01813083          	ld	ra,24(sp)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	00813483          	ld	s1,8(sp)
    80002094:	02010113          	addi	sp,sp,32
    80002098:	00008067          	ret

000000008000209c <_ZN3TCB8dispatchEv>:
{
    8000209c:	fe010113          	addi	sp,sp,-32
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800020b0:	00009497          	auipc	s1,0x9
    800020b4:	6e04b483          	ld	s1,1760(s1) # 8000b790 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800020b8:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isBlocked()) {
    800020bc:	00079663          	bnez	a5,800020c8 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    800020c0:	0294c783          	lbu	a5,41(s1)
    800020c4:	02078c63          	beqz	a5,800020fc <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	87c080e7          	jalr	-1924(ra) # 80002944 <_ZN9Scheduler3getEv>
    800020d0:	00009797          	auipc	a5,0x9
    800020d4:	6ca7b023          	sd	a0,1728(a5) # 8000b790 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800020d8:	01050593          	addi	a1,a0,16
    800020dc:	01048513          	addi	a0,s1,16
    800020e0:	fffff097          	auipc	ra,0xfffff
    800020e4:	130080e7          	jalr	304(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800020e8:	01813083          	ld	ra,24(sp)
    800020ec:	01013403          	ld	s0,16(sp)
    800020f0:	00813483          	ld	s1,8(sp)
    800020f4:	02010113          	addi	sp,sp,32
    800020f8:	00008067          	ret
        Scheduler::put(old);
    800020fc:	00048513          	mv	a0,s1
    80002100:	00001097          	auipc	ra,0x1
    80002104:	8ac080e7          	jalr	-1876(ra) # 800029ac <_ZN9Scheduler3putEP3TCB>
    80002108:	fc1ff06f          	j	800020c8 <_ZN3TCB8dispatchEv+0x2c>

000000008000210c <_ZN3TCB10killThreadEv>:

int TCB::killThread() {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    void setFinished(bool value) { finished = value; }
    8000211c:	00009797          	auipc	a5,0x9
    80002120:	6747b783          	ld	a5,1652(a5) # 8000b790 <_ZN3TCB7runningE>
    80002124:	00100713          	li	a4,1
    80002128:	02e78423          	sb	a4,40(a5)
    TCB::running->setFinished(true);
    if (!running->isFinished()) return -1;
    //TCB::dispatch();
    TCB::yield();
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	ef0080e7          	jalr	-272(ra) # 8000201c <_ZN3TCB5yieldEv>
    //freeing space
    //int status =  MemoryAllocator::mem_free(TCB::running);
    //TCB::running = nullptr;
    return 0;
}
    80002134:	00000513          	li	a0,0
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    //return __mem_alloc(n);
    //printInteger(n);
    //return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	0ec080e7          	jalr	236(ra) # 80001244 <_Z9mem_allocm>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_Znam>:

void *operator new[](size_t n)
{
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    //return __mem_alloc(n);
    //printStr("\nSize passed to the new operator");
    //printInteger(n);
    //return MemoryAllocator::mem_alloc(n);
    return mem_alloc(n);
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	0c4080e7          	jalr	196(ra) # 80001244 <_Z9mem_allocm>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	0e0080e7          	jalr	224(ra) # 80001288 <_Z8mem_freePv>
   // MemoryAllocator::mem_free(p);
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
   mem_free(p);
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	0b8080e7          	jalr	184(ra) # 80001288 <_Z8mem_freePv>
    //MemoryAllocator::mem_free(p);
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00113423          	sd	ra,8(sp)
    800021f0:	00813023          	sd	s0,0(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	00009797          	auipc	a5,0x9
    800021fc:	33078793          	addi	a5,a5,816 # 8000b528 <_ZTV6Thread+0x10>
    80002200:	00f53023          	sd	a5,0(a0)
    //mem_free(this->myHandle);
    //delete this->myHandle;            //doesnt work, calling destructor,
    operator delete (this->myHandle);   //and operator delete bypasses it
    80002204:	00853503          	ld	a0,8(a0)
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	f90080e7          	jalr	-112(ra) # 80002198 <_ZdlPv>
}
    80002210:	00813083          	ld	ra,8(sp)
    80002214:	00013403          	ld	s0,0(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002220:	fe010113          	addi	sp,sp,-32
    80002224:	00113c23          	sd	ra,24(sp)
    80002228:	00813823          	sd	s0,16(sp)
    8000222c:	00913423          	sd	s1,8(sp)
    80002230:	02010413          	addi	s0,sp,32
    80002234:	00050493          	mv	s1,a0
}
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	fb0080e7          	jalr	-80(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80002240:	00048513          	mv	a0,s1
    80002244:	00000097          	auipc	ra,0x0
    80002248:	f54080e7          	jalr	-172(ra) # 80002198 <_ZdlPv>
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret

0000000080002260 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    80002270:	00009797          	auipc	a5,0x9
    80002274:	2e078793          	addi	a5,a5,736 # 8000b550 <_ZTV9Semaphore+0x10>
    80002278:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    8000227c:	00853503          	ld	a0,8(a0)
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	17c080e7          	jalr	380(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00113c23          	sd	ra,24(sp)
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	02010413          	addi	s0,sp,32
    800022ac:	00050493          	mv	s1,a0
}
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	fb0080e7          	jalr	-80(ra) # 80002260 <_ZN9SemaphoreD1Ev>
    800022b8:	00048513          	mv	a0,s1
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	edc080e7          	jalr	-292(ra) # 80002198 <_ZdlPv>
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	00009797          	auipc	a5,0x9
    800022ec:	24078793          	addi	a5,a5,576 # 8000b528 <_ZTV6Thread+0x10>
    800022f0:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800022f4:	00850513          	addi	a0,a0,8
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	fc8080e7          	jalr	-56(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_ZN6Thread5startEv>:
int Thread::start() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    thread_create(&this->myHandle, body, arg);
    80002320:	01853603          	ld	a2,24(a0)
    80002324:	01053583          	ld	a1,16(a0)
    80002328:	00850513          	addi	a0,a0,8
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	f94080e7          	jalr	-108(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002334:	00000513          	li	a0,0
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	034080e7          	jalr	52(ra) # 8000138c <_Z15thread_dispatchv>
}
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
}
    8000237c:	00000513          	li	a0,0
    80002380:	00813403          	ld	s0,8(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00813423          	sd	s0,8(sp)
    80002394:	01010413          	addi	s0,sp,16
    80002398:	00009797          	auipc	a5,0x9
    8000239c:	19078793          	addi	a5,a5,400 # 8000b528 <_ZTV6Thread+0x10>
    800023a0:	00f53023          	sd	a5,0(a0)
    this->body = Thread::thread_wrapper;    //implicit conversion, the same as: this->body = &Thread::thread_wrapper;
    800023a4:	00000797          	auipc	a5,0x0
    800023a8:	15078793          	addi	a5,a5,336 # 800024f4 <_ZN6Thread14thread_wrapperEPv>
    800023ac:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    800023b0:	00a53c23          	sd	a0,24(a0)
}
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00009797          	auipc	a5,0x9
    800023d4:	18078793          	addi	a5,a5,384 # 8000b550 <_ZTV9Semaphore+0x10>
    800023d8:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800023dc:	00850513          	addi	a0,a0,8
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	fd8080e7          	jalr	-40(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    sem_wait(this->myHandle);
    80002408:	00853503          	ld	a0,8(a0)
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	030080e7          	jalr	48(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    return 0;
}
    80002414:	00000513          	li	a0,0
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16
    sem_signal(this->myHandle);
    80002438:	00853503          	ld	a0,8(a0)
    8000243c:	fffff097          	auipc	ra,0xfffff
    80002440:	040080e7          	jalr	64(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
    return 0;
}
    80002444:	00000513          	li	a0,0
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    sem_trywait(this->myHandle);
    80002468:	00853503          	ld	a0,8(a0)
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	050080e7          	jalr	80(ra) # 800014bc <_Z11sem_trywaitP11MySemaphore>
    return 0;
}
    80002474:	00000513          	li	a0,0
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN7Console4getcEv>:

char Console::getc() {
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00113423          	sd	ra,8(sp)
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	01010413          	addi	s0,sp,16
    ::getc();
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	0a4080e7          	jalr	164(ra) # 8000153c <_Z4getcv>
    return 0;
}
    800024a0:	00000513          	li	a0,0
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	0ac080e7          	jalr	172(ra) # 80001570 <_Z4putcc>
}
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN6Thread14thread_wrapperEPv>:
    void (*body)(void*);
    void* arg;

    static void thread_wrapper(void* thread) {
        Thread* t = (Thread*) thread;
        if(t) {
    800024f4:	02050863          	beqz	a0,80002524 <_ZN6Thread14thread_wrapperEPv+0x30>
    static void thread_wrapper(void* thread) {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00113423          	sd	ra,8(sp)
    80002500:	00813023          	sd	s0,0(sp)
    80002504:	01010413          	addi	s0,sp,16
            ((Thread*)t)->run();
    80002508:	00053783          	ld	a5,0(a0)
    8000250c:	0107b783          	ld	a5,16(a5)
    80002510:	000780e7          	jalr	a5
        }
    }
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
    80002524:	00008067          	ret

0000000080002528 <_ZN5Riscv10popSppSpieEv>:
#include "../test/printing.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00813423          	sd	s0,8(sp)
    80002530:	01010413          	addi	s0,sp,16
    if(TCB::running->body) {
    80002534:	00009797          	auipc	a5,0x9
    80002538:	1fc7b783          	ld	a5,508(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000253c:	0007b783          	ld	a5,0(a5)
    80002540:	0007b783          	ld	a5,0(a5)
    80002544:	00078663          	beqz	a5,80002550 <_ZN5Riscv10popSppSpieEv+0x28>
        __asm__ volatile("csrc sstatus, %0" :: "r"(SSTATUS_SPP));
    80002548:	10000793          	li	a5,256
    8000254c:	1007b073          	csrc	sstatus,a5
    }

    __asm__ volatile ("csrw sepc, ra");
    80002550:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002554:	10200073          	sret

}
    80002558:	00813403          	ld	s0,8(sp)
    8000255c:	01010113          	addi	sp,sp,16
    80002560:	00008067          	ret

0000000080002564 <_ZN5Riscv20handleSupervisorTrapEv>:
}



void Riscv::handleSupervisorTrap()
{
    80002564:	f5010113          	addi	sp,sp,-176
    80002568:	0a113423          	sd	ra,168(sp)
    8000256c:	0a813023          	sd	s0,160(sp)
    80002570:	08913c23          	sd	s1,152(sp)
    80002574:	09213823          	sd	s2,144(sp)
    80002578:	0b010413          	addi	s0,sp,176
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000257c:	142027f3          	csrr	a5,scause
    80002580:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002584:	fa043483          	ld	s1,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline uint64 Riscv::r_a0() {
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002588:	00050793          	mv	a5,a0
    8000258c:	f8f43c23          	sd	a5,-104(s0)
    return a0;
    80002590:	f9843703          	ld	a4,-104(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002594:	141027f3          	csrr	a5,sepc
    80002598:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    8000259c:	f9043783          	ld	a5,-112(s0)
    uint64 scause = r_scause();
    uint64 whichCase = Riscv::r_a0();
    uint64 volatile sepc = r_sepc() + 4;
    800025a0:	00478793          	addi	a5,a5,4
    800025a4:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025a8:	100027f3          	csrr	a5,sstatus
    800025ac:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800025b0:	f8843783          	ld	a5,-120(s0)
    uint64 volatile sstatus = r_sstatus();
    800025b4:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    800025b8:	143027f3          	csrr	a5,stval
    800025bc:	f8f43023          	sd	a5,-128(s0)
    return stval;
    800025c0:	f8043903          	ld	s2,-128(s0)
    printInteger(sepc);    // Print sepc to see where the trap was triggered
    printString("\n");  // Debug print
    printInteger(sstatus); // Print sstatus for additional context
    printStr("\n\n");
    */
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800025c4:	ff848693          	addi	a3,s1,-8
    800025c8:	00100793          	li	a5,1
    800025cc:	0cd7f463          	bgeu	a5,a3,80002694 <_ZN5Riscv20handleSupervisorTrapEv+0x130>

        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL)
    800025d0:	fff00793          	li	a5,-1
    800025d4:	03f79793          	slli	a5,a5,0x3f
    800025d8:	00178793          	addi	a5,a5,1
    800025dc:	24f48863          	beq	s1,a5,8000282c <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
            // nego sto je usla u dispatch i predala procesor drugoj, a onda sledeci put
            // kada ova prvobitna bude povratila kontekst ce se njen sepc restaurirati
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    } else if (scause == 0x8000000000000009UL) {
    800025e0:	fff00793          	li	a5,-1
    800025e4:	03f79793          	slli	a5,a5,0x3f
    800025e8:	00978793          	addi	a5,a5,9
    800025ec:	2af48c63          	beq	s1,a5,800028a4 <_ZN5Riscv20handleSupervisorTrapEv+0x340>

        console_handler();

        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x0000000000000002UL) {
    800025f0:	00200793          	li	a5,2
    800025f4:	2ef48663          	beq	s1,a5,800028e0 <_ZN5Riscv20handleSupervisorTrapEv+0x37c>
        __asm__ volatile ("li t1, 0x100000");
        __asm__ volatile ("sw t0, 0 * 8(t1)");
    }
    else {
            //unexpected trap cause
            printString("\nScause: ");
    800025f8:	00007517          	auipc	a0,0x7
    800025fc:	b7850513          	addi	a0,a0,-1160 # 80009170 <CONSOLE_STATUS+0x160>
    80002600:	00003097          	auipc	ra,0x3
    80002604:	da4080e7          	jalr	-604(ra) # 800053a4 <_Z11printStringPKc>
            printInt(scause);
    80002608:	00000613          	li	a2,0
    8000260c:	00a00593          	li	a1,10
    80002610:	0004851b          	sext.w	a0,s1
    80002614:	00003097          	auipc	ra,0x3
    80002618:	f40080e7          	jalr	-192(ra) # 80005554 <_Z8printIntiii>
            printString("\nSepc: ");
    8000261c:	00007517          	auipc	a0,0x7
    80002620:	b6450513          	addi	a0,a0,-1180 # 80009180 <CONSOLE_STATUS+0x170>
    80002624:	00003097          	auipc	ra,0x3
    80002628:	d80080e7          	jalr	-640(ra) # 800053a4 <_Z11printStringPKc>
            printInt(sepc);
    8000262c:	fd843503          	ld	a0,-40(s0)
    80002630:	00000613          	li	a2,0
    80002634:	00a00593          	li	a1,10
    80002638:	0005051b          	sext.w	a0,a0
    8000263c:	00003097          	auipc	ra,0x3
    80002640:	f18080e7          	jalr	-232(ra) # 80005554 <_Z8printIntiii>
            printString("\nStval: ");
    80002644:	00007517          	auipc	a0,0x7
    80002648:	b4450513          	addi	a0,a0,-1212 # 80009188 <CONSOLE_STATUS+0x178>
    8000264c:	00003097          	auipc	ra,0x3
    80002650:	d58080e7          	jalr	-680(ra) # 800053a4 <_Z11printStringPKc>
            printInt(stval);
    80002654:	00000613          	li	a2,0
    80002658:	00a00593          	li	a1,10
    8000265c:	0009051b          	sext.w	a0,s2
    80002660:	00003097          	auipc	ra,0x3
    80002664:	ef4080e7          	jalr	-268(ra) # 80005554 <_Z8printIntiii>
            printString("\nSstatus: ");
    80002668:	00007517          	auipc	a0,0x7
    8000266c:	b3050513          	addi	a0,a0,-1232 # 80009198 <CONSOLE_STATUS+0x188>
    80002670:	00003097          	auipc	ra,0x3
    80002674:	d34080e7          	jalr	-716(ra) # 800053a4 <_Z11printStringPKc>
            printInt(sstatus);
    80002678:	fd043503          	ld	a0,-48(s0)
    8000267c:	00000613          	li	a2,0
    80002680:	00a00593          	li	a1,10
    80002684:	0005051b          	sext.w	a0,a0
    80002688:	00003097          	auipc	ra,0x3
    8000268c:	ecc080e7          	jalr	-308(ra) # 80005554 <_Z8printIntiii>
    }
}
    80002690:	05c0006f          	j	800026ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002694:	100027f3          	csrr	a5,sstatus
    80002698:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    8000269c:	fa843783          	ld	a5,-88(s0)
        sstatus = r_sstatus();
    800026a0:	fcf43823          	sd	a5,-48(s0)
        switch (whichCase) {
    800026a4:	04200793          	li	a5,66
    800026a8:	02e7ea63          	bltu	a5,a4,800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800026ac:	00271713          	slli	a4,a4,0x2
    800026b0:	00007697          	auipc	a3,0x7
    800026b4:	af468693          	addi	a3,a3,-1292 # 800091a4 <CONSOLE_STATUS+0x194>
    800026b8:	00d70733          	add	a4,a4,a3
    800026bc:	00072783          	lw	a5,0(a4)
    800026c0:	00d787b3          	add	a5,a5,a3
    800026c4:	00078067          	jr	a5
                __asm__ volatile("ld %[size], 11 * 8(x8)" : [size] "=r"(size));
    800026c8:	05843503          	ld	a0,88(s0)
                ptr = MemoryAllocator::mem_alloc(size);
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	5dc080e7          	jalr	1500(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    800026d4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //load it into the location at which a0 is saved
    800026d8:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800026dc:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026e0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800026e4:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800026e8:	14179073          	csrw	sepc,a5
}
    800026ec:	0a813083          	ld	ra,168(sp)
    800026f0:	0a013403          	ld	s0,160(sp)
    800026f4:	09813483          	ld	s1,152(sp)
    800026f8:	09013903          	ld	s2,144(sp)
    800026fc:	0b010113          	addi	sp,sp,176
    80002700:	00008067          	ret
                __asm__ volatile("ld %[memptr], 11 * 8(x8)" : [memptr] "=r"(memptr));
    80002704:	05843783          	ld	a5,88(s0)
    80002708:	f4f43c23          	sd	a5,-168(s0)
                int returnValue = MemoryAllocator::mem_free(memptr);
    8000270c:	f5843503          	ld	a0,-168(s0)
    80002710:	00000097          	auipc	ra,0x0
    80002714:	448080e7          	jalr	1096(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002718:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000271c:	04542823          	sw	t0,80(s0)
                break;
    80002720:	fbdff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[body], 11 * 8(x8)" : [body] "=r"(body));
    80002724:	05843503          	ld	a0,88(s0)
                __asm__ volatile("ld %[address], 11 * 8(x8)" : [address] "=r"(address));
    80002728:	05843783          	ld	a5,88(s0)
                __asm__ volatile("ld %[arg], 12 * 8(x8)" : [arg] "=r"(arg));
    8000272c:	06043603          	ld	a2,96(s0)
                __asm__ volatile("ld %[stack], 13 * 8(x8)" : [stack] "=r"(stack));
    80002730:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %[handle], 14 * 8(x8)" : [handle] "=r"(handle));
    80002734:	07043483          	ld	s1,112(s0)
                *handle = TCB::createThread(body, stack, arg);
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	73c080e7          	jalr	1852(ra) # 80001e74 <_ZN3TCB12createThreadEPFvPvEPmS0_>
    80002740:	00a4b023          	sd	a0,0(s1)
                uint64 result = (*handle != nullptr) ? 0 : -1;
    80002744:	00050863          	beqz	a0,80002754 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
    80002748:	00000793          	li	a5,0
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    8000274c:	04f43823          	sd	a5,80(s0)
                break;
    80002750:	f8dff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                uint64 result = (*handle != nullptr) ? 0 : -1;
    80002754:	fff00793          	li	a5,-1
    80002758:	ff5ff06f          	j	8000274c <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                uint64 result = TCB::killThread();
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	9b0080e7          	jalr	-1616(ra) # 8000210c <_ZN3TCB10killThreadEv>
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    80002764:	04a43823          	sd	a0,80(s0)
                break;
    80002768:	f75ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                TCB::dispatch();
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	930080e7          	jalr	-1744(ra) # 8000209c <_ZN3TCB8dispatchEv>
                break;
    80002774:	f69ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[init], 11 * 8(x8)" : [init] "=r"(init));
    80002778:	05843503          	ld	a0,88(s0)
    8000277c:	0005051b          	sext.w	a0,a0
                __asm__ volatile("ld %[sem_handle], 12 * 8(x8)" : [sem_handle] "=r"(sem_handle));
    80002780:	06043483          	ld	s1,96(s0)
                *sem_handle = MySemaphore::sem_open(init);
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	468080e7          	jalr	1128(ra) # 80001bec <_ZN11MySemaphore8sem_openEi>
    8000278c:	00a4b023          	sd	a0,0(s1)
                uint64 result = (*sem_handle != nullptr) ? 0 : -1;
    80002790:	00050863          	beqz	a0,800027a0 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    80002794:	00000793          	li	a5,0
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    80002798:	04f43823          	sd	a5,80(s0)
                break;
    8000279c:	f41ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                uint64 result = (*sem_handle != nullptr) ? 0 : -1;
    800027a0:	fff00793          	li	a5,-1
    800027a4:	ff5ff06f          	j	80002798 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
    800027a8:	05843503          	ld	a0,88(s0)
                uint64 result = sem_id->sem_close();
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	48c080e7          	jalr	1164(ra) # 80001c38 <_ZN11MySemaphore9sem_closeEv>
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    800027b4:	04a43823          	sd	a0,80(s0)
                break;
    800027b8:	f25ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
    800027bc:	05843503          	ld	a0,88(s0)
                uint64 result = sem_id->sem_wait();
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	544080e7          	jalr	1348(ra) # 80001d04 <_ZN11MySemaphore8sem_waitEv>
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    800027c8:	04a43823          	sd	a0,80(s0)
                break;
    800027cc:	f11ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
    800027d0:	05843503          	ld	a0,88(s0)
                uint64 result = sem_id->sem_signal();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	5fc080e7          	jalr	1532(ra) # 80001dd0 <_ZN11MySemaphore10sem_signalEv>
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    800027dc:	04a43823          	sd	a0,80(s0)
                break;
    800027e0:	efdff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[sem_id], 11 * 8(x8)" : [sem_id] "=r"(sem_id));
    800027e4:	05843503          	ld	a0,88(s0)
                uint64 result = sem_id->sem_trywait();
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	4e0080e7          	jalr	1248(ra) # 80001cc8 <_ZN11MySemaphore11sem_trywaitEv>
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    800027f0:	04a43823          	sd	a0,80(s0)
                break;
    800027f4:	ee9ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[time], 11 * 8(x8)" : [time] "=r"(time));
    800027f8:	05843783          	ld	a5,88(s0)
                __asm__ volatile("sd %[result], 10 * 8(x8)" : : [result] "r" (result)); //write on loc of saved a0
    800027fc:	00000793          	li	a5,0
    80002800:	04f43823          	sd	a5,80(s0)
                break;
    80002804:	ed9ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                char ret_char = __getc();
    80002808:	00006097          	auipc	ra,0x6
    8000280c:	ef0080e7          	jalr	-272(ra) # 800086f8 <__getc>
                __asm__ volatile("sd %[ret_char], 10 * 8(x8)" : : [ret_char] "r" (ret_char)); //write on loc of saved a0
    80002810:	04a43823          	sd	a0,80(s0)
                break;
    80002814:	ec9ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                __asm__ volatile("ld %[put_char], 11 * 8(x8)" : [put_char] "=r"(put_char));
    80002818:	05843503          	ld	a0,88(s0)
                __putc(put_char);
    8000281c:	0ff57513          	andi	a0,a0,255
    80002820:	00006097          	auipc	ra,0x6
    80002824:	e9c080e7          	jalr	-356(ra) # 800086bc <__putc>
                break;
    80002828:	eb5ff06f          	j	800026dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000282c:	00200793          	li	a5,2
    80002830:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002834:	00009717          	auipc	a4,0x9
    80002838:	eec73703          	ld	a4,-276(a4) # 8000b720 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000283c:	00073783          	ld	a5,0(a4)
    80002840:	00178793          	addi	a5,a5,1
    80002844:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002848:	00009717          	auipc	a4,0x9
    8000284c:	ee873703          	ld	a4,-280(a4) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002850:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002854:	02073703          	ld	a4,32(a4)
    80002858:	e8e7eae3          	bltu	a5,a4,800026ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000285c:	141027f3          	csrr	a5,sepc
    80002860:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002864:	fb843783          	ld	a5,-72(s0)
            uint64 volatile sepc = r_sepc();
    80002868:	f6f43023          	sd	a5,-160(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000286c:	100027f3          	csrr	a5,sstatus
    80002870:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002874:	fb043783          	ld	a5,-80(s0)
            uint64 volatile sstatus = r_sstatus();
    80002878:	f6f43423          	sd	a5,-152(s0)
            TCB::timeSliceCounter = 0;
    8000287c:	00009797          	auipc	a5,0x9
    80002880:	ea47b783          	ld	a5,-348(a5) # 8000b720 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002884:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	814080e7          	jalr	-2028(ra) # 8000209c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002890:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002894:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002898:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000289c:	14179073          	csrw	sepc,a5
}
    800028a0:	e4dff06f          	j	800026ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800028a4:	141027f3          	csrr	a5,sepc
    800028a8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800028ac:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc();
    800028b0:	f6f43823          	sd	a5,-144(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800028b4:	100027f3          	csrr	a5,sstatus
    800028b8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800028bc:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    800028c0:	f6f43c23          	sd	a5,-136(s0)
        console_handler();
    800028c4:	00006097          	auipc	ra,0x6
    800028c8:	e6c080e7          	jalr	-404(ra) # 80008730 <console_handler>
        w_sstatus(sstatus);
    800028cc:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800028d0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800028d4:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800028d8:	14179073          	csrw	sepc,a5
}
    800028dc:	e11ff06f          	j	800026ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        printString("Error - forbidden command\n");
    800028e0:	00007517          	auipc	a0,0x7
    800028e4:	87050513          	addi	a0,a0,-1936 # 80009150 <CONSOLE_STATUS+0x140>
    800028e8:	00003097          	auipc	ra,0x3
    800028ec:	abc080e7          	jalr	-1348(ra) # 800053a4 <_Z11printStringPKc>
        __asm__ volatile ("li t0, 0x5555");
    800028f0:	000052b7          	lui	t0,0x5
    800028f4:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile ("li t1, 0x100000");
    800028f8:	00100337          	lui	t1,0x100
        __asm__ volatile ("sw t0, 0 * 8(t1)");
    800028fc:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    80002900:	dedff06f          	j	800026ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>

0000000080002904 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
    //printStr("Put into Scheduler\n");
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813423          	sd	s0,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    80002910:	00100793          	li	a5,1
    80002914:	00f50863          	beq	a0,a5,80002924 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret
    80002924:	000107b7          	lui	a5,0x10
    80002928:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000292c:	fef596e3          	bne	a1,a5,80002918 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002930:	00009797          	auipc	a5,0x9
    80002934:	e7078793          	addi	a5,a5,-400 # 8000b7a0 <_ZN9Scheduler16readyThreadQueueE>
    80002938:	0007b023          	sd	zero,0(a5)
    8000293c:	0007b423          	sd	zero,8(a5)
    80002940:	fd9ff06f          	j	80002918 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002944 <_ZN9Scheduler3getEv>:
{
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002958:	00009517          	auipc	a0,0x9
    8000295c:	e4853503          	ld	a0,-440(a0) # 8000b7a0 <_ZN9Scheduler16readyThreadQueueE>
    80002960:	04050263          	beqz	a0,800029a4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002964:	00853783          	ld	a5,8(a0)
    80002968:	00009717          	auipc	a4,0x9
    8000296c:	e2f73c23          	sd	a5,-456(a4) # 8000b7a0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002970:	02078463          	beqz	a5,80002998 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002974:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	1e0080e7          	jalr	480(ra) # 80002b58 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002980:	00048513          	mv	a0,s1
    80002984:	01813083          	ld	ra,24(sp)
    80002988:	01013403          	ld	s0,16(sp)
    8000298c:	00813483          	ld	s1,8(sp)
    80002990:	02010113          	addi	sp,sp,32
    80002994:	00008067          	ret
        if (!head) { tail = 0; }
    80002998:	00009797          	auipc	a5,0x9
    8000299c:	e007b823          	sd	zero,-496(a5) # 8000b7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029a0:	fd5ff06f          	j	80002974 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029a4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800029a8:	fd9ff06f          	j	80002980 <_ZN9Scheduler3getEv+0x3c>

00000000800029ac <_ZN9Scheduler3putEP3TCB>:
{
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00113c23          	sd	ra,24(sp)
    800029b4:	00813823          	sd	s0,16(sp)
    800029b8:	00913423          	sd	s1,8(sp)
    800029bc:	02010413          	addi	s0,sp,32
    800029c0:	00050493          	mv	s1,a0
        Elem *elem = (Elem*) MemoryAllocator::mem_alloc(sizeof(Elem));
    800029c4:	01000513          	li	a0,16
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	2e0080e7          	jalr	736(ra) # 80002ca8 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = data;
    800029d0:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    800029d4:	00053423          	sd	zero,8(a0)
        if (tail)
    800029d8:	00009797          	auipc	a5,0x9
    800029dc:	dd07b783          	ld	a5,-560(a5) # 8000b7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029e0:	02078263          	beqz	a5,80002a04 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029e4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029e8:	00009797          	auipc	a5,0x9
    800029ec:	dca7b023          	sd	a0,-576(a5) # 8000b7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret
            head = tail = elem;
    80002a04:	00009797          	auipc	a5,0x9
    80002a08:	d9c78793          	addi	a5,a5,-612 # 8000b7a0 <_ZN9Scheduler16readyThreadQueueE>
    80002a0c:	00a7b423          	sd	a0,8(a5)
    80002a10:	00a7b023          	sd	a0,0(a5)
    80002a14:	fddff06f          	j	800029f0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a18 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
    80002a28:	000105b7          	lui	a1,0x10
    80002a2c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a30:	00100513          	li	a0,1
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	ed0080e7          	jalr	-304(ra) # 80002904 <_Z41__static_initialization_and_destruction_0ii>
    80002a3c:	00813083          	ld	ra,8(sp)
    80002a40:	00013403          	ld	s0,0(sp)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <_Z41__static_initialization_and_destruction_0ii>:
            }
            curr->next = tmp->next;
            tmp->next = curr;
        }
    }
}
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00813423          	sd	s0,8(sp)
    80002a54:	01010413          	addi	s0,sp,16
    80002a58:	00100793          	li	a5,1
    80002a5c:	00f50863          	beq	a0,a5,80002a6c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a60:	00813403          	ld	s0,8(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret
    80002a6c:	000107b7          	lui	a5,0x10
    80002a70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a74:	fef596e3          	bne	a1,a5,80002a60 <_Z41__static_initialization_and_destruction_0ii+0x14>
size_t MemoryAllocator::HEAP_SIZE = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002a78:	00009797          	auipc	a5,0x9
    80002a7c:	cc07b783          	ld	a5,-832(a5) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a80:	0007b783          	ld	a5,0(a5)
    80002a84:	00009717          	auipc	a4,0x9
    80002a88:	c8c73703          	ld	a4,-884(a4) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a8c:	00073683          	ld	a3,0(a4)
    80002a90:	40d787b3          	sub	a5,a5,a3
    80002a94:	00009717          	auipc	a4,0x9
    80002a98:	d1c70713          	addi	a4,a4,-740 # 8000b7b0 <_ZN15MemoryAllocator9HEAP_SIZEE>
    80002a9c:	00f73023          	sd	a5,0(a4)
uint64 MemoryAllocator::newHeapStartingAddress = (uint64) HEAP_START_ADDR ;
    80002aa0:	00d73423          	sd	a3,8(a4)
}
    80002aa4:	fbdff06f          	j	80002a60 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002aa8 <_ZN15MemoryAllocator8init_memEv>:
{
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00813423          	sd	s0,8(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    MemoryAllocator::HEAP_SIZE = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	c5c7b783          	ld	a5,-932(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002abc:	0007b703          	ld	a4,0(a5)
    80002ac0:	00009797          	auipc	a5,0x9
    80002ac4:	c787b783          	ld	a5,-904(a5) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ac8:	0007b783          	ld	a5,0(a5)
    80002acc:	40e787b3          	sub	a5,a5,a4
    80002ad0:	0067d793          	srli	a5,a5,0x6
    80002ad4:	fff78793          	addi	a5,a5,-1
    80002ad8:	00679793          	slli	a5,a5,0x6
    80002adc:	00009697          	auipc	a3,0x9
    80002ae0:	cd468693          	addi	a3,a3,-812 # 8000b7b0 <_ZN15MemoryAllocator9HEAP_SIZEE>
    80002ae4:	00f6b023          	sd	a5,0(a3)
    MemoryAllocator::free_head = (MemoryChunk*) ((char*) HEAP_START_ADDR);
    80002ae8:	00e6b823          	sd	a4,16(a3)
    free_head->next = nullptr;
    80002aec:	00073423          	sd	zero,8(a4)
    free_head->size = HEAP_SIZE;
    80002af0:	00f73023          	sd	a5,0(a4)
    used_head = nullptr;
    80002af4:	0006bc23          	sd	zero,24(a3)
}
    80002af8:	00813403          	ld	s0,8(sp)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk>:
void MemoryAllocator::try_to_join(MemoryChunk *cur) {
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813423          	sd	s0,8(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    if (!cur) return;
    80002b10:	00050e63          	beqz	a0,80002b2c <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk+0x28>
    if (cur->next && (char*) cur + cur->size + sizeof(MemoryChunk) == (char*) cur->next) {      //could also be in while, so that it joins more than one fragments
    80002b14:	00853783          	ld	a5,8(a0)
    80002b18:	00078a63          	beqz	a5,80002b2c <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk+0x28>
    80002b1c:	00053683          	ld	a3,0(a0)
    80002b20:	01068713          	addi	a4,a3,16
    80002b24:	00e50733          	add	a4,a0,a4
    80002b28:	00e78863          	beq	a5,a4,80002b38 <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk+0x34>
}
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret
        cur->size += cur->next->size + sizeof(MemoryChunk);
    80002b38:	0007b703          	ld	a4,0(a5)
    80002b3c:	00e686b3          	add	a3,a3,a4
    80002b40:	01068693          	addi	a3,a3,16
    80002b44:	00d53023          	sd	a3,0(a0)
        cur->next = cur->next->next;
    80002b48:	0087b703          	ld	a4,8(a5)
    80002b4c:	00e53423          	sd	a4,8(a0)
        tmp->next = nullptr;
    80002b50:	0007b423          	sd	zero,8(a5)
    80002b54:	fd9ff06f          	j	80002b2c <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk+0x28>

0000000080002b58 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (MemoryAllocator::used_head == nullptr) {
    80002b58:	00009797          	auipc	a5,0x9
    80002b5c:	c707b783          	ld	a5,-912(a5) # 8000b7c8 <_ZN15MemoryAllocator9used_headE>
    80002b60:	0c078463          	beqz	a5,80002c28 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002b64:	00050713          	mv	a4,a0
    if (space_to_be_free == nullptr ||
    80002b68:	0c050463          	beqz	a0,80002c30 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        space_to_be_free < HEAP_START_ADDR ||
    80002b6c:	00009697          	auipc	a3,0x9
    80002b70:	ba46b683          	ld	a3,-1116(a3) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b74:	0006b683          	ld	a3,0(a3)
    if (space_to_be_free == nullptr ||
    80002b78:	0cd56063          	bltu	a0,a3,80002c38 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
        space_to_be_free > HEAP_END_ADDR) {
    80002b7c:	00009697          	auipc	a3,0x9
    80002b80:	bbc6b683          	ld	a3,-1092(a3) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b84:	0006b683          	ld	a3,0(a3)
        space_to_be_free < HEAP_START_ADDR ||
    80002b88:	0aa6ec63          	bltu	a3,a0,80002c40 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
int MemoryAllocator::mem_free(void *space_to_be_free) {
    80002b8c:	fe010113          	addi	sp,sp,-32
    80002b90:	00113c23          	sd	ra,24(sp)
    80002b94:	00813823          	sd	s0,16(sp)
    80002b98:	00913423          	sd	s1,8(sp)
    80002b9c:	02010413          	addi	s0,sp,32
    MemoryChunk* to_be_free = (MemoryChunk*) ((char*)space_to_be_free - sizeof(MemoryChunk));
    80002ba0:	ff050513          	addi	a0,a0,-16
    if (to_be_free == used_head) {
    80002ba4:	06a78263          	beq	a5,a0,80002c08 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        for (; tmp_used->next && tmp_used->next < to_be_free; tmp_used = tmp_used->next);      //tmp_used will be the first used block before required block to be released
    80002ba8:	00078693          	mv	a3,a5
    80002bac:	0087b783          	ld	a5,8(a5)
    80002bb0:	00078463          	beqz	a5,80002bb8 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002bb4:	fea7eae3          	bltu	a5,a0,80002ba8 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        tmp_used->next = to_be_free->next;
    80002bb8:	ff873783          	ld	a5,-8(a4)
    80002bbc:	00f6b423          	sd	a5,8(a3)
        to_be_free->next = nullptr;
    80002bc0:	fe073c23          	sd	zero,-8(a4)
    MemoryChunk* tmp_free = free_head;
    80002bc4:	00009497          	auipc	s1,0x9
    80002bc8:	bfc4b483          	ld	s1,-1028(s1) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
    if (tmp_free == nullptr) {
    80002bcc:	04048863          	beqz	s1,80002c1c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        to_be_free->next = tmp_free;
    80002bd0:	fe973c23          	sd	s1,-8(a4)
        free_head = to_be_free;
    80002bd4:	00009797          	auipc	a5,0x9
    80002bd8:	bea7b623          	sd	a0,-1044(a5) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
    try_to_join(to_be_free);    //with next
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	f28080e7          	jalr	-216(ra) # 80002b04 <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk>
    try_to_join(tmp_free);      //with prev
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	f1c080e7          	jalr	-228(ra) # 80002b04 <_ZN15MemoryAllocator11try_to_joinEP11MemoryChunk>
    return 0;
    80002bf0:	00000513          	li	a0,0
}
    80002bf4:	01813083          	ld	ra,24(sp)
    80002bf8:	01013403          	ld	s0,16(sp)
    80002bfc:	00813483          	ld	s1,8(sp)
    80002c00:	02010113          	addi	sp,sp,32
    80002c04:	00008067          	ret
        used_head = to_be_free->next;
    80002c08:	ff873783          	ld	a5,-8(a4)
    80002c0c:	00009697          	auipc	a3,0x9
    80002c10:	baf6be23          	sd	a5,-1092(a3) # 8000b7c8 <_ZN15MemoryAllocator9used_headE>
        to_be_free->next = nullptr;
    80002c14:	fe073c23          	sd	zero,-8(a4)
    80002c18:	fadff06f          	j	80002bc4 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        free_head = to_be_free;
    80002c1c:	00009797          	auipc	a5,0x9
    80002c20:	baa7b223          	sd	a0,-1116(a5) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
        free_head->size = to_be_free->size;
    80002c24:	fb9ff06f          	j	80002bdc <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        return -1;   //no used space, nothing to free
    80002c28:	fff00513          	li	a0,-1
    80002c2c:	00008067          	ret
        return -2;   //not adequate address
    80002c30:	ffe00513          	li	a0,-2
    80002c34:	00008067          	ret
    80002c38:	ffe00513          	li	a0,-2
    80002c3c:	00008067          	ret
    80002c40:	ffe00513          	li	a0,-2
}
    80002c44:	00008067          	ret

0000000080002c48 <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk>:
void MemoryAllocator::update_used_list(MemoryChunk* curr) {
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00813423          	sd	s0,8(sp)
    80002c50:	01010413          	addi	s0,sp,16
    if (!MemoryAllocator::used_head) {
    80002c54:	00009797          	auipc	a5,0x9
    80002c58:	b747b783          	ld	a5,-1164(a5) # 8000b7c8 <_ZN15MemoryAllocator9used_headE>
    80002c5c:	02078063          	beqz	a5,80002c7c <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x34>
        if (curr < tmp) {
    80002c60:	02f57663          	bgeu	a0,a5,80002c8c <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x44>
            curr->next = tmp;
    80002c64:	00f53423          	sd	a5,8(a0)
            used_head = curr;
    80002c68:	00009797          	auipc	a5,0x9
    80002c6c:	b6a7b023          	sd	a0,-1184(a5) # 8000b7c8 <_ZN15MemoryAllocator9used_headE>
}
    80002c70:	00813403          	ld	s0,8(sp)
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00008067          	ret
        used_head = curr;
    80002c7c:	00009797          	auipc	a5,0x9
    80002c80:	b4a7b623          	sd	a0,-1204(a5) # 8000b7c8 <_ZN15MemoryAllocator9used_headE>
        curr->next = nullptr;
    80002c84:	00053423          	sd	zero,8(a0)
    80002c88:	fe9ff06f          	j	80002c70 <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x28>
            while (tmp->next && tmp->next < curr) {
    80002c8c:	00078713          	mv	a4,a5
    80002c90:	0087b783          	ld	a5,8(a5)
    80002c94:	00078463          	beqz	a5,80002c9c <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x54>
    80002c98:	fea7eae3          	bltu	a5,a0,80002c8c <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x44>
            curr->next = tmp->next;
    80002c9c:	00f53423          	sd	a5,8(a0)
            tmp->next = curr;
    80002ca0:	00a73423          	sd	a0,8(a4)
}
    80002ca4:	fcdff06f          	j	80002c70 <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk+0x28>

0000000080002ca8 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80002ca8:	fe010113          	addi	sp,sp,-32
    80002cac:	00113c23          	sd	ra,24(sp)
    80002cb0:	00813823          	sd	s0,16(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	01213023          	sd	s2,0(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050913          	mv	s2,a0
    if(!MemoryAllocator::isInitialised) {
    80002cc4:	00009797          	auipc	a5,0x9
    80002cc8:	b0c7c783          	lbu	a5,-1268(a5) # 8000b7d0 <_ZN15MemoryAllocator13isInitialisedE>
    80002ccc:	04078463          	beqz	a5,80002d14 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    if (size > HEAP_SIZE || size <= 0 || !free_head) {
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	ae07b783          	ld	a5,-1312(a5) # 8000b7b0 <_ZN15MemoryAllocator9HEAP_SIZEE>
    80002cd8:	0f27e263          	bltu	a5,s2,80002dbc <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002cdc:	0e090463          	beqz	s2,80002dc4 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    80002ce0:	00009497          	auipc	s1,0x9
    80002ce4:	ae04b483          	ld	s1,-1312(s1) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
    80002ce8:	06048c63          	beqz	s1,80002d60 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    size_t num_of_bytes = (sizeof(MemoryChunk) + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002cec:	04f90793          	addi	a5,s2,79
    80002cf0:	fc07f793          	andi	a5,a5,-64
    MemoryChunk* prev = nullptr;
    80002cf4:	00000693          	li	a3,0
    for (curr = free_head; curr; prev = curr, curr = curr->next) {
    80002cf8:	06048463          	beqz	s1,80002d60 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        if (curr->size > num_of_bytes) {
    80002cfc:	0004b703          	ld	a4,0(s1)
    80002d00:	02e7e663          	bltu	a5,a4,80002d2c <_ZN15MemoryAllocator9mem_allocEm+0x84>
        } else if (num_of_bytes == curr->size) {
    80002d04:	08f70263          	beq	a4,a5,80002d88 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    for (curr = free_head; curr; prev = curr, curr = curr->next) {
    80002d08:	00048693          	mv	a3,s1
    80002d0c:	0084b483          	ld	s1,8(s1)
    80002d10:	fe9ff06f          	j	80002cf8 <_ZN15MemoryAllocator9mem_allocEm+0x50>
        MemoryAllocator::isInitialised = 1;
    80002d14:	00100793          	li	a5,1
    80002d18:	00009717          	auipc	a4,0x9
    80002d1c:	aaf70c23          	sb	a5,-1352(a4) # 8000b7d0 <_ZN15MemoryAllocator13isInitialisedE>
        init_mem();
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	d88080e7          	jalr	-632(ra) # 80002aa8 <_ZN15MemoryAllocator8init_memEv>
    80002d28:	fa9ff06f          	j	80002cd0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            new_free_head = (MemoryChunk*) ((char*)curr + num_of_bytes);
    80002d2c:	00f48633          	add	a2,s1,a5
            new_free_head->size = curr->size - num_of_bytes;
    80002d30:	40f70733          	sub	a4,a4,a5
    80002d34:	00e63023          	sd	a4,0(a2)
            new_free_head->next = curr->next;
    80002d38:	0084b703          	ld	a4,8(s1)
    80002d3c:	00e63423          	sd	a4,8(a2)
            if (!prev) {
    80002d40:	02068e63          	beqz	a3,80002d7c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
                prev->next = new_free_head;
    80002d44:	00c6b423          	sd	a2,8(a3)
                curr->next = nullptr;
    80002d48:	0004b423          	sd	zero,8(s1)
            curr->size = num_of_bytes;
    80002d4c:	00f4b023          	sd	a5,0(s1)
            update_used_list(curr);
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	ef4080e7          	jalr	-268(ra) # 80002c48 <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk>
            return (char*)curr + sizeof(MemoryChunk);
    80002d5c:	01048493          	addi	s1,s1,16
}
    80002d60:	00048513          	mv	a0,s1
    80002d64:	01813083          	ld	ra,24(sp)
    80002d68:	01013403          	ld	s0,16(sp)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	00013903          	ld	s2,0(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret
                MemoryAllocator::free_head = new_free_head;
    80002d7c:	00009717          	auipc	a4,0x9
    80002d80:	a4c73223          	sd	a2,-1468(a4) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
    80002d84:	fc9ff06f          	j	80002d4c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
            if (!prev) {
    80002d88:	02068263          	beqz	a3,80002dac <_ZN15MemoryAllocator9mem_allocEm+0x104>
                prev->next = curr->next;
    80002d8c:	0084b783          	ld	a5,8(s1)
    80002d90:	00f6b423          	sd	a5,8(a3)
                curr->next = nullptr;
    80002d94:	0004b423          	sd	zero,8(s1)
            update_used_list(curr);
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	eac080e7          	jalr	-340(ra) # 80002c48 <_ZN15MemoryAllocator16update_used_listEP11MemoryChunk>
            return (char*) curr + sizeof(MemoryChunk);
    80002da4:	01048493          	addi	s1,s1,16
    80002da8:	fb9ff06f          	j	80002d60 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
                MemoryAllocator::free_head = curr->next;
    80002dac:	0084b783          	ld	a5,8(s1)
    80002db0:	00009717          	auipc	a4,0x9
    80002db4:	a0f73823          	sd	a5,-1520(a4) # 8000b7c0 <_ZN15MemoryAllocator9free_headE>
    80002db8:	fe1ff06f          	j	80002d98 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        return nullptr;
    80002dbc:	00000493          	li	s1,0
    80002dc0:	fa1ff06f          	j	80002d60 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002dc4:	00000493          	li	s1,0
    80002dc8:	f99ff06f          	j	80002d60 <_ZN15MemoryAllocator9mem_allocEm+0xb8>

0000000080002dcc <_GLOBAL__sub_I__ZN15MemoryAllocator9HEAP_SIZEE>:
}
    80002dcc:	ff010113          	addi	sp,sp,-16
    80002dd0:	00113423          	sd	ra,8(sp)
    80002dd4:	00813023          	sd	s0,0(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    80002ddc:	000105b7          	lui	a1,0x10
    80002de0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002de4:	00100513          	li	a0,1
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	c64080e7          	jalr	-924(ra) # 80002a4c <_Z41__static_initialization_and_destruction_0ii>
    80002df0:	00813083          	ld	ra,8(sp)
    80002df4:	00013403          	ld	s0,0(sp)
    80002df8:	01010113          	addi	sp,sp,16
    80002dfc:	00008067          	ret

0000000080002e00 <_Z8printStrPKc>:
#include "../lib/console.h"
#include "../h/riscv.hpp"


void printStr(char const *string)
{
    80002e00:	fd010113          	addi	sp,sp,-48
    80002e04:	02113423          	sd	ra,40(sp)
    80002e08:	02813023          	sd	s0,32(sp)
    80002e0c:	00913c23          	sd	s1,24(sp)
    80002e10:	01213823          	sd	s2,16(sp)
    80002e14:	03010413          	addi	s0,sp,48
    80002e18:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002e1c:	100027f3          	csrr	a5,sstatus
    80002e20:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002e24:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002e28:	00200793          	li	a5,2
    80002e2c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    //zabrani prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    80002e30:	0004c503          	lbu	a0,0(s1)
    80002e34:	00050a63          	beqz	a0,80002e48 <_Z8printStrPKc+0x48>
    {
        __putc(*string);
    80002e38:	00006097          	auipc	ra,0x6
    80002e3c:	884080e7          	jalr	-1916(ra) # 800086bc <__putc>
        string++;
    80002e40:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002e44:	fedff06f          	j	80002e30 <_Z8printStrPKc+0x30>
    }
    //omoguci prekide ako su pre bili omoguceni, ako ne onda nemoj da ih omogucavas kad vec nisu bili pre toga
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002e48:	0009091b          	sext.w	s2,s2
    80002e4c:	00297913          	andi	s2,s2,2
    80002e50:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002e54:	10092073          	csrs	sstatus,s2
}
    80002e58:	02813083          	ld	ra,40(sp)
    80002e5c:	02013403          	ld	s0,32(sp)
    80002e60:	01813483          	ld	s1,24(sp)
    80002e64:	01013903          	ld	s2,16(sp)
    80002e68:	03010113          	addi	sp,sp,48
    80002e6c:	00008067          	ret

0000000080002e70 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002e70:	fc010113          	addi	sp,sp,-64
    80002e74:	02113c23          	sd	ra,56(sp)
    80002e78:	02813823          	sd	s0,48(sp)
    80002e7c:	02913423          	sd	s1,40(sp)
    80002e80:	03213023          	sd	s2,32(sp)
    80002e84:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002e88:	100027f3          	csrr	a5,sstatus
    80002e8c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002e90:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002e94:	00200793          	li	a5,2
    80002e98:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002e9c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002ea0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002ea4:	00a00613          	li	a2,10
    80002ea8:	02c5773b          	remuw	a4,a0,a2
    80002eac:	02071693          	slli	a3,a4,0x20
    80002eb0:	0206d693          	srli	a3,a3,0x20
    80002eb4:	00006717          	auipc	a4,0x6
    80002eb8:	3fc70713          	addi	a4,a4,1020 # 800092b0 <_ZZ12printIntegermE6digits>
    80002ebc:	00d70733          	add	a4,a4,a3
    80002ec0:	00074703          	lbu	a4,0(a4)
    80002ec4:	fe040693          	addi	a3,s0,-32
    80002ec8:	009687b3          	add	a5,a3,s1
    80002ecc:	0014849b          	addiw	s1,s1,1
    80002ed0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002ed4:	0005071b          	sext.w	a4,a0
    80002ed8:	02c5553b          	divuw	a0,a0,a2
    80002edc:	00900793          	li	a5,9
    80002ee0:	fce7e2e3          	bltu	a5,a4,80002ea4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002ee4:	fff4849b          	addiw	s1,s1,-1
    80002ee8:	0004ce63          	bltz	s1,80002f04 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002eec:	fe040793          	addi	a5,s0,-32
    80002ef0:	009787b3          	add	a5,a5,s1
    80002ef4:	ff07c503          	lbu	a0,-16(a5)
    80002ef8:	00005097          	auipc	ra,0x5
    80002efc:	7c4080e7          	jalr	1988(ra) # 800086bc <__putc>
    80002f00:	fe5ff06f          	j	80002ee4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002f04:	0009091b          	sext.w	s2,s2
    80002f08:	00297913          	andi	s2,s2,2
    80002f0c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002f10:	10092073          	csrs	sstatus,s2
    80002f14:	03813083          	ld	ra,56(sp)
    80002f18:	03013403          	ld	s0,48(sp)
    80002f1c:	02813483          	ld	s1,40(sp)
    80002f20:	02013903          	ld	s2,32(sp)
    80002f24:	04010113          	addi	sp,sp,64
    80002f28:	00008067          	ret

0000000080002f2c <_ZL16producerKeyboardPv>:
};

static volatile int threadEnd = 0;

//producer
static void producerKeyboard(void *arg) {
    80002f2c:	fe010113          	addi	sp,sp,-32
    80002f30:	00113c23          	sd	ra,24(sp)
    80002f34:	00813823          	sd	s0,16(sp)
    80002f38:	00913423          	sd	s1,8(sp)
    80002f3c:	01213023          	sd	s2,0(sp)
    80002f40:	02010413          	addi	s0,sp,32
    80002f44:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002f48:	00000913          	li	s2,0
    80002f4c:	00c0006f          	j	80002f58 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	43c080e7          	jalr	1084(ra) # 8000138c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	5e4080e7          	jalr	1508(ra) # 8000153c <_Z4getcv>
    80002f60:	0005059b          	sext.w	a1,a0
    80002f64:	01b00793          	li	a5,27
    80002f68:	02f58a63          	beq	a1,a5,80002f9c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002f6c:	0084b503          	ld	a0,8(s1)
    80002f70:	00003097          	auipc	ra,0x3
    80002f74:	400080e7          	jalr	1024(ra) # 80006370 <_ZN6Buffer3putEi>
        i++;
    80002f78:	0019071b          	addiw	a4,s2,1
    80002f7c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f80:	0004a683          	lw	a3,0(s1)
    80002f84:	0026979b          	slliw	a5,a3,0x2
    80002f88:	00d787bb          	addw	a5,a5,a3
    80002f8c:	0017979b          	slliw	a5,a5,0x1
    80002f90:	02f767bb          	remw	a5,a4,a5
    80002f94:	fc0792e3          	bnez	a5,80002f58 <_ZL16producerKeyboardPv+0x2c>
    80002f98:	fb9ff06f          	j	80002f50 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002f9c:	00100793          	li	a5,1
    80002fa0:	00009717          	auipc	a4,0x9
    80002fa4:	82f72c23          	sw	a5,-1992(a4) # 8000b7d8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002fa8:	02100593          	li	a1,33
    80002fac:	0084b503          	ld	a0,8(s1)
    80002fb0:	00003097          	auipc	ra,0x3
    80002fb4:	3c0080e7          	jalr	960(ra) # 80006370 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002fb8:	0104b503          	ld	a0,16(s1)
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	4c0080e7          	jalr	1216(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
}
    80002fc4:	01813083          	ld	ra,24(sp)
    80002fc8:	01013403          	ld	s0,16(sp)
    80002fcc:	00813483          	ld	s1,8(sp)
    80002fd0:	00013903          	ld	s2,0(sp)
    80002fd4:	02010113          	addi	sp,sp,32
    80002fd8:	00008067          	ret

0000000080002fdc <_ZL8producerPv>:

static void producer(void *arg) {
    80002fdc:	fe010113          	addi	sp,sp,-32
    80002fe0:	00113c23          	sd	ra,24(sp)
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	01213023          	sd	s2,0(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    80002ff4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ff8:	00000913          	li	s2,0
    80002ffc:	00c0006f          	j	80003008 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	38c080e7          	jalr	908(ra) # 8000138c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003008:	00008797          	auipc	a5,0x8
    8000300c:	7d07a783          	lw	a5,2000(a5) # 8000b7d8 <_ZL9threadEnd>
    80003010:	02079e63          	bnez	a5,8000304c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003014:	0004a583          	lw	a1,0(s1)
    80003018:	0305859b          	addiw	a1,a1,48
    8000301c:	0084b503          	ld	a0,8(s1)
    80003020:	00003097          	auipc	ra,0x3
    80003024:	350080e7          	jalr	848(ra) # 80006370 <_ZN6Buffer3putEi>
        i++;
    80003028:	0019071b          	addiw	a4,s2,1
    8000302c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003030:	0004a683          	lw	a3,0(s1)
    80003034:	0026979b          	slliw	a5,a3,0x2
    80003038:	00d787bb          	addw	a5,a5,a3
    8000303c:	0017979b          	slliw	a5,a5,0x1
    80003040:	02f767bb          	remw	a5,a4,a5
    80003044:	fc0792e3          	bnez	a5,80003008 <_ZL8producerPv+0x2c>
    80003048:	fb9ff06f          	j	80003000 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000304c:	0104b503          	ld	a0,16(s1)
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	42c080e7          	jalr	1068(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
}
    80003058:	01813083          	ld	ra,24(sp)
    8000305c:	01013403          	ld	s0,16(sp)
    80003060:	00813483          	ld	s1,8(sp)
    80003064:	00013903          	ld	s2,0(sp)
    80003068:	02010113          	addi	sp,sp,32
    8000306c:	00008067          	ret

0000000080003070 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003070:	fd010113          	addi	sp,sp,-48
    80003074:	02113423          	sd	ra,40(sp)
    80003078:	02813023          	sd	s0,32(sp)
    8000307c:	00913c23          	sd	s1,24(sp)
    80003080:	01213823          	sd	s2,16(sp)
    80003084:	01313423          	sd	s3,8(sp)
    80003088:	03010413          	addi	s0,sp,48
    8000308c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003090:	00000993          	li	s3,0
    80003094:	01c0006f          	j	800030b0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	2f4080e7          	jalr	756(ra) # 8000138c <_Z15thread_dispatchv>
    800030a0:	0500006f          	j	800030f0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800030a4:	00a00513          	li	a0,10
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	4c8080e7          	jalr	1224(ra) # 80001570 <_Z4putcc>
    while (!threadEnd) {
    800030b0:	00008797          	auipc	a5,0x8
    800030b4:	7287a783          	lw	a5,1832(a5) # 8000b7d8 <_ZL9threadEnd>
    800030b8:	06079063          	bnez	a5,80003118 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800030bc:	00893503          	ld	a0,8(s2)
    800030c0:	00003097          	auipc	ra,0x3
    800030c4:	340080e7          	jalr	832(ra) # 80006400 <_ZN6Buffer3getEv>
        i++;
    800030c8:	0019849b          	addiw	s1,s3,1
    800030cc:	0004899b          	sext.w	s3,s1
        putc(key);
    800030d0:	0ff57513          	andi	a0,a0,255
    800030d4:	ffffe097          	auipc	ra,0xffffe
    800030d8:	49c080e7          	jalr	1180(ra) # 80001570 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800030dc:	00092703          	lw	a4,0(s2)
    800030e0:	0027179b          	slliw	a5,a4,0x2
    800030e4:	00e787bb          	addw	a5,a5,a4
    800030e8:	02f4e7bb          	remw	a5,s1,a5
    800030ec:	fa0786e3          	beqz	a5,80003098 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800030f0:	05000793          	li	a5,80
    800030f4:	02f4e4bb          	remw	s1,s1,a5
    800030f8:	fa049ce3          	bnez	s1,800030b0 <_ZL8consumerPv+0x40>
    800030fc:	fa9ff06f          	j	800030a4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003100:	00893503          	ld	a0,8(s2)
    80003104:	00003097          	auipc	ra,0x3
    80003108:	2fc080e7          	jalr	764(ra) # 80006400 <_ZN6Buffer3getEv>
        putc(key);
    8000310c:	0ff57513          	andi	a0,a0,255
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	460080e7          	jalr	1120(ra) # 80001570 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003118:	00893503          	ld	a0,8(s2)
    8000311c:	00003097          	auipc	ra,0x3
    80003120:	370080e7          	jalr	880(ra) # 8000648c <_ZN6Buffer6getCntEv>
    80003124:	fca04ee3          	bgtz	a0,80003100 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003128:	01093503          	ld	a0,16(s2)
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	350080e7          	jalr	848(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
}
    80003134:	02813083          	ld	ra,40(sp)
    80003138:	02013403          	ld	s0,32(sp)
    8000313c:	01813483          	ld	s1,24(sp)
    80003140:	01013903          	ld	s2,16(sp)
    80003144:	00813983          	ld	s3,8(sp)
    80003148:	03010113          	addi	sp,sp,48
    8000314c:	00008067          	ret

0000000080003150 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003150:	f9010113          	addi	sp,sp,-112
    80003154:	06113423          	sd	ra,104(sp)
    80003158:	06813023          	sd	s0,96(sp)
    8000315c:	04913c23          	sd	s1,88(sp)
    80003160:	05213823          	sd	s2,80(sp)
    80003164:	05313423          	sd	s3,72(sp)
    80003168:	05413023          	sd	s4,64(sp)
    8000316c:	03513c23          	sd	s5,56(sp)
    80003170:	03613823          	sd	s6,48(sp)
    80003174:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003178:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000317c:	00006517          	auipc	a0,0x6
    80003180:	14450513          	addi	a0,a0,324 # 800092c0 <_ZZ12printIntegermE6digits+0x10>
    80003184:	00002097          	auipc	ra,0x2
    80003188:	220080e7          	jalr	544(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    8000318c:	01e00593          	li	a1,30
    80003190:	fa040493          	addi	s1,s0,-96
    80003194:	00048513          	mv	a0,s1
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	294080e7          	jalr	660(ra) # 8000542c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00002097          	auipc	ra,0x2
    800031a8:	360080e7          	jalr	864(ra) # 80005504 <_Z11stringToIntPKc>
    800031ac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800031b0:	00006517          	auipc	a0,0x6
    800031b4:	13050513          	addi	a0,a0,304 # 800092e0 <_ZZ12printIntegermE6digits+0x30>
    800031b8:	00002097          	auipc	ra,0x2
    800031bc:	1ec080e7          	jalr	492(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    800031c0:	01e00593          	li	a1,30
    800031c4:	00048513          	mv	a0,s1
    800031c8:	00002097          	auipc	ra,0x2
    800031cc:	264080e7          	jalr	612(ra) # 8000542c <_Z9getStringPci>
    n = stringToInt(input);
    800031d0:	00048513          	mv	a0,s1
    800031d4:	00002097          	auipc	ra,0x2
    800031d8:	330080e7          	jalr	816(ra) # 80005504 <_Z11stringToIntPKc>
    800031dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800031e0:	00006517          	auipc	a0,0x6
    800031e4:	12050513          	addi	a0,a0,288 # 80009300 <_ZZ12printIntegermE6digits+0x50>
    800031e8:	00002097          	auipc	ra,0x2
    800031ec:	1bc080e7          	jalr	444(ra) # 800053a4 <_Z11printStringPKc>
    800031f0:	00000613          	li	a2,0
    800031f4:	00a00593          	li	a1,10
    800031f8:	00090513          	mv	a0,s2
    800031fc:	00002097          	auipc	ra,0x2
    80003200:	358080e7          	jalr	856(ra) # 80005554 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003204:	00006517          	auipc	a0,0x6
    80003208:	11450513          	addi	a0,a0,276 # 80009318 <_ZZ12printIntegermE6digits+0x68>
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	198080e7          	jalr	408(ra) # 800053a4 <_Z11printStringPKc>
    80003214:	00000613          	li	a2,0
    80003218:	00a00593          	li	a1,10
    8000321c:	00048513          	mv	a0,s1
    80003220:	00002097          	auipc	ra,0x2
    80003224:	334080e7          	jalr	820(ra) # 80005554 <_Z8printIntiii>
    printString(".\n");
    80003228:	00006517          	auipc	a0,0x6
    8000322c:	10850513          	addi	a0,a0,264 # 80009330 <_ZZ12printIntegermE6digits+0x80>
    80003230:	00002097          	auipc	ra,0x2
    80003234:	174080e7          	jalr	372(ra) # 800053a4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003238:	0324c463          	blt	s1,s2,80003260 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000323c:	03205c63          	blez	s2,80003274 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003240:	03800513          	li	a0,56
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	f04080e7          	jalr	-252(ra) # 80002148 <_Znwm>
    8000324c:	00050a13          	mv	s4,a0
    80003250:	00048593          	mv	a1,s1
    80003254:	00003097          	auipc	ra,0x3
    80003258:	080080e7          	jalr	128(ra) # 800062d4 <_ZN6BufferC1Ei>
    8000325c:	0300006f          	j	8000328c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003260:	00006517          	auipc	a0,0x6
    80003264:	0d850513          	addi	a0,a0,216 # 80009338 <_ZZ12printIntegermE6digits+0x88>
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	13c080e7          	jalr	316(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80003270:	0140006f          	j	80003284 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003274:	00006517          	auipc	a0,0x6
    80003278:	10450513          	addi	a0,a0,260 # 80009378 <_ZZ12printIntegermE6digits+0xc8>
    8000327c:	00002097          	auipc	ra,0x2
    80003280:	128080e7          	jalr	296(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80003284:	000b0113          	mv	sp,s6
    80003288:	1500006f          	j	800033d8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000328c:	00000593          	li	a1,0
    80003290:	00008517          	auipc	a0,0x8
    80003294:	55050513          	addi	a0,a0,1360 # 8000b7e0 <_ZL10waitForAll>
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	120080e7          	jalr	288(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800032a0:	00391793          	slli	a5,s2,0x3
    800032a4:	00f78793          	addi	a5,a5,15
    800032a8:	ff07f793          	andi	a5,a5,-16
    800032ac:	40f10133          	sub	sp,sp,a5
    800032b0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800032b4:	0019071b          	addiw	a4,s2,1
    800032b8:	00171793          	slli	a5,a4,0x1
    800032bc:	00e787b3          	add	a5,a5,a4
    800032c0:	00379793          	slli	a5,a5,0x3
    800032c4:	00f78793          	addi	a5,a5,15
    800032c8:	ff07f793          	andi	a5,a5,-16
    800032cc:	40f10133          	sub	sp,sp,a5
    800032d0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800032d4:	00191613          	slli	a2,s2,0x1
    800032d8:	012607b3          	add	a5,a2,s2
    800032dc:	00379793          	slli	a5,a5,0x3
    800032e0:	00f987b3          	add	a5,s3,a5
    800032e4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800032e8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800032ec:	00008717          	auipc	a4,0x8
    800032f0:	4f473703          	ld	a4,1268(a4) # 8000b7e0 <_ZL10waitForAll>
    800032f4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800032f8:	00078613          	mv	a2,a5
    800032fc:	00000597          	auipc	a1,0x0
    80003300:	d7458593          	addi	a1,a1,-652 # 80003070 <_ZL8consumerPv>
    80003304:	f9840513          	addi	a0,s0,-104
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	fb8080e7          	jalr	-72(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003310:	00000493          	li	s1,0
    80003314:	0280006f          	j	8000333c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003318:	00000597          	auipc	a1,0x0
    8000331c:	c1458593          	addi	a1,a1,-1004 # 80002f2c <_ZL16producerKeyboardPv>
                      data + i);
    80003320:	00179613          	slli	a2,a5,0x1
    80003324:	00f60633          	add	a2,a2,a5
    80003328:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000332c:	00c98633          	add	a2,s3,a2
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	f90080e7          	jalr	-112(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003338:	0014849b          	addiw	s1,s1,1
    8000333c:	0524d263          	bge	s1,s2,80003380 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003340:	00149793          	slli	a5,s1,0x1
    80003344:	009787b3          	add	a5,a5,s1
    80003348:	00379793          	slli	a5,a5,0x3
    8000334c:	00f987b3          	add	a5,s3,a5
    80003350:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003354:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003358:	00008717          	auipc	a4,0x8
    8000335c:	48873703          	ld	a4,1160(a4) # 8000b7e0 <_ZL10waitForAll>
    80003360:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003364:	00048793          	mv	a5,s1
    80003368:	00349513          	slli	a0,s1,0x3
    8000336c:	00aa8533          	add	a0,s5,a0
    80003370:	fa9054e3          	blez	s1,80003318 <_Z22producerConsumer_C_APIv+0x1c8>
    80003374:	00000597          	auipc	a1,0x0
    80003378:	c6858593          	addi	a1,a1,-920 # 80002fdc <_ZL8producerPv>
    8000337c:	fa5ff06f          	j	80003320 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	00c080e7          	jalr	12(ra) # 8000138c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003388:	00000493          	li	s1,0
    8000338c:	00994e63          	blt	s2,s1,800033a8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003390:	00008517          	auipc	a0,0x8
    80003394:	45053503          	ld	a0,1104(a0) # 8000b7e0 <_ZL10waitForAll>
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	0a4080e7          	jalr	164(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800033a0:	0014849b          	addiw	s1,s1,1
    800033a4:	fe9ff06f          	j	8000338c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800033a8:	00008517          	auipc	a0,0x8
    800033ac:	43853503          	ld	a0,1080(a0) # 8000b7e0 <_ZL10waitForAll>
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	04c080e7          	jalr	76(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
    delete buffer;
    800033b8:	000a0e63          	beqz	s4,800033d4 <_Z22producerConsumer_C_APIv+0x284>
    800033bc:	000a0513          	mv	a0,s4
    800033c0:	00003097          	auipc	ra,0x3
    800033c4:	154080e7          	jalr	340(ra) # 80006514 <_ZN6BufferD1Ev>
    800033c8:	000a0513          	mv	a0,s4
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	dcc080e7          	jalr	-564(ra) # 80002198 <_ZdlPv>
    800033d4:	000b0113          	mv	sp,s6

}
    800033d8:	f9040113          	addi	sp,s0,-112
    800033dc:	06813083          	ld	ra,104(sp)
    800033e0:	06013403          	ld	s0,96(sp)
    800033e4:	05813483          	ld	s1,88(sp)
    800033e8:	05013903          	ld	s2,80(sp)
    800033ec:	04813983          	ld	s3,72(sp)
    800033f0:	04013a03          	ld	s4,64(sp)
    800033f4:	03813a83          	ld	s5,56(sp)
    800033f8:	03013b03          	ld	s6,48(sp)
    800033fc:	07010113          	addi	sp,sp,112
    80003400:	00008067          	ret
    80003404:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003408:	000a0513          	mv	a0,s4
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	d8c080e7          	jalr	-628(ra) # 80002198 <_ZdlPv>
    80003414:	00048513          	mv	a0,s1
    80003418:	00009097          	auipc	ra,0x9
    8000341c:	4e0080e7          	jalr	1248(ra) # 8000c8f8 <_Unwind_Resume>

0000000080003420 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003420:	fe010113          	addi	sp,sp,-32
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	00813823          	sd	s0,16(sp)
    8000342c:	00913423          	sd	s1,8(sp)
    80003430:	01213023          	sd	s2,0(sp)
    80003434:	02010413          	addi	s0,sp,32
    80003438:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000343c:	00100793          	li	a5,1
    80003440:	02a7f863          	bgeu	a5,a0,80003470 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003444:	00a00793          	li	a5,10
    80003448:	02f577b3          	remu	a5,a0,a5
    8000344c:	02078e63          	beqz	a5,80003488 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003450:	fff48513          	addi	a0,s1,-1
    80003454:	00000097          	auipc	ra,0x0
    80003458:	fcc080e7          	jalr	-52(ra) # 80003420 <_ZL9fibonaccim>
    8000345c:	00050913          	mv	s2,a0
    80003460:	ffe48513          	addi	a0,s1,-2
    80003464:	00000097          	auipc	ra,0x0
    80003468:	fbc080e7          	jalr	-68(ra) # 80003420 <_ZL9fibonaccim>
    8000346c:	00a90533          	add	a0,s2,a0
}
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00813483          	ld	s1,8(sp)
    8000347c:	00013903          	ld	s2,0(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	f04080e7          	jalr	-252(ra) # 8000138c <_Z15thread_dispatchv>
    80003490:	fc1ff06f          	j	80003450 <_ZL9fibonaccim+0x30>

0000000080003494 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003494:	fe010113          	addi	sp,sp,-32
    80003498:	00113c23          	sd	ra,24(sp)
    8000349c:	00813823          	sd	s0,16(sp)
    800034a0:	00913423          	sd	s1,8(sp)
    800034a4:	01213023          	sd	s2,0(sp)
    800034a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800034ac:	00000913          	li	s2,0
    800034b0:	0380006f          	j	800034e8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	ed8080e7          	jalr	-296(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034bc:	00148493          	addi	s1,s1,1
    800034c0:	000027b7          	lui	a5,0x2
    800034c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034c8:	0097ee63          	bltu	a5,s1,800034e4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034cc:	00000713          	li	a4,0
    800034d0:	000077b7          	lui	a5,0x7
    800034d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034d8:	fce7eee3          	bltu	a5,a4,800034b4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800034dc:	00170713          	addi	a4,a4,1
    800034e0:	ff1ff06f          	j	800034d0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800034e4:	00190913          	addi	s2,s2,1
    800034e8:	00900793          	li	a5,9
    800034ec:	0527e063          	bltu	a5,s2,8000352c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800034f0:	00006517          	auipc	a0,0x6
    800034f4:	b5850513          	addi	a0,a0,-1192 # 80009048 <CONSOLE_STATUS+0x38>
    800034f8:	00002097          	auipc	ra,0x2
    800034fc:	eac080e7          	jalr	-340(ra) # 800053a4 <_Z11printStringPKc>
    80003500:	00000613          	li	a2,0
    80003504:	00a00593          	li	a1,10
    80003508:	0009051b          	sext.w	a0,s2
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	048080e7          	jalr	72(ra) # 80005554 <_Z8printIntiii>
    80003514:	00006517          	auipc	a0,0x6
    80003518:	0bc50513          	addi	a0,a0,188 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	e88080e7          	jalr	-376(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003524:	00000493          	li	s1,0
    80003528:	f99ff06f          	j	800034c0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	e7c50513          	addi	a0,a0,-388 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    80003534:	00002097          	auipc	ra,0x2
    80003538:	e70080e7          	jalr	-400(ra) # 800053a4 <_Z11printStringPKc>
    finishedA = true;
    8000353c:	00100793          	li	a5,1
    80003540:	00008717          	auipc	a4,0x8
    80003544:	2af70423          	sb	a5,680(a4) # 8000b7e8 <_ZL9finishedA>
}
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	01013403          	ld	s0,16(sp)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	00013903          	ld	s2,0(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret

0000000080003560 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00113c23          	sd	ra,24(sp)
    80003568:	00813823          	sd	s0,16(sp)
    8000356c:	00913423          	sd	s1,8(sp)
    80003570:	01213023          	sd	s2,0(sp)
    80003574:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003578:	00000913          	li	s2,0
    8000357c:	0380006f          	j	800035b4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	e0c080e7          	jalr	-500(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003588:	00148493          	addi	s1,s1,1
    8000358c:	000027b7          	lui	a5,0x2
    80003590:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003594:	0097ee63          	bltu	a5,s1,800035b0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003598:	00000713          	li	a4,0
    8000359c:	000077b7          	lui	a5,0x7
    800035a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035a4:	fce7eee3          	bltu	a5,a4,80003580 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800035a8:	00170713          	addi	a4,a4,1
    800035ac:	ff1ff06f          	j	8000359c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800035b0:	00190913          	addi	s2,s2,1
    800035b4:	00f00793          	li	a5,15
    800035b8:	0527e063          	bltu	a5,s2,800035f8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800035bc:	00006517          	auipc	a0,0x6
    800035c0:	acc50513          	addi	a0,a0,-1332 # 80009088 <CONSOLE_STATUS+0x78>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	de0080e7          	jalr	-544(ra) # 800053a4 <_Z11printStringPKc>
    800035cc:	00000613          	li	a2,0
    800035d0:	00a00593          	li	a1,10
    800035d4:	0009051b          	sext.w	a0,s2
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	f7c080e7          	jalr	-132(ra) # 80005554 <_Z8printIntiii>
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	ff050513          	addi	a0,a0,-16 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	dbc080e7          	jalr	-580(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035f0:	00000493          	li	s1,0
    800035f4:	f99ff06f          	j	8000358c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	dc050513          	addi	a0,a0,-576 # 800093b8 <_ZZ12printIntegermE6digits+0x108>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	da4080e7          	jalr	-604(ra) # 800053a4 <_Z11printStringPKc>
    finishedB = true;
    80003608:	00100793          	li	a5,1
    8000360c:	00008717          	auipc	a4,0x8
    80003610:	1cf70ea3          	sb	a5,477(a4) # 8000b7e9 <_ZL9finishedB>
    thread_dispatch();
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	d78080e7          	jalr	-648(ra) # 8000138c <_Z15thread_dispatchv>
}
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	00013903          	ld	s2,0(sp)
    8000362c:	02010113          	addi	sp,sp,32
    80003630:	00008067          	ret

0000000080003634 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003634:	fe010113          	addi	sp,sp,-32
    80003638:	00113c23          	sd	ra,24(sp)
    8000363c:	00813823          	sd	s0,16(sp)
    80003640:	00913423          	sd	s1,8(sp)
    80003644:	01213023          	sd	s2,0(sp)
    80003648:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000364c:	00000493          	li	s1,0
    80003650:	0400006f          	j	80003690 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	aac50513          	addi	a0,a0,-1364 # 80009100 <CONSOLE_STATUS+0xf0>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	d48080e7          	jalr	-696(ra) # 800053a4 <_Z11printStringPKc>
    80003664:	00000613          	li	a2,0
    80003668:	00a00593          	li	a1,10
    8000366c:	00048513          	mv	a0,s1
    80003670:	00002097          	auipc	ra,0x2
    80003674:	ee4080e7          	jalr	-284(ra) # 80005554 <_Z8printIntiii>
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	f5850513          	addi	a0,a0,-168 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	d24080e7          	jalr	-732(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003688:	0014849b          	addiw	s1,s1,1
    8000368c:	0ff4f493          	andi	s1,s1,255
    80003690:	00200793          	li	a5,2
    80003694:	fc97f0e3          	bgeu	a5,s1,80003654 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	d3050513          	addi	a0,a0,-720 # 800093c8 <_ZZ12printIntegermE6digits+0x118>
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	d04080e7          	jalr	-764(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800036a8:	00700313          	li	t1,7
    thread_dispatch();
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	ce0080e7          	jalr	-800(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800036b4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800036b8:	00006517          	auipc	a0,0x6
    800036bc:	d2050513          	addi	a0,a0,-736 # 800093d8 <_ZZ12printIntegermE6digits+0x128>
    800036c0:	00002097          	auipc	ra,0x2
    800036c4:	ce4080e7          	jalr	-796(ra) # 800053a4 <_Z11printStringPKc>
    800036c8:	00000613          	li	a2,0
    800036cc:	00a00593          	li	a1,10
    800036d0:	0009051b          	sext.w	a0,s2
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	e80080e7          	jalr	-384(ra) # 80005554 <_Z8printIntiii>
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	ef450513          	addi	a0,a0,-268 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	cc0080e7          	jalr	-832(ra) # 800053a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800036ec:	00c00513          	li	a0,12
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	d30080e7          	jalr	-720(ra) # 80003420 <_ZL9fibonaccim>
    800036f8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	a1c50513          	addi	a0,a0,-1508 # 80009118 <CONSOLE_STATUS+0x108>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	ca0080e7          	jalr	-864(ra) # 800053a4 <_Z11printStringPKc>
    8000370c:	00000613          	li	a2,0
    80003710:	00a00593          	li	a1,10
    80003714:	0009051b          	sext.w	a0,s2
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	e3c080e7          	jalr	-452(ra) # 80005554 <_Z8printIntiii>
    80003720:	00006517          	auipc	a0,0x6
    80003724:	eb050513          	addi	a0,a0,-336 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	c7c080e7          	jalr	-900(ra) # 800053a4 <_Z11printStringPKc>
    80003730:	0400006f          	j	80003770 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003734:	00006517          	auipc	a0,0x6
    80003738:	9cc50513          	addi	a0,a0,-1588 # 80009100 <CONSOLE_STATUS+0xf0>
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	c68080e7          	jalr	-920(ra) # 800053a4 <_Z11printStringPKc>
    80003744:	00000613          	li	a2,0
    80003748:	00a00593          	li	a1,10
    8000374c:	00048513          	mv	a0,s1
    80003750:	00002097          	auipc	ra,0x2
    80003754:	e04080e7          	jalr	-508(ra) # 80005554 <_Z8printIntiii>
    80003758:	00006517          	auipc	a0,0x6
    8000375c:	e7850513          	addi	a0,a0,-392 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80003760:	00002097          	auipc	ra,0x2
    80003764:	c44080e7          	jalr	-956(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003768:	0014849b          	addiw	s1,s1,1
    8000376c:	0ff4f493          	andi	s1,s1,255
    80003770:	00500793          	li	a5,5
    80003774:	fc97f0e3          	bgeu	a5,s1,80003734 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003778:	00006517          	auipc	a0,0x6
    8000377c:	c3050513          	addi	a0,a0,-976 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    80003780:	00002097          	auipc	ra,0x2
    80003784:	c24080e7          	jalr	-988(ra) # 800053a4 <_Z11printStringPKc>
    finishedC = true;
    80003788:	00100793          	li	a5,1
    8000378c:	00008717          	auipc	a4,0x8
    80003790:	04f70f23          	sb	a5,94(a4) # 8000b7ea <_ZL9finishedC>
    thread_dispatch();
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	bf8080e7          	jalr	-1032(ra) # 8000138c <_Z15thread_dispatchv>
}
    8000379c:	01813083          	ld	ra,24(sp)
    800037a0:	01013403          	ld	s0,16(sp)
    800037a4:	00813483          	ld	s1,8(sp)
    800037a8:	00013903          	ld	s2,0(sp)
    800037ac:	02010113          	addi	sp,sp,32
    800037b0:	00008067          	ret

00000000800037b4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800037b4:	fe010113          	addi	sp,sp,-32
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00913423          	sd	s1,8(sp)
    800037c4:	01213023          	sd	s2,0(sp)
    800037c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800037cc:	00a00493          	li	s1,10
    800037d0:	0400006f          	j	80003810 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800037d4:	00006517          	auipc	a0,0x6
    800037d8:	c0c50513          	addi	a0,a0,-1012 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	bc8080e7          	jalr	-1080(ra) # 800053a4 <_Z11printStringPKc>
    800037e4:	00000613          	li	a2,0
    800037e8:	00a00593          	li	a1,10
    800037ec:	00048513          	mv	a0,s1
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	d64080e7          	jalr	-668(ra) # 80005554 <_Z8printIntiii>
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	dd850513          	addi	a0,a0,-552 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	ba4080e7          	jalr	-1116(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003808:	0014849b          	addiw	s1,s1,1
    8000380c:	0ff4f493          	andi	s1,s1,255
    80003810:	00c00793          	li	a5,12
    80003814:	fc97f0e3          	bgeu	a5,s1,800037d4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003818:	00006517          	auipc	a0,0x6
    8000381c:	bd050513          	addi	a0,a0,-1072 # 800093e8 <_ZZ12printIntegermE6digits+0x138>
    80003820:	00002097          	auipc	ra,0x2
    80003824:	b84080e7          	jalr	-1148(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003828:	00500313          	li	t1,5
    thread_dispatch();
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	b60080e7          	jalr	-1184(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003834:	01000513          	li	a0,16
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	be8080e7          	jalr	-1048(ra) # 80003420 <_ZL9fibonaccim>
    80003840:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003844:	00006517          	auipc	a0,0x6
    80003848:	bb450513          	addi	a0,a0,-1100 # 800093f8 <_ZZ12printIntegermE6digits+0x148>
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	b58080e7          	jalr	-1192(ra) # 800053a4 <_Z11printStringPKc>
    80003854:	00000613          	li	a2,0
    80003858:	00a00593          	li	a1,10
    8000385c:	0009051b          	sext.w	a0,s2
    80003860:	00002097          	auipc	ra,0x2
    80003864:	cf4080e7          	jalr	-780(ra) # 80005554 <_Z8printIntiii>
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	d6850513          	addi	a0,a0,-664 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	b34080e7          	jalr	-1228(ra) # 800053a4 <_Z11printStringPKc>
    80003878:	0400006f          	j	800038b8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000387c:	00006517          	auipc	a0,0x6
    80003880:	b6450513          	addi	a0,a0,-1180 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    80003884:	00002097          	auipc	ra,0x2
    80003888:	b20080e7          	jalr	-1248(ra) # 800053a4 <_Z11printStringPKc>
    8000388c:	00000613          	li	a2,0
    80003890:	00a00593          	li	a1,10
    80003894:	00048513          	mv	a0,s1
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	cbc080e7          	jalr	-836(ra) # 80005554 <_Z8printIntiii>
    800038a0:	00006517          	auipc	a0,0x6
    800038a4:	d3050513          	addi	a0,a0,-720 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	afc080e7          	jalr	-1284(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800038b0:	0014849b          	addiw	s1,s1,1
    800038b4:	0ff4f493          	andi	s1,s1,255
    800038b8:	00f00793          	li	a5,15
    800038bc:	fc97f0e3          	bgeu	a5,s1,8000387c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800038c0:	00006517          	auipc	a0,0x6
    800038c4:	b4850513          	addi	a0,a0,-1208 # 80009408 <_ZZ12printIntegermE6digits+0x158>
    800038c8:	00002097          	auipc	ra,0x2
    800038cc:	adc080e7          	jalr	-1316(ra) # 800053a4 <_Z11printStringPKc>
    finishedD = true;
    800038d0:	00100793          	li	a5,1
    800038d4:	00008717          	auipc	a4,0x8
    800038d8:	f0f70ba3          	sb	a5,-233(a4) # 8000b7eb <_ZL9finishedD>
    thread_dispatch();
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	ab0080e7          	jalr	-1360(ra) # 8000138c <_Z15thread_dispatchv>
}
    800038e4:	01813083          	ld	ra,24(sp)
    800038e8:	01013403          	ld	s0,16(sp)
    800038ec:	00813483          	ld	s1,8(sp)
    800038f0:	00013903          	ld	s2,0(sp)
    800038f4:	02010113          	addi	sp,sp,32
    800038f8:	00008067          	ret

00000000800038fc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800038fc:	fc010113          	addi	sp,sp,-64
    80003900:	02113c23          	sd	ra,56(sp)
    80003904:	02813823          	sd	s0,48(sp)
    80003908:	02913423          	sd	s1,40(sp)
    8000390c:	03213023          	sd	s2,32(sp)
    80003910:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003914:	02000513          	li	a0,32
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	830080e7          	jalr	-2000(ra) # 80002148 <_Znwm>
    80003920:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	a68080e7          	jalr	-1432(ra) # 8000238c <_ZN6ThreadC1Ev>
    8000392c:	00008797          	auipc	a5,0x8
    80003930:	c4478793          	addi	a5,a5,-956 # 8000b570 <_ZTV7WorkerA+0x10>
    80003934:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003938:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000393c:	00006517          	auipc	a0,0x6
    80003940:	adc50513          	addi	a0,a0,-1316 # 80009418 <_ZZ12printIntegermE6digits+0x168>
    80003944:	00002097          	auipc	ra,0x2
    80003948:	a60080e7          	jalr	-1440(ra) # 800053a4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000394c:	02000513          	li	a0,32
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	7f8080e7          	jalr	2040(ra) # 80002148 <_Znwm>
    80003958:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	a30080e7          	jalr	-1488(ra) # 8000238c <_ZN6ThreadC1Ev>
    80003964:	00008797          	auipc	a5,0x8
    80003968:	c3478793          	addi	a5,a5,-972 # 8000b598 <_ZTV7WorkerB+0x10>
    8000396c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003970:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003974:	00006517          	auipc	a0,0x6
    80003978:	abc50513          	addi	a0,a0,-1348 # 80009430 <_ZZ12printIntegermE6digits+0x180>
    8000397c:	00002097          	auipc	ra,0x2
    80003980:	a28080e7          	jalr	-1496(ra) # 800053a4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003984:	02000513          	li	a0,32
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	7c0080e7          	jalr	1984(ra) # 80002148 <_Znwm>
    80003990:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003994:	fffff097          	auipc	ra,0xfffff
    80003998:	9f8080e7          	jalr	-1544(ra) # 8000238c <_ZN6ThreadC1Ev>
    8000399c:	00008797          	auipc	a5,0x8
    800039a0:	c2478793          	addi	a5,a5,-988 # 8000b5c0 <_ZTV7WorkerC+0x10>
    800039a4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800039a8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800039ac:	00006517          	auipc	a0,0x6
    800039b0:	a9c50513          	addi	a0,a0,-1380 # 80009448 <_ZZ12printIntegermE6digits+0x198>
    800039b4:	00002097          	auipc	ra,0x2
    800039b8:	9f0080e7          	jalr	-1552(ra) # 800053a4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800039bc:	02000513          	li	a0,32
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	788080e7          	jalr	1928(ra) # 80002148 <_Znwm>
    800039c8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800039cc:	fffff097          	auipc	ra,0xfffff
    800039d0:	9c0080e7          	jalr	-1600(ra) # 8000238c <_ZN6ThreadC1Ev>
    800039d4:	00008797          	auipc	a5,0x8
    800039d8:	c1478793          	addi	a5,a5,-1004 # 8000b5e8 <_ZTV7WorkerD+0x10>
    800039dc:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800039e0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800039e4:	00006517          	auipc	a0,0x6
    800039e8:	a7c50513          	addi	a0,a0,-1412 # 80009460 <_ZZ12printIntegermE6digits+0x1b0>
    800039ec:	00002097          	auipc	ra,0x2
    800039f0:	9b8080e7          	jalr	-1608(ra) # 800053a4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800039f4:	00000493          	li	s1,0
    800039f8:	00300793          	li	a5,3
    800039fc:	0297c663          	blt	a5,s1,80003a28 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003a00:	00349793          	slli	a5,s1,0x3
    80003a04:	fe040713          	addi	a4,s0,-32
    80003a08:	00f707b3          	add	a5,a4,a5
    80003a0c:	fe07b503          	ld	a0,-32(a5)
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	900080e7          	jalr	-1792(ra) # 80002310 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003a18:	0014849b          	addiw	s1,s1,1
    80003a1c:	fddff06f          	j	800039f8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	928080e7          	jalr	-1752(ra) # 80002348 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003a28:	00008797          	auipc	a5,0x8
    80003a2c:	dc07c783          	lbu	a5,-576(a5) # 8000b7e8 <_ZL9finishedA>
    80003a30:	fe0788e3          	beqz	a5,80003a20 <_Z20Threads_CPP_API_testv+0x124>
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	db57c783          	lbu	a5,-587(a5) # 8000b7e9 <_ZL9finishedB>
    80003a3c:	fe0782e3          	beqz	a5,80003a20 <_Z20Threads_CPP_API_testv+0x124>
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	daa7c783          	lbu	a5,-598(a5) # 8000b7ea <_ZL9finishedC>
    80003a48:	fc078ce3          	beqz	a5,80003a20 <_Z20Threads_CPP_API_testv+0x124>
    80003a4c:	00008797          	auipc	a5,0x8
    80003a50:	d9f7c783          	lbu	a5,-609(a5) # 8000b7eb <_ZL9finishedD>
    80003a54:	fc0786e3          	beqz	a5,80003a20 <_Z20Threads_CPP_API_testv+0x124>
    80003a58:	fc040493          	addi	s1,s0,-64
    80003a5c:	0080006f          	j	80003a64 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003a60:	00848493          	addi	s1,s1,8
    80003a64:	fe040793          	addi	a5,s0,-32
    80003a68:	08f48663          	beq	s1,a5,80003af4 <_Z20Threads_CPP_API_testv+0x1f8>
    80003a6c:	0004b503          	ld	a0,0(s1)
    80003a70:	fe0508e3          	beqz	a0,80003a60 <_Z20Threads_CPP_API_testv+0x164>
    80003a74:	00053783          	ld	a5,0(a0)
    80003a78:	0087b783          	ld	a5,8(a5)
    80003a7c:	000780e7          	jalr	a5
    80003a80:	fe1ff06f          	j	80003a60 <_Z20Threads_CPP_API_testv+0x164>
    80003a84:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	70c080e7          	jalr	1804(ra) # 80002198 <_ZdlPv>
    80003a94:	00090513          	mv	a0,s2
    80003a98:	00009097          	auipc	ra,0x9
    80003a9c:	e60080e7          	jalr	-416(ra) # 8000c8f8 <_Unwind_Resume>
    80003aa0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	6f0080e7          	jalr	1776(ra) # 80002198 <_ZdlPv>
    80003ab0:	00090513          	mv	a0,s2
    80003ab4:	00009097          	auipc	ra,0x9
    80003ab8:	e44080e7          	jalr	-444(ra) # 8000c8f8 <_Unwind_Resume>
    80003abc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	6d4080e7          	jalr	1748(ra) # 80002198 <_ZdlPv>
    80003acc:	00090513          	mv	a0,s2
    80003ad0:	00009097          	auipc	ra,0x9
    80003ad4:	e28080e7          	jalr	-472(ra) # 8000c8f8 <_Unwind_Resume>
    80003ad8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003adc:	00048513          	mv	a0,s1
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	6b8080e7          	jalr	1720(ra) # 80002198 <_ZdlPv>
    80003ae8:	00090513          	mv	a0,s2
    80003aec:	00009097          	auipc	ra,0x9
    80003af0:	e0c080e7          	jalr	-500(ra) # 8000c8f8 <_Unwind_Resume>
}
    80003af4:	03813083          	ld	ra,56(sp)
    80003af8:	03013403          	ld	s0,48(sp)
    80003afc:	02813483          	ld	s1,40(sp)
    80003b00:	02013903          	ld	s2,32(sp)
    80003b04:	04010113          	addi	sp,sp,64
    80003b08:	00008067          	ret

0000000080003b0c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00113423          	sd	ra,8(sp)
    80003b14:	00813023          	sd	s0,0(sp)
    80003b18:	01010413          	addi	s0,sp,16
    80003b1c:	00008797          	auipc	a5,0x8
    80003b20:	a5478793          	addi	a5,a5,-1452 # 8000b570 <_ZTV7WorkerA+0x10>
    80003b24:	00f53023          	sd	a5,0(a0)
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	6c0080e7          	jalr	1728(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003b30:	00813083          	ld	ra,8(sp)
    80003b34:	00013403          	ld	s0,0(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <_ZN7WorkerAD0Ev>:
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00813823          	sd	s0,16(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	00050493          	mv	s1,a0
    80003b58:	00008797          	auipc	a5,0x8
    80003b5c:	a1878793          	addi	a5,a5,-1512 # 8000b570 <_ZTV7WorkerA+0x10>
    80003b60:	00f53023          	sd	a5,0(a0)
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	684080e7          	jalr	1668(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003b6c:	00048513          	mv	a0,s1
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	628080e7          	jalr	1576(ra) # 80002198 <_ZdlPv>
    80003b78:	01813083          	ld	ra,24(sp)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret

0000000080003b8c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003b8c:	ff010113          	addi	sp,sp,-16
    80003b90:	00113423          	sd	ra,8(sp)
    80003b94:	00813023          	sd	s0,0(sp)
    80003b98:	01010413          	addi	s0,sp,16
    80003b9c:	00008797          	auipc	a5,0x8
    80003ba0:	9fc78793          	addi	a5,a5,-1540 # 8000b598 <_ZTV7WorkerB+0x10>
    80003ba4:	00f53023          	sd	a5,0(a0)
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	640080e7          	jalr	1600(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003bb0:	00813083          	ld	ra,8(sp)
    80003bb4:	00013403          	ld	s0,0(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN7WorkerBD0Ev>:
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00813823          	sd	s0,16(sp)
    80003bcc:	00913423          	sd	s1,8(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    80003bd4:	00050493          	mv	s1,a0
    80003bd8:	00008797          	auipc	a5,0x8
    80003bdc:	9c078793          	addi	a5,a5,-1600 # 8000b598 <_ZTV7WorkerB+0x10>
    80003be0:	00f53023          	sd	a5,0(a0)
    80003be4:	ffffe097          	auipc	ra,0xffffe
    80003be8:	604080e7          	jalr	1540(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	5a8080e7          	jalr	1448(ra) # 80002198 <_ZdlPv>
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	01013403          	ld	s0,16(sp)
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003c0c:	ff010113          	addi	sp,sp,-16
    80003c10:	00113423          	sd	ra,8(sp)
    80003c14:	00813023          	sd	s0,0(sp)
    80003c18:	01010413          	addi	s0,sp,16
    80003c1c:	00008797          	auipc	a5,0x8
    80003c20:	9a478793          	addi	a5,a5,-1628 # 8000b5c0 <_ZTV7WorkerC+0x10>
    80003c24:	00f53023          	sd	a5,0(a0)
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	5c0080e7          	jalr	1472(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003c30:	00813083          	ld	ra,8(sp)
    80003c34:	00013403          	ld	s0,0(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN7WorkerCD0Ev>:
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	00050493          	mv	s1,a0
    80003c58:	00008797          	auipc	a5,0x8
    80003c5c:	96878793          	addi	a5,a5,-1688 # 8000b5c0 <_ZTV7WorkerC+0x10>
    80003c60:	00f53023          	sd	a5,0(a0)
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	584080e7          	jalr	1412(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	528080e7          	jalr	1320(ra) # 80002198 <_ZdlPv>
    80003c78:	01813083          	ld	ra,24(sp)
    80003c7c:	01013403          	ld	s0,16(sp)
    80003c80:	00813483          	ld	s1,8(sp)
    80003c84:	02010113          	addi	sp,sp,32
    80003c88:	00008067          	ret

0000000080003c8c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00113423          	sd	ra,8(sp)
    80003c94:	00813023          	sd	s0,0(sp)
    80003c98:	01010413          	addi	s0,sp,16
    80003c9c:	00008797          	auipc	a5,0x8
    80003ca0:	94c78793          	addi	a5,a5,-1716 # 8000b5e8 <_ZTV7WorkerD+0x10>
    80003ca4:	00f53023          	sd	a5,0(a0)
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	540080e7          	jalr	1344(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003cb0:	00813083          	ld	ra,8(sp)
    80003cb4:	00013403          	ld	s0,0(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN7WorkerDD0Ev>:
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	00050493          	mv	s1,a0
    80003cd8:	00008797          	auipc	a5,0x8
    80003cdc:	91078793          	addi	a5,a5,-1776 # 8000b5e8 <_ZTV7WorkerD+0x10>
    80003ce0:	00f53023          	sd	a5,0(a0)
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	504080e7          	jalr	1284(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	4a8080e7          	jalr	1192(ra) # 80002198 <_ZdlPv>
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	02010113          	addi	sp,sp,32
    80003d08:	00008067          	ret

0000000080003d0c <_ZN7WorkerA3runEv>:
    void run() override {
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00113423          	sd	ra,8(sp)
    80003d14:	00813023          	sd	s0,0(sp)
    80003d18:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003d1c:	00000593          	li	a1,0
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	774080e7          	jalr	1908(ra) # 80003494 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <_ZN7WorkerB3runEv>:
    void run() override {
    80003d38:	ff010113          	addi	sp,sp,-16
    80003d3c:	00113423          	sd	ra,8(sp)
    80003d40:	00813023          	sd	s0,0(sp)
    80003d44:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003d48:	00000593          	li	a1,0
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	814080e7          	jalr	-2028(ra) # 80003560 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003d54:	00813083          	ld	ra,8(sp)
    80003d58:	00013403          	ld	s0,0(sp)
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <_ZN7WorkerC3runEv>:
    void run() override {
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00113423          	sd	ra,8(sp)
    80003d6c:	00813023          	sd	s0,0(sp)
    80003d70:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003d74:	00000593          	li	a1,0
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	8bc080e7          	jalr	-1860(ra) # 80003634 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003d80:	00813083          	ld	ra,8(sp)
    80003d84:	00013403          	ld	s0,0(sp)
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00008067          	ret

0000000080003d90 <_ZN7WorkerD3runEv>:
    void run() override {
    80003d90:	ff010113          	addi	sp,sp,-16
    80003d94:	00113423          	sd	ra,8(sp)
    80003d98:	00813023          	sd	s0,0(sp)
    80003d9c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003da0:	00000593          	li	a1,0
    80003da4:	00000097          	auipc	ra,0x0
    80003da8:	a10080e7          	jalr	-1520(ra) # 800037b4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003dac:	00813083          	ld	ra,8(sp)
    80003db0:	00013403          	ld	s0,0(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret

0000000080003dbc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003dbc:	f8010113          	addi	sp,sp,-128
    80003dc0:	06113c23          	sd	ra,120(sp)
    80003dc4:	06813823          	sd	s0,112(sp)
    80003dc8:	06913423          	sd	s1,104(sp)
    80003dcc:	07213023          	sd	s2,96(sp)
    80003dd0:	05313c23          	sd	s3,88(sp)
    80003dd4:	05413823          	sd	s4,80(sp)
    80003dd8:	05513423          	sd	s5,72(sp)
    80003ddc:	05613023          	sd	s6,64(sp)
    80003de0:	03713c23          	sd	s7,56(sp)
    80003de4:	03813823          	sd	s8,48(sp)
    80003de8:	03913423          	sd	s9,40(sp)
    80003dec:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003df0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003df4:	00005517          	auipc	a0,0x5
    80003df8:	4cc50513          	addi	a0,a0,1228 # 800092c0 <_ZZ12printIntegermE6digits+0x10>
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	5a8080e7          	jalr	1448(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    80003e04:	01e00593          	li	a1,30
    80003e08:	f8040493          	addi	s1,s0,-128
    80003e0c:	00048513          	mv	a0,s1
    80003e10:	00001097          	auipc	ra,0x1
    80003e14:	61c080e7          	jalr	1564(ra) # 8000542c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003e18:	00048513          	mv	a0,s1
    80003e1c:	00001097          	auipc	ra,0x1
    80003e20:	6e8080e7          	jalr	1768(ra) # 80005504 <_Z11stringToIntPKc>
    80003e24:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	4b850513          	addi	a0,a0,1208 # 800092e0 <_ZZ12printIntegermE6digits+0x30>
    80003e30:	00001097          	auipc	ra,0x1
    80003e34:	574080e7          	jalr	1396(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    80003e38:	01e00593          	li	a1,30
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	00001097          	auipc	ra,0x1
    80003e44:	5ec080e7          	jalr	1516(ra) # 8000542c <_Z9getStringPci>
    n = stringToInt(input);
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	6b8080e7          	jalr	1720(ra) # 80005504 <_Z11stringToIntPKc>
    80003e54:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003e58:	00005517          	auipc	a0,0x5
    80003e5c:	4a850513          	addi	a0,a0,1192 # 80009300 <_ZZ12printIntegermE6digits+0x50>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	544080e7          	jalr	1348(ra) # 800053a4 <_Z11printStringPKc>
    printInt(threadNum);
    80003e68:	00000613          	li	a2,0
    80003e6c:	00a00593          	li	a1,10
    80003e70:	00098513          	mv	a0,s3
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	6e0080e7          	jalr	1760(ra) # 80005554 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003e7c:	00005517          	auipc	a0,0x5
    80003e80:	49c50513          	addi	a0,a0,1180 # 80009318 <_ZZ12printIntegermE6digits+0x68>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	520080e7          	jalr	1312(ra) # 800053a4 <_Z11printStringPKc>
    printInt(n);
    80003e8c:	00000613          	li	a2,0
    80003e90:	00a00593          	li	a1,10
    80003e94:	00048513          	mv	a0,s1
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	6bc080e7          	jalr	1724(ra) # 80005554 <_Z8printIntiii>
    printString(".\n");
    80003ea0:	00005517          	auipc	a0,0x5
    80003ea4:	49050513          	addi	a0,a0,1168 # 80009330 <_ZZ12printIntegermE6digits+0x80>
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	4fc080e7          	jalr	1276(ra) # 800053a4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003eb0:	0334c463          	blt	s1,s3,80003ed8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003eb4:	03305c63          	blez	s3,80003eec <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003eb8:	03800513          	li	a0,56
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	28c080e7          	jalr	652(ra) # 80002148 <_Znwm>
    80003ec4:	00050a93          	mv	s5,a0
    80003ec8:	00048593          	mv	a1,s1
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	7a8080e7          	jalr	1960(ra) # 80005674 <_ZN9BufferCPPC1Ei>
    80003ed4:	0300006f          	j	80003f04 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	46050513          	addi	a0,a0,1120 # 80009338 <_ZZ12printIntegermE6digits+0x88>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	4c4080e7          	jalr	1220(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80003ee8:	0140006f          	j	80003efc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	48c50513          	addi	a0,a0,1164 # 80009378 <_ZZ12printIntegermE6digits+0xc8>
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	4b0080e7          	jalr	1200(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80003efc:	000c0113          	mv	sp,s8
    80003f00:	2140006f          	j	80004114 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003f04:	01000513          	li	a0,16
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	240080e7          	jalr	576(ra) # 80002148 <_Znwm>
    80003f10:	00050913          	mv	s2,a0
    80003f14:	00000593          	li	a1,0
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	4a8080e7          	jalr	1192(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80003f20:	00008797          	auipc	a5,0x8
    80003f24:	8d27bc23          	sd	s2,-1832(a5) # 8000b7f8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003f28:	00399793          	slli	a5,s3,0x3
    80003f2c:	00f78793          	addi	a5,a5,15
    80003f30:	ff07f793          	andi	a5,a5,-16
    80003f34:	40f10133          	sub	sp,sp,a5
    80003f38:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003f3c:	0019871b          	addiw	a4,s3,1
    80003f40:	00171793          	slli	a5,a4,0x1
    80003f44:	00e787b3          	add	a5,a5,a4
    80003f48:	00379793          	slli	a5,a5,0x3
    80003f4c:	00f78793          	addi	a5,a5,15
    80003f50:	ff07f793          	andi	a5,a5,-16
    80003f54:	40f10133          	sub	sp,sp,a5
    80003f58:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003f5c:	00199493          	slli	s1,s3,0x1
    80003f60:	013484b3          	add	s1,s1,s3
    80003f64:	00349493          	slli	s1,s1,0x3
    80003f68:	009b04b3          	add	s1,s6,s1
    80003f6c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003f70:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003f74:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003f78:	02800513          	li	a0,40
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	1cc080e7          	jalr	460(ra) # 80002148 <_Znwm>
    80003f84:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	404080e7          	jalr	1028(ra) # 8000238c <_ZN6ThreadC1Ev>
    80003f90:	00007797          	auipc	a5,0x7
    80003f94:	6d078793          	addi	a5,a5,1744 # 8000b660 <_ZTV8Consumer+0x10>
    80003f98:	00fbb023          	sd	a5,0(s7)
    80003f9c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003fa0:	000b8513          	mv	a0,s7
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	36c080e7          	jalr	876(ra) # 80002310 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003fac:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003fb0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003fb4:	00008797          	auipc	a5,0x8
    80003fb8:	8447b783          	ld	a5,-1980(a5) # 8000b7f8 <_ZL10waitForAll>
    80003fbc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fc0:	02800513          	li	a0,40
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	184080e7          	jalr	388(ra) # 80002148 <_Znwm>
    80003fcc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	3bc080e7          	jalr	956(ra) # 8000238c <_ZN6ThreadC1Ev>
    80003fd8:	00007797          	auipc	a5,0x7
    80003fdc:	63878793          	addi	a5,a5,1592 # 8000b610 <_ZTV16ProducerKeyborad+0x10>
    80003fe0:	00f4b023          	sd	a5,0(s1)
    80003fe4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fe8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	320080e7          	jalr	800(ra) # 80002310 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ff8:	00100913          	li	s2,1
    80003ffc:	0300006f          	j	8000402c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004000:	00007797          	auipc	a5,0x7
    80004004:	63878793          	addi	a5,a5,1592 # 8000b638 <_ZTV8Producer+0x10>
    80004008:	00fcb023          	sd	a5,0(s9)
    8000400c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004010:	00391793          	slli	a5,s2,0x3
    80004014:	00fa07b3          	add	a5,s4,a5
    80004018:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000401c:	000c8513          	mv	a0,s9
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	2f0080e7          	jalr	752(ra) # 80002310 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004028:	0019091b          	addiw	s2,s2,1
    8000402c:	05395263          	bge	s2,s3,80004070 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004030:	00191493          	slli	s1,s2,0x1
    80004034:	012484b3          	add	s1,s1,s2
    80004038:	00349493          	slli	s1,s1,0x3
    8000403c:	009b04b3          	add	s1,s6,s1
    80004040:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004044:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004048:	00007797          	auipc	a5,0x7
    8000404c:	7b07b783          	ld	a5,1968(a5) # 8000b7f8 <_ZL10waitForAll>
    80004050:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004054:	02800513          	li	a0,40
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	0f0080e7          	jalr	240(ra) # 80002148 <_Znwm>
    80004060:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	328080e7          	jalr	808(ra) # 8000238c <_ZN6ThreadC1Ev>
    8000406c:	f95ff06f          	j	80004000 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	2d8080e7          	jalr	728(ra) # 80002348 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004078:	00000493          	li	s1,0
    8000407c:	0099ce63          	blt	s3,s1,80004098 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004080:	00007517          	auipc	a0,0x7
    80004084:	77853503          	ld	a0,1912(a0) # 8000b7f8 <_ZL10waitForAll>
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	370080e7          	jalr	880(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004090:	0014849b          	addiw	s1,s1,1
    80004094:	fe9ff06f          	j	8000407c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004098:	00007517          	auipc	a0,0x7
    8000409c:	76053503          	ld	a0,1888(a0) # 8000b7f8 <_ZL10waitForAll>
    800040a0:	00050863          	beqz	a0,800040b0 <_Z20testConsumerProducerv+0x2f4>
    800040a4:	00053783          	ld	a5,0(a0)
    800040a8:	0087b783          	ld	a5,8(a5)
    800040ac:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800040b0:	00000493          	li	s1,0
    800040b4:	0080006f          	j	800040bc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800040b8:	0014849b          	addiw	s1,s1,1
    800040bc:	0334d263          	bge	s1,s3,800040e0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800040c0:	00349793          	slli	a5,s1,0x3
    800040c4:	00fa07b3          	add	a5,s4,a5
    800040c8:	0007b503          	ld	a0,0(a5)
    800040cc:	fe0506e3          	beqz	a0,800040b8 <_Z20testConsumerProducerv+0x2fc>
    800040d0:	00053783          	ld	a5,0(a0)
    800040d4:	0087b783          	ld	a5,8(a5)
    800040d8:	000780e7          	jalr	a5
    800040dc:	fddff06f          	j	800040b8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800040e0:	000b8a63          	beqz	s7,800040f4 <_Z20testConsumerProducerv+0x338>
    800040e4:	000bb783          	ld	a5,0(s7)
    800040e8:	0087b783          	ld	a5,8(a5)
    800040ec:	000b8513          	mv	a0,s7
    800040f0:	000780e7          	jalr	a5
    delete buffer;
    800040f4:	000a8e63          	beqz	s5,80004110 <_Z20testConsumerProducerv+0x354>
    800040f8:	000a8513          	mv	a0,s5
    800040fc:	00002097          	auipc	ra,0x2
    80004100:	870080e7          	jalr	-1936(ra) # 8000596c <_ZN9BufferCPPD1Ev>
    80004104:	000a8513          	mv	a0,s5
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	090080e7          	jalr	144(ra) # 80002198 <_ZdlPv>
    80004110:	000c0113          	mv	sp,s8
}
    80004114:	f8040113          	addi	sp,s0,-128
    80004118:	07813083          	ld	ra,120(sp)
    8000411c:	07013403          	ld	s0,112(sp)
    80004120:	06813483          	ld	s1,104(sp)
    80004124:	06013903          	ld	s2,96(sp)
    80004128:	05813983          	ld	s3,88(sp)
    8000412c:	05013a03          	ld	s4,80(sp)
    80004130:	04813a83          	ld	s5,72(sp)
    80004134:	04013b03          	ld	s6,64(sp)
    80004138:	03813b83          	ld	s7,56(sp)
    8000413c:	03013c03          	ld	s8,48(sp)
    80004140:	02813c83          	ld	s9,40(sp)
    80004144:	08010113          	addi	sp,sp,128
    80004148:	00008067          	ret
    8000414c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004150:	000a8513          	mv	a0,s5
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	044080e7          	jalr	68(ra) # 80002198 <_ZdlPv>
    8000415c:	00048513          	mv	a0,s1
    80004160:	00008097          	auipc	ra,0x8
    80004164:	798080e7          	jalr	1944(ra) # 8000c8f8 <_Unwind_Resume>
    80004168:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000416c:	00090513          	mv	a0,s2
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	028080e7          	jalr	40(ra) # 80002198 <_ZdlPv>
    80004178:	00048513          	mv	a0,s1
    8000417c:	00008097          	auipc	ra,0x8
    80004180:	77c080e7          	jalr	1916(ra) # 8000c8f8 <_Unwind_Resume>
    80004184:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004188:	000b8513          	mv	a0,s7
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	00c080e7          	jalr	12(ra) # 80002198 <_ZdlPv>
    80004194:	00048513          	mv	a0,s1
    80004198:	00008097          	auipc	ra,0x8
    8000419c:	760080e7          	jalr	1888(ra) # 8000c8f8 <_Unwind_Resume>
    800041a0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800041a4:	00048513          	mv	a0,s1
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	ff0080e7          	jalr	-16(ra) # 80002198 <_ZdlPv>
    800041b0:	00090513          	mv	a0,s2
    800041b4:	00008097          	auipc	ra,0x8
    800041b8:	744080e7          	jalr	1860(ra) # 8000c8f8 <_Unwind_Resume>
    800041bc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800041c0:	000c8513          	mv	a0,s9
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	fd4080e7          	jalr	-44(ra) # 80002198 <_ZdlPv>
    800041cc:	00048513          	mv	a0,s1
    800041d0:	00008097          	auipc	ra,0x8
    800041d4:	728080e7          	jalr	1832(ra) # 8000c8f8 <_Unwind_Resume>

00000000800041d8 <_ZN8Consumer3runEv>:
    void run() override {
    800041d8:	fd010113          	addi	sp,sp,-48
    800041dc:	02113423          	sd	ra,40(sp)
    800041e0:	02813023          	sd	s0,32(sp)
    800041e4:	00913c23          	sd	s1,24(sp)
    800041e8:	01213823          	sd	s2,16(sp)
    800041ec:	01313423          	sd	s3,8(sp)
    800041f0:	03010413          	addi	s0,sp,48
    800041f4:	00050913          	mv	s2,a0
        int i = 0;
    800041f8:	00000993          	li	s3,0
    800041fc:	0100006f          	j	8000420c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004200:	00a00513          	li	a0,10
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	2b0080e7          	jalr	688(ra) # 800024b4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000420c:	00007797          	auipc	a5,0x7
    80004210:	5e47a783          	lw	a5,1508(a5) # 8000b7f0 <_ZL9threadEnd>
    80004214:	04079a63          	bnez	a5,80004268 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004218:	02093783          	ld	a5,32(s2)
    8000421c:	0087b503          	ld	a0,8(a5)
    80004220:	00001097          	auipc	ra,0x1
    80004224:	638080e7          	jalr	1592(ra) # 80005858 <_ZN9BufferCPP3getEv>
            i++;
    80004228:	0019849b          	addiw	s1,s3,1
    8000422c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004230:	0ff57513          	andi	a0,a0,255
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	280080e7          	jalr	640(ra) # 800024b4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000423c:	05000793          	li	a5,80
    80004240:	02f4e4bb          	remw	s1,s1,a5
    80004244:	fc0494e3          	bnez	s1,8000420c <_ZN8Consumer3runEv+0x34>
    80004248:	fb9ff06f          	j	80004200 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000424c:	02093783          	ld	a5,32(s2)
    80004250:	0087b503          	ld	a0,8(a5)
    80004254:	00001097          	auipc	ra,0x1
    80004258:	604080e7          	jalr	1540(ra) # 80005858 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000425c:	0ff57513          	andi	a0,a0,255
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	254080e7          	jalr	596(ra) # 800024b4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004268:	02093783          	ld	a5,32(s2)
    8000426c:	0087b503          	ld	a0,8(a5)
    80004270:	00001097          	auipc	ra,0x1
    80004274:	674080e7          	jalr	1652(ra) # 800058e4 <_ZN9BufferCPP6getCntEv>
    80004278:	fca04ae3          	bgtz	a0,8000424c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000427c:	02093783          	ld	a5,32(s2)
    80004280:	0107b503          	ld	a0,16(a5)
    80004284:	ffffe097          	auipc	ra,0xffffe
    80004288:	1a4080e7          	jalr	420(ra) # 80002428 <_ZN9Semaphore6signalEv>
    }
    8000428c:	02813083          	ld	ra,40(sp)
    80004290:	02013403          	ld	s0,32(sp)
    80004294:	01813483          	ld	s1,24(sp)
    80004298:	01013903          	ld	s2,16(sp)
    8000429c:	00813983          	ld	s3,8(sp)
    800042a0:	03010113          	addi	sp,sp,48
    800042a4:	00008067          	ret

00000000800042a8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
    800042b8:	00007797          	auipc	a5,0x7
    800042bc:	3a878793          	addi	a5,a5,936 # 8000b660 <_ZTV8Consumer+0x10>
    800042c0:	00f53023          	sd	a5,0(a0)
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	f24080e7          	jalr	-220(ra) # 800021e8 <_ZN6ThreadD1Ev>
    800042cc:	00813083          	ld	ra,8(sp)
    800042d0:	00013403          	ld	s0,0(sp)
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00008067          	ret

00000000800042dc <_ZN8ConsumerD0Ev>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00113c23          	sd	ra,24(sp)
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	02010413          	addi	s0,sp,32
    800042f0:	00050493          	mv	s1,a0
    800042f4:	00007797          	auipc	a5,0x7
    800042f8:	36c78793          	addi	a5,a5,876 # 8000b660 <_ZTV8Consumer+0x10>
    800042fc:	00f53023          	sd	a5,0(a0)
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	ee8080e7          	jalr	-280(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80004308:	00048513          	mv	a0,s1
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	e8c080e7          	jalr	-372(ra) # 80002198 <_ZdlPv>
    80004314:	01813083          	ld	ra,24(sp)
    80004318:	01013403          	ld	s0,16(sp)
    8000431c:	00813483          	ld	s1,8(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret

0000000080004328 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004328:	ff010113          	addi	sp,sp,-16
    8000432c:	00113423          	sd	ra,8(sp)
    80004330:	00813023          	sd	s0,0(sp)
    80004334:	01010413          	addi	s0,sp,16
    80004338:	00007797          	auipc	a5,0x7
    8000433c:	2d878793          	addi	a5,a5,728 # 8000b610 <_ZTV16ProducerKeyborad+0x10>
    80004340:	00f53023          	sd	a5,0(a0)
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	ea4080e7          	jalr	-348(ra) # 800021e8 <_ZN6ThreadD1Ev>
    8000434c:	00813083          	ld	ra,8(sp)
    80004350:	00013403          	ld	s0,0(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <_ZN16ProducerKeyboradD0Ev>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00113c23          	sd	ra,24(sp)
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00913423          	sd	s1,8(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	00050493          	mv	s1,a0
    80004374:	00007797          	auipc	a5,0x7
    80004378:	29c78793          	addi	a5,a5,668 # 8000b610 <_ZTV16ProducerKeyborad+0x10>
    8000437c:	00f53023          	sd	a5,0(a0)
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	e68080e7          	jalr	-408(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80004388:	00048513          	mv	a0,s1
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	e0c080e7          	jalr	-500(ra) # 80002198 <_ZdlPv>
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	02010113          	addi	sp,sp,32
    800043a4:	00008067          	ret

00000000800043a8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00113423          	sd	ra,8(sp)
    800043b0:	00813023          	sd	s0,0(sp)
    800043b4:	01010413          	addi	s0,sp,16
    800043b8:	00007797          	auipc	a5,0x7
    800043bc:	28078793          	addi	a5,a5,640 # 8000b638 <_ZTV8Producer+0x10>
    800043c0:	00f53023          	sd	a5,0(a0)
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	e24080e7          	jalr	-476(ra) # 800021e8 <_ZN6ThreadD1Ev>
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <_ZN8ProducerD0Ev>:
    800043dc:	fe010113          	addi	sp,sp,-32
    800043e0:	00113c23          	sd	ra,24(sp)
    800043e4:	00813823          	sd	s0,16(sp)
    800043e8:	00913423          	sd	s1,8(sp)
    800043ec:	02010413          	addi	s0,sp,32
    800043f0:	00050493          	mv	s1,a0
    800043f4:	00007797          	auipc	a5,0x7
    800043f8:	24478793          	addi	a5,a5,580 # 8000b638 <_ZTV8Producer+0x10>
    800043fc:	00f53023          	sd	a5,0(a0)
    80004400:	ffffe097          	auipc	ra,0xffffe
    80004404:	de8080e7          	jalr	-536(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80004408:	00048513          	mv	a0,s1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	d8c080e7          	jalr	-628(ra) # 80002198 <_ZdlPv>
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	02010413          	addi	s0,sp,32
    8000443c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004440:	ffffd097          	auipc	ra,0xffffd
    80004444:	0fc080e7          	jalr	252(ra) # 8000153c <_Z4getcv>
    80004448:	0005059b          	sext.w	a1,a0
    8000444c:	01b00793          	li	a5,27
    80004450:	00f58c63          	beq	a1,a5,80004468 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004454:	0204b783          	ld	a5,32(s1)
    80004458:	0087b503          	ld	a0,8(a5)
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	36c080e7          	jalr	876(ra) # 800057c8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004464:	fddff06f          	j	80004440 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004468:	00100793          	li	a5,1
    8000446c:	00007717          	auipc	a4,0x7
    80004470:	38f72223          	sw	a5,900(a4) # 8000b7f0 <_ZL9threadEnd>
        td->buffer->put('!');
    80004474:	0204b783          	ld	a5,32(s1)
    80004478:	02100593          	li	a1,33
    8000447c:	0087b503          	ld	a0,8(a5)
    80004480:	00001097          	auipc	ra,0x1
    80004484:	348080e7          	jalr	840(ra) # 800057c8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004488:	0204b783          	ld	a5,32(s1)
    8000448c:	0107b503          	ld	a0,16(a5)
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	f98080e7          	jalr	-104(ra) # 80002428 <_ZN9Semaphore6signalEv>
    }
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	02010113          	addi	sp,sp,32
    800044a8:	00008067          	ret

00000000800044ac <_ZN8Producer3runEv>:
    void run() override {
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00113c23          	sd	ra,24(sp)
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	01213023          	sd	s2,0(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	00050493          	mv	s1,a0
        int i = 0;
    800044c8:	00000913          	li	s2,0
        while (!threadEnd) {
    800044cc:	00007797          	auipc	a5,0x7
    800044d0:	3247a783          	lw	a5,804(a5) # 8000b7f0 <_ZL9threadEnd>
    800044d4:	04079263          	bnez	a5,80004518 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800044d8:	0204b783          	ld	a5,32(s1)
    800044dc:	0007a583          	lw	a1,0(a5)
    800044e0:	0305859b          	addiw	a1,a1,48
    800044e4:	0087b503          	ld	a0,8(a5)
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	2e0080e7          	jalr	736(ra) # 800057c8 <_ZN9BufferCPP3putEi>
            i++;
    800044f0:	0019071b          	addiw	a4,s2,1
    800044f4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800044f8:	0204b783          	ld	a5,32(s1)
    800044fc:	0007a783          	lw	a5,0(a5)
    80004500:	00e787bb          	addw	a5,a5,a4
    80004504:	00500513          	li	a0,5
    80004508:	02a7e53b          	remw	a0,a5,a0
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	e64080e7          	jalr	-412(ra) # 80002370 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004514:	fb9ff06f          	j	800044cc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004518:	0204b783          	ld	a5,32(s1)
    8000451c:	0107b503          	ld	a0,16(a5)
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	f08080e7          	jalr	-248(ra) # 80002428 <_ZN9Semaphore6signalEv>
    }
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	00013903          	ld	s2,0(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	01213023          	sd	s2,0(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000455c:	00100793          	li	a5,1
    80004560:	02a7f863          	bgeu	a5,a0,80004590 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004564:	00a00793          	li	a5,10
    80004568:	02f577b3          	remu	a5,a0,a5
    8000456c:	02078e63          	beqz	a5,800045a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004570:	fff48513          	addi	a0,s1,-1
    80004574:	00000097          	auipc	ra,0x0
    80004578:	fcc080e7          	jalr	-52(ra) # 80004540 <_ZL9fibonaccim>
    8000457c:	00050913          	mv	s2,a0
    80004580:	ffe48513          	addi	a0,s1,-2
    80004584:	00000097          	auipc	ra,0x0
    80004588:	fbc080e7          	jalr	-68(ra) # 80004540 <_ZL9fibonaccim>
    8000458c:	00a90533          	add	a0,s2,a0
}
    80004590:	01813083          	ld	ra,24(sp)
    80004594:	01013403          	ld	s0,16(sp)
    80004598:	00813483          	ld	s1,8(sp)
    8000459c:	00013903          	ld	s2,0(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	de4080e7          	jalr	-540(ra) # 8000138c <_Z15thread_dispatchv>
    800045b0:	fc1ff06f          	j	80004570 <_ZL9fibonaccim+0x30>

00000000800045b4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800045b4:	fe010113          	addi	sp,sp,-32
    800045b8:	00113c23          	sd	ra,24(sp)
    800045bc:	00813823          	sd	s0,16(sp)
    800045c0:	00913423          	sd	s1,8(sp)
    800045c4:	01213023          	sd	s2,0(sp)
    800045c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045cc:	00a00493          	li	s1,10
    800045d0:	0400006f          	j	80004610 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	e0c50513          	addi	a0,a0,-500 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	dc8080e7          	jalr	-568(ra) # 800053a4 <_Z11printStringPKc>
    800045e4:	00000613          	li	a2,0
    800045e8:	00a00593          	li	a1,10
    800045ec:	00048513          	mv	a0,s1
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	f64080e7          	jalr	-156(ra) # 80005554 <_Z8printIntiii>
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	fd850513          	addi	a0,a0,-40 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	da4080e7          	jalr	-604(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004608:	0014849b          	addiw	s1,s1,1
    8000460c:	0ff4f493          	andi	s1,s1,255
    80004610:	00c00793          	li	a5,12
    80004614:	fc97f0e3          	bgeu	a5,s1,800045d4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004618:	00005517          	auipc	a0,0x5
    8000461c:	dd050513          	addi	a0,a0,-560 # 800093e8 <_ZZ12printIntegermE6digits+0x138>
    80004620:	00001097          	auipc	ra,0x1
    80004624:	d84080e7          	jalr	-636(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004628:	00500313          	li	t1,5
    thread_dispatch();
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	d60080e7          	jalr	-672(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004634:	01000513          	li	a0,16
    80004638:	00000097          	auipc	ra,0x0
    8000463c:	f08080e7          	jalr	-248(ra) # 80004540 <_ZL9fibonaccim>
    80004640:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004644:	00005517          	auipc	a0,0x5
    80004648:	db450513          	addi	a0,a0,-588 # 800093f8 <_ZZ12printIntegermE6digits+0x148>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	d58080e7          	jalr	-680(ra) # 800053a4 <_Z11printStringPKc>
    80004654:	00000613          	li	a2,0
    80004658:	00a00593          	li	a1,10
    8000465c:	0009051b          	sext.w	a0,s2
    80004660:	00001097          	auipc	ra,0x1
    80004664:	ef4080e7          	jalr	-268(ra) # 80005554 <_Z8printIntiii>
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	f6850513          	addi	a0,a0,-152 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	d34080e7          	jalr	-716(ra) # 800053a4 <_Z11printStringPKc>
    80004678:	0400006f          	j	800046b8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	d6450513          	addi	a0,a0,-668 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	d20080e7          	jalr	-736(ra) # 800053a4 <_Z11printStringPKc>
    8000468c:	00000613          	li	a2,0
    80004690:	00a00593          	li	a1,10
    80004694:	00048513          	mv	a0,s1
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	ebc080e7          	jalr	-324(ra) # 80005554 <_Z8printIntiii>
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	f3050513          	addi	a0,a0,-208 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	cfc080e7          	jalr	-772(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800046b0:	0014849b          	addiw	s1,s1,1
    800046b4:	0ff4f493          	andi	s1,s1,255
    800046b8:	00f00793          	li	a5,15
    800046bc:	fc97f0e3          	bgeu	a5,s1,8000467c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800046c0:	00005517          	auipc	a0,0x5
    800046c4:	d4850513          	addi	a0,a0,-696 # 80009408 <_ZZ12printIntegermE6digits+0x158>
    800046c8:	00001097          	auipc	ra,0x1
    800046cc:	cdc080e7          	jalr	-804(ra) # 800053a4 <_Z11printStringPKc>
    finishedD = true;
    800046d0:	00100793          	li	a5,1
    800046d4:	00007717          	auipc	a4,0x7
    800046d8:	12f70623          	sb	a5,300(a4) # 8000b800 <_ZL9finishedD>
    thread_dispatch();
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	cb0080e7          	jalr	-848(ra) # 8000138c <_Z15thread_dispatchv>
}
    800046e4:	01813083          	ld	ra,24(sp)
    800046e8:	01013403          	ld	s0,16(sp)
    800046ec:	00813483          	ld	s1,8(sp)
    800046f0:	00013903          	ld	s2,0(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret

00000000800046fc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00113c23          	sd	ra,24(sp)
    80004704:	00813823          	sd	s0,16(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	01213023          	sd	s2,0(sp)
    80004710:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004714:	00000493          	li	s1,0
    80004718:	0400006f          	j	80004758 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000471c:	00005517          	auipc	a0,0x5
    80004720:	9e450513          	addi	a0,a0,-1564 # 80009100 <CONSOLE_STATUS+0xf0>
    80004724:	00001097          	auipc	ra,0x1
    80004728:	c80080e7          	jalr	-896(ra) # 800053a4 <_Z11printStringPKc>
    8000472c:	00000613          	li	a2,0
    80004730:	00a00593          	li	a1,10
    80004734:	00048513          	mv	a0,s1
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	e1c080e7          	jalr	-484(ra) # 80005554 <_Z8printIntiii>
    80004740:	00005517          	auipc	a0,0x5
    80004744:	e9050513          	addi	a0,a0,-368 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80004748:	00001097          	auipc	ra,0x1
    8000474c:	c5c080e7          	jalr	-932(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004750:	0014849b          	addiw	s1,s1,1
    80004754:	0ff4f493          	andi	s1,s1,255
    80004758:	00200793          	li	a5,2
    8000475c:	fc97f0e3          	bgeu	a5,s1,8000471c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	c6850513          	addi	a0,a0,-920 # 800093c8 <_ZZ12printIntegermE6digits+0x118>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	c3c080e7          	jalr	-964(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004770:	00700313          	li	t1,7
    thread_dispatch();
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	c18080e7          	jalr	-1000(ra) # 8000138c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000477c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004780:	00005517          	auipc	a0,0x5
    80004784:	c5850513          	addi	a0,a0,-936 # 800093d8 <_ZZ12printIntegermE6digits+0x128>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	c1c080e7          	jalr	-996(ra) # 800053a4 <_Z11printStringPKc>
    80004790:	00000613          	li	a2,0
    80004794:	00a00593          	li	a1,10
    80004798:	0009051b          	sext.w	a0,s2
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	db8080e7          	jalr	-584(ra) # 80005554 <_Z8printIntiii>
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	e2c50513          	addi	a0,a0,-468 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	bf8080e7          	jalr	-1032(ra) # 800053a4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800047b4:	00c00513          	li	a0,12
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	d88080e7          	jalr	-632(ra) # 80004540 <_ZL9fibonaccim>
    800047c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800047c4:	00005517          	auipc	a0,0x5
    800047c8:	95450513          	addi	a0,a0,-1708 # 80009118 <CONSOLE_STATUS+0x108>
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	bd8080e7          	jalr	-1064(ra) # 800053a4 <_Z11printStringPKc>
    800047d4:	00000613          	li	a2,0
    800047d8:	00a00593          	li	a1,10
    800047dc:	0009051b          	sext.w	a0,s2
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	d74080e7          	jalr	-652(ra) # 80005554 <_Z8printIntiii>
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	de850513          	addi	a0,a0,-536 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	bb4080e7          	jalr	-1100(ra) # 800053a4 <_Z11printStringPKc>
    800047f8:	0400006f          	j	80004838 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800047fc:	00005517          	auipc	a0,0x5
    80004800:	90450513          	addi	a0,a0,-1788 # 80009100 <CONSOLE_STATUS+0xf0>
    80004804:	00001097          	auipc	ra,0x1
    80004808:	ba0080e7          	jalr	-1120(ra) # 800053a4 <_Z11printStringPKc>
    8000480c:	00000613          	li	a2,0
    80004810:	00a00593          	li	a1,10
    80004814:	00048513          	mv	a0,s1
    80004818:	00001097          	auipc	ra,0x1
    8000481c:	d3c080e7          	jalr	-708(ra) # 80005554 <_Z8printIntiii>
    80004820:	00005517          	auipc	a0,0x5
    80004824:	db050513          	addi	a0,a0,-592 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	b7c080e7          	jalr	-1156(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004830:	0014849b          	addiw	s1,s1,1
    80004834:	0ff4f493          	andi	s1,s1,255
    80004838:	00500793          	li	a5,5
    8000483c:	fc97f0e3          	bgeu	a5,s1,800047fc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004840:	00005517          	auipc	a0,0x5
    80004844:	b6850513          	addi	a0,a0,-1176 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	b5c080e7          	jalr	-1188(ra) # 800053a4 <_Z11printStringPKc>
    finishedC = true;
    80004850:	00100793          	li	a5,1
    80004854:	00007717          	auipc	a4,0x7
    80004858:	faf706a3          	sb	a5,-83(a4) # 8000b801 <_ZL9finishedC>
    thread_dispatch();
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	b30080e7          	jalr	-1232(ra) # 8000138c <_Z15thread_dispatchv>
}
    80004864:	01813083          	ld	ra,24(sp)
    80004868:	01013403          	ld	s0,16(sp)
    8000486c:	00813483          	ld	s1,8(sp)
    80004870:	00013903          	ld	s2,0(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret

000000008000487c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000487c:	fe010113          	addi	sp,sp,-32
    80004880:	00113c23          	sd	ra,24(sp)
    80004884:	00813823          	sd	s0,16(sp)
    80004888:	00913423          	sd	s1,8(sp)
    8000488c:	01213023          	sd	s2,0(sp)
    80004890:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004894:	00000913          	li	s2,0
    80004898:	0380006f          	j	800048d0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	af0080e7          	jalr	-1296(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048a4:	00148493          	addi	s1,s1,1
    800048a8:	000027b7          	lui	a5,0x2
    800048ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800048b0:	0097ee63          	bltu	a5,s1,800048cc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048b4:	00000713          	li	a4,0
    800048b8:	000077b7          	lui	a5,0x7
    800048bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048c0:	fce7eee3          	bltu	a5,a4,8000489c <_ZL11workerBodyBPv+0x20>
    800048c4:	00170713          	addi	a4,a4,1
    800048c8:	ff1ff06f          	j	800048b8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800048cc:	00190913          	addi	s2,s2,1
    800048d0:	00f00793          	li	a5,15
    800048d4:	0527e063          	bltu	a5,s2,80004914 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800048d8:	00004517          	auipc	a0,0x4
    800048dc:	7b050513          	addi	a0,a0,1968 # 80009088 <CONSOLE_STATUS+0x78>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	ac4080e7          	jalr	-1340(ra) # 800053a4 <_Z11printStringPKc>
    800048e8:	00000613          	li	a2,0
    800048ec:	00a00593          	li	a1,10
    800048f0:	0009051b          	sext.w	a0,s2
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	c60080e7          	jalr	-928(ra) # 80005554 <_Z8printIntiii>
    800048fc:	00005517          	auipc	a0,0x5
    80004900:	cd450513          	addi	a0,a0,-812 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80004904:	00001097          	auipc	ra,0x1
    80004908:	aa0080e7          	jalr	-1376(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000490c:	00000493          	li	s1,0
    80004910:	f99ff06f          	j	800048a8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	aa450513          	addi	a0,a0,-1372 # 800093b8 <_ZZ12printIntegermE6digits+0x108>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	a88080e7          	jalr	-1400(ra) # 800053a4 <_Z11printStringPKc>
    finishedB = true;
    80004924:	00100793          	li	a5,1
    80004928:	00007717          	auipc	a4,0x7
    8000492c:	ecf70d23          	sb	a5,-294(a4) # 8000b802 <_ZL9finishedB>
    thread_dispatch();
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	a5c080e7          	jalr	-1444(ra) # 8000138c <_Z15thread_dispatchv>
}
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	00013903          	ld	s2,0(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret

0000000080004950 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004950:	fe010113          	addi	sp,sp,-32
    80004954:	00113c23          	sd	ra,24(sp)
    80004958:	00813823          	sd	s0,16(sp)
    8000495c:	00913423          	sd	s1,8(sp)
    80004960:	01213023          	sd	s2,0(sp)
    80004964:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004968:	00000913          	li	s2,0
    8000496c:	0380006f          	j	800049a4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	a1c080e7          	jalr	-1508(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004978:	00148493          	addi	s1,s1,1
    8000497c:	000027b7          	lui	a5,0x2
    80004980:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004984:	0097ee63          	bltu	a5,s1,800049a0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004988:	00000713          	li	a4,0
    8000498c:	000077b7          	lui	a5,0x7
    80004990:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004994:	fce7eee3          	bltu	a5,a4,80004970 <_ZL11workerBodyAPv+0x20>
    80004998:	00170713          	addi	a4,a4,1
    8000499c:	ff1ff06f          	j	8000498c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800049a0:	00190913          	addi	s2,s2,1
    800049a4:	00900793          	li	a5,9
    800049a8:	0527e063          	bltu	a5,s2,800049e8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800049ac:	00004517          	auipc	a0,0x4
    800049b0:	69c50513          	addi	a0,a0,1692 # 80009048 <CONSOLE_STATUS+0x38>
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	9f0080e7          	jalr	-1552(ra) # 800053a4 <_Z11printStringPKc>
    800049bc:	00000613          	li	a2,0
    800049c0:	00a00593          	li	a1,10
    800049c4:	0009051b          	sext.w	a0,s2
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	b8c080e7          	jalr	-1140(ra) # 80005554 <_Z8printIntiii>
    800049d0:	00005517          	auipc	a0,0x5
    800049d4:	c0050513          	addi	a0,a0,-1024 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	9cc080e7          	jalr	-1588(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049e0:	00000493          	li	s1,0
    800049e4:	f99ff06f          	j	8000497c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	9c050513          	addi	a0,a0,-1600 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	9b4080e7          	jalr	-1612(ra) # 800053a4 <_Z11printStringPKc>
    finishedA = true;
    800049f8:	00100793          	li	a5,1
    800049fc:	00007717          	auipc	a4,0x7
    80004a00:	e0f703a3          	sb	a5,-505(a4) # 8000b803 <_ZL9finishedA>
}
    80004a04:	01813083          	ld	ra,24(sp)
    80004a08:	01013403          	ld	s0,16(sp)
    80004a0c:	00813483          	ld	s1,8(sp)
    80004a10:	00013903          	ld	s2,0(sp)
    80004a14:	02010113          	addi	sp,sp,32
    80004a18:	00008067          	ret

0000000080004a1c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004a1c:	fd010113          	addi	sp,sp,-48
    80004a20:	02113423          	sd	ra,40(sp)
    80004a24:	02813023          	sd	s0,32(sp)
    80004a28:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004a2c:	00000613          	li	a2,0
    80004a30:	00000597          	auipc	a1,0x0
    80004a34:	f2058593          	addi	a1,a1,-224 # 80004950 <_ZL11workerBodyAPv>
    80004a38:	fd040513          	addi	a0,s0,-48
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	884080e7          	jalr	-1916(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004a44:	00005517          	auipc	a0,0x5
    80004a48:	9d450513          	addi	a0,a0,-1580 # 80009418 <_ZZ12printIntegermE6digits+0x168>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	958080e7          	jalr	-1704(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004a54:	00000613          	li	a2,0
    80004a58:	00000597          	auipc	a1,0x0
    80004a5c:	e2458593          	addi	a1,a1,-476 # 8000487c <_ZL11workerBodyBPv>
    80004a60:	fd840513          	addi	a0,s0,-40
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	85c080e7          	jalr	-1956(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004a6c:	00005517          	auipc	a0,0x5
    80004a70:	9c450513          	addi	a0,a0,-1596 # 80009430 <_ZZ12printIntegermE6digits+0x180>
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	930080e7          	jalr	-1744(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004a7c:	00000613          	li	a2,0
    80004a80:	00000597          	auipc	a1,0x0
    80004a84:	c7c58593          	addi	a1,a1,-900 # 800046fc <_ZL11workerBodyCPv>
    80004a88:	fe040513          	addi	a0,s0,-32
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	834080e7          	jalr	-1996(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004a94:	00005517          	auipc	a0,0x5
    80004a98:	9b450513          	addi	a0,a0,-1612 # 80009448 <_ZZ12printIntegermE6digits+0x198>
    80004a9c:	00001097          	auipc	ra,0x1
    80004aa0:	908080e7          	jalr	-1784(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004aa4:	00000613          	li	a2,0
    80004aa8:	00000597          	auipc	a1,0x0
    80004aac:	b0c58593          	addi	a1,a1,-1268 # 800045b4 <_ZL11workerBodyDPv>
    80004ab0:	fe840513          	addi	a0,s0,-24
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	80c080e7          	jalr	-2036(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004abc:	00005517          	auipc	a0,0x5
    80004ac0:	9a450513          	addi	a0,a0,-1628 # 80009460 <_ZZ12printIntegermE6digits+0x1b0>
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	8e0080e7          	jalr	-1824(ra) # 800053a4 <_Z11printStringPKc>
    80004acc:	00c0006f          	j	80004ad8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	8bc080e7          	jalr	-1860(ra) # 8000138c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ad8:	00007797          	auipc	a5,0x7
    80004adc:	d2b7c783          	lbu	a5,-725(a5) # 8000b803 <_ZL9finishedA>
    80004ae0:	fe0788e3          	beqz	a5,80004ad0 <_Z18Threads_C_API_testv+0xb4>
    80004ae4:	00007797          	auipc	a5,0x7
    80004ae8:	d1e7c783          	lbu	a5,-738(a5) # 8000b802 <_ZL9finishedB>
    80004aec:	fe0782e3          	beqz	a5,80004ad0 <_Z18Threads_C_API_testv+0xb4>
    80004af0:	00007797          	auipc	a5,0x7
    80004af4:	d117c783          	lbu	a5,-751(a5) # 8000b801 <_ZL9finishedC>
    80004af8:	fc078ce3          	beqz	a5,80004ad0 <_Z18Threads_C_API_testv+0xb4>
    80004afc:	00007797          	auipc	a5,0x7
    80004b00:	d047c783          	lbu	a5,-764(a5) # 8000b800 <_ZL9finishedD>
    80004b04:	fc0786e3          	beqz	a5,80004ad0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004b08:	02813083          	ld	ra,40(sp)
    80004b0c:	02013403          	ld	s0,32(sp)
    80004b10:	03010113          	addi	sp,sp,48
    80004b14:	00008067          	ret

0000000080004b18 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004b18:	fd010113          	addi	sp,sp,-48
    80004b1c:	02113423          	sd	ra,40(sp)
    80004b20:	02813023          	sd	s0,32(sp)
    80004b24:	00913c23          	sd	s1,24(sp)
    80004b28:	01213823          	sd	s2,16(sp)
    80004b2c:	01313423          	sd	s3,8(sp)
    80004b30:	03010413          	addi	s0,sp,48
    80004b34:	00050993          	mv	s3,a0
    80004b38:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004b3c:	00000913          	li	s2,0
    80004b40:	00c0006f          	j	80004b4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004b44:	ffffe097          	auipc	ra,0xffffe
    80004b48:	804080e7          	jalr	-2044(ra) # 80002348 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004b4c:	ffffd097          	auipc	ra,0xffffd
    80004b50:	9f0080e7          	jalr	-1552(ra) # 8000153c <_Z4getcv>
    80004b54:	0005059b          	sext.w	a1,a0
    80004b58:	01b00793          	li	a5,27
    80004b5c:	02f58a63          	beq	a1,a5,80004b90 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004b60:	0084b503          	ld	a0,8(s1)
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	c64080e7          	jalr	-924(ra) # 800057c8 <_ZN9BufferCPP3putEi>
        i++;
    80004b6c:	0019071b          	addiw	a4,s2,1
    80004b70:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004b74:	0004a683          	lw	a3,0(s1)
    80004b78:	0026979b          	slliw	a5,a3,0x2
    80004b7c:	00d787bb          	addw	a5,a5,a3
    80004b80:	0017979b          	slliw	a5,a5,0x1
    80004b84:	02f767bb          	remw	a5,a4,a5
    80004b88:	fc0792e3          	bnez	a5,80004b4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004b8c:	fb9ff06f          	j	80004b44 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004b90:	00100793          	li	a5,1
    80004b94:	00007717          	auipc	a4,0x7
    80004b98:	c6f72a23          	sw	a5,-908(a4) # 8000b808 <_ZL9threadEnd>
    td->buffer->put('!');
    80004b9c:	0209b783          	ld	a5,32(s3)
    80004ba0:	02100593          	li	a1,33
    80004ba4:	0087b503          	ld	a0,8(a5)
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	c20080e7          	jalr	-992(ra) # 800057c8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004bb0:	0104b503          	ld	a0,16(s1)
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	874080e7          	jalr	-1932(ra) # 80002428 <_ZN9Semaphore6signalEv>
}
    80004bbc:	02813083          	ld	ra,40(sp)
    80004bc0:	02013403          	ld	s0,32(sp)
    80004bc4:	01813483          	ld	s1,24(sp)
    80004bc8:	01013903          	ld	s2,16(sp)
    80004bcc:	00813983          	ld	s3,8(sp)
    80004bd0:	03010113          	addi	sp,sp,48
    80004bd4:	00008067          	ret

0000000080004bd8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00113c23          	sd	ra,24(sp)
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	01213023          	sd	s2,0(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004bf4:	00000913          	li	s2,0
    80004bf8:	00c0006f          	j	80004c04 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	74c080e7          	jalr	1868(ra) # 80002348 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004c04:	00007797          	auipc	a5,0x7
    80004c08:	c047a783          	lw	a5,-1020(a5) # 8000b808 <_ZL9threadEnd>
    80004c0c:	02079e63          	bnez	a5,80004c48 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004c10:	0004a583          	lw	a1,0(s1)
    80004c14:	0305859b          	addiw	a1,a1,48
    80004c18:	0084b503          	ld	a0,8(s1)
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	bac080e7          	jalr	-1108(ra) # 800057c8 <_ZN9BufferCPP3putEi>
        i++;
    80004c24:	0019071b          	addiw	a4,s2,1
    80004c28:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c2c:	0004a683          	lw	a3,0(s1)
    80004c30:	0026979b          	slliw	a5,a3,0x2
    80004c34:	00d787bb          	addw	a5,a5,a3
    80004c38:	0017979b          	slliw	a5,a5,0x1
    80004c3c:	02f767bb          	remw	a5,a4,a5
    80004c40:	fc0792e3          	bnez	a5,80004c04 <_ZN12ProducerSync8producerEPv+0x2c>
    80004c44:	fb9ff06f          	j	80004bfc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004c48:	0104b503          	ld	a0,16(s1)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	7dc080e7          	jalr	2012(ra) # 80002428 <_ZN9Semaphore6signalEv>
}
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	00013903          	ld	s2,0(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret

0000000080004c6c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004c6c:	fd010113          	addi	sp,sp,-48
    80004c70:	02113423          	sd	ra,40(sp)
    80004c74:	02813023          	sd	s0,32(sp)
    80004c78:	00913c23          	sd	s1,24(sp)
    80004c7c:	01213823          	sd	s2,16(sp)
    80004c80:	01313423          	sd	s3,8(sp)
    80004c84:	01413023          	sd	s4,0(sp)
    80004c88:	03010413          	addi	s0,sp,48
    80004c8c:	00050993          	mv	s3,a0
    80004c90:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c94:	00000a13          	li	s4,0
    80004c98:	01c0006f          	j	80004cb4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	6ac080e7          	jalr	1708(ra) # 80002348 <_ZN6Thread8dispatchEv>
    80004ca4:	0500006f          	j	80004cf4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004ca8:	00a00513          	li	a0,10
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	8c4080e7          	jalr	-1852(ra) # 80001570 <_Z4putcc>
    while (!threadEnd) {
    80004cb4:	00007797          	auipc	a5,0x7
    80004cb8:	b547a783          	lw	a5,-1196(a5) # 8000b808 <_ZL9threadEnd>
    80004cbc:	06079263          	bnez	a5,80004d20 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004cc0:	00893503          	ld	a0,8(s2)
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	b94080e7          	jalr	-1132(ra) # 80005858 <_ZN9BufferCPP3getEv>
        i++;
    80004ccc:	001a049b          	addiw	s1,s4,1
    80004cd0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004cd4:	0ff57513          	andi	a0,a0,255
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	898080e7          	jalr	-1896(ra) # 80001570 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004ce0:	00092703          	lw	a4,0(s2)
    80004ce4:	0027179b          	slliw	a5,a4,0x2
    80004ce8:	00e787bb          	addw	a5,a5,a4
    80004cec:	02f4e7bb          	remw	a5,s1,a5
    80004cf0:	fa0786e3          	beqz	a5,80004c9c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004cf4:	05000793          	li	a5,80
    80004cf8:	02f4e4bb          	remw	s1,s1,a5
    80004cfc:	fa049ce3          	bnez	s1,80004cb4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004d00:	fa9ff06f          	j	80004ca8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004d04:	0209b783          	ld	a5,32(s3)
    80004d08:	0087b503          	ld	a0,8(a5)
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	b4c080e7          	jalr	-1204(ra) # 80005858 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004d14:	0ff57513          	andi	a0,a0,255
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	79c080e7          	jalr	1948(ra) # 800024b4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004d20:	0209b783          	ld	a5,32(s3)
    80004d24:	0087b503          	ld	a0,8(a5)
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	bbc080e7          	jalr	-1092(ra) # 800058e4 <_ZN9BufferCPP6getCntEv>
    80004d30:	fca04ae3          	bgtz	a0,80004d04 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004d34:	01093503          	ld	a0,16(s2)
    80004d38:	ffffd097          	auipc	ra,0xffffd
    80004d3c:	6f0080e7          	jalr	1776(ra) # 80002428 <_ZN9Semaphore6signalEv>
}
    80004d40:	02813083          	ld	ra,40(sp)
    80004d44:	02013403          	ld	s0,32(sp)
    80004d48:	01813483          	ld	s1,24(sp)
    80004d4c:	01013903          	ld	s2,16(sp)
    80004d50:	00813983          	ld	s3,8(sp)
    80004d54:	00013a03          	ld	s4,0(sp)
    80004d58:	03010113          	addi	sp,sp,48
    80004d5c:	00008067          	ret

0000000080004d60 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004d60:	f8010113          	addi	sp,sp,-128
    80004d64:	06113c23          	sd	ra,120(sp)
    80004d68:	06813823          	sd	s0,112(sp)
    80004d6c:	06913423          	sd	s1,104(sp)
    80004d70:	07213023          	sd	s2,96(sp)
    80004d74:	05313c23          	sd	s3,88(sp)
    80004d78:	05413823          	sd	s4,80(sp)
    80004d7c:	05513423          	sd	s5,72(sp)
    80004d80:	05613023          	sd	s6,64(sp)
    80004d84:	03713c23          	sd	s7,56(sp)
    80004d88:	03813823          	sd	s8,48(sp)
    80004d8c:	03913423          	sd	s9,40(sp)
    80004d90:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004d94:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d98:	00004517          	auipc	a0,0x4
    80004d9c:	52850513          	addi	a0,a0,1320 # 800092c0 <_ZZ12printIntegermE6digits+0x10>
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	604080e7          	jalr	1540(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    80004da8:	01e00593          	li	a1,30
    80004dac:	f8040493          	addi	s1,s0,-128
    80004db0:	00048513          	mv	a0,s1
    80004db4:	00000097          	auipc	ra,0x0
    80004db8:	678080e7          	jalr	1656(ra) # 8000542c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	744080e7          	jalr	1860(ra) # 80005504 <_Z11stringToIntPKc>
    80004dc8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004dcc:	00004517          	auipc	a0,0x4
    80004dd0:	51450513          	addi	a0,a0,1300 # 800092e0 <_ZZ12printIntegermE6digits+0x30>
    80004dd4:	00000097          	auipc	ra,0x0
    80004dd8:	5d0080e7          	jalr	1488(ra) # 800053a4 <_Z11printStringPKc>
    getString(input, 30);
    80004ddc:	01e00593          	li	a1,30
    80004de0:	00048513          	mv	a0,s1
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	648080e7          	jalr	1608(ra) # 8000542c <_Z9getStringPci>
    n = stringToInt(input);
    80004dec:	00048513          	mv	a0,s1
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	714080e7          	jalr	1812(ra) # 80005504 <_Z11stringToIntPKc>
    80004df8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	50450513          	addi	a0,a0,1284 # 80009300 <_ZZ12printIntegermE6digits+0x50>
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	5a0080e7          	jalr	1440(ra) # 800053a4 <_Z11printStringPKc>
    80004e0c:	00000613          	li	a2,0
    80004e10:	00a00593          	li	a1,10
    80004e14:	00090513          	mv	a0,s2
    80004e18:	00000097          	auipc	ra,0x0
    80004e1c:	73c080e7          	jalr	1852(ra) # 80005554 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004e20:	00004517          	auipc	a0,0x4
    80004e24:	4f850513          	addi	a0,a0,1272 # 80009318 <_ZZ12printIntegermE6digits+0x68>
    80004e28:	00000097          	auipc	ra,0x0
    80004e2c:	57c080e7          	jalr	1404(ra) # 800053a4 <_Z11printStringPKc>
    80004e30:	00000613          	li	a2,0
    80004e34:	00a00593          	li	a1,10
    80004e38:	00048513          	mv	a0,s1
    80004e3c:	00000097          	auipc	ra,0x0
    80004e40:	718080e7          	jalr	1816(ra) # 80005554 <_Z8printIntiii>
    printString(".\n");
    80004e44:	00004517          	auipc	a0,0x4
    80004e48:	4ec50513          	addi	a0,a0,1260 # 80009330 <_ZZ12printIntegermE6digits+0x80>
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	558080e7          	jalr	1368(ra) # 800053a4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004e54:	0324c463          	blt	s1,s2,80004e7c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004e58:	03205c63          	blez	s2,80004e90 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004e5c:	03800513          	li	a0,56
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	2e8080e7          	jalr	744(ra) # 80002148 <_Znwm>
    80004e68:	00050a93          	mv	s5,a0
    80004e6c:	00048593          	mv	a1,s1
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	804080e7          	jalr	-2044(ra) # 80005674 <_ZN9BufferCPPC1Ei>
    80004e78:	0300006f          	j	80004ea8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004e7c:	00004517          	auipc	a0,0x4
    80004e80:	4bc50513          	addi	a0,a0,1212 # 80009338 <_ZZ12printIntegermE6digits+0x88>
    80004e84:	00000097          	auipc	ra,0x0
    80004e88:	520080e7          	jalr	1312(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80004e8c:	0140006f          	j	80004ea0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	4e850513          	addi	a0,a0,1256 # 80009378 <_ZZ12printIntegermE6digits+0xc8>
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	50c080e7          	jalr	1292(ra) # 800053a4 <_Z11printStringPKc>
        return;
    80004ea0:	000b8113          	mv	sp,s7
    80004ea4:	2380006f          	j	800050dc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004ea8:	01000513          	li	a0,16
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	29c080e7          	jalr	668(ra) # 80002148 <_Znwm>
    80004eb4:	00050493          	mv	s1,a0
    80004eb8:	00000593          	li	a1,0
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	504080e7          	jalr	1284(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80004ec4:	00007797          	auipc	a5,0x7
    80004ec8:	9497b623          	sd	s1,-1716(a5) # 8000b810 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004ecc:	00391793          	slli	a5,s2,0x3
    80004ed0:	00f78793          	addi	a5,a5,15
    80004ed4:	ff07f793          	andi	a5,a5,-16
    80004ed8:	40f10133          	sub	sp,sp,a5
    80004edc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ee0:	0019071b          	addiw	a4,s2,1
    80004ee4:	00171793          	slli	a5,a4,0x1
    80004ee8:	00e787b3          	add	a5,a5,a4
    80004eec:	00379793          	slli	a5,a5,0x3
    80004ef0:	00f78793          	addi	a5,a5,15
    80004ef4:	ff07f793          	andi	a5,a5,-16
    80004ef8:	40f10133          	sub	sp,sp,a5
    80004efc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004f00:	00191c13          	slli	s8,s2,0x1
    80004f04:	012c07b3          	add	a5,s8,s2
    80004f08:	00379793          	slli	a5,a5,0x3
    80004f0c:	00fa07b3          	add	a5,s4,a5
    80004f10:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004f14:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004f18:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004f1c:	02800513          	li	a0,40
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	228080e7          	jalr	552(ra) # 80002148 <_Znwm>
    80004f28:	00050b13          	mv	s6,a0
    80004f2c:	012c0c33          	add	s8,s8,s2
    80004f30:	003c1c13          	slli	s8,s8,0x3
    80004f34:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	454080e7          	jalr	1108(ra) # 8000238c <_ZN6ThreadC1Ev>
    80004f40:	00006797          	auipc	a5,0x6
    80004f44:	79878793          	addi	a5,a5,1944 # 8000b6d8 <_ZTV12ConsumerSync+0x10>
    80004f48:	00fb3023          	sd	a5,0(s6)
    80004f4c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004f50:	000b0513          	mv	a0,s6
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	3bc080e7          	jalr	956(ra) # 80002310 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004f5c:	00000493          	li	s1,0
    80004f60:	0380006f          	j	80004f98 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f64:	00006797          	auipc	a5,0x6
    80004f68:	74c78793          	addi	a5,a5,1868 # 8000b6b0 <_ZTV12ProducerSync+0x10>
    80004f6c:	00fcb023          	sd	a5,0(s9)
    80004f70:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004f74:	00349793          	slli	a5,s1,0x3
    80004f78:	00f987b3          	add	a5,s3,a5
    80004f7c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004f80:	00349793          	slli	a5,s1,0x3
    80004f84:	00f987b3          	add	a5,s3,a5
    80004f88:	0007b503          	ld	a0,0(a5)
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	384080e7          	jalr	900(ra) # 80002310 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004f94:	0014849b          	addiw	s1,s1,1
    80004f98:	0b24d063          	bge	s1,s2,80005038 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004f9c:	00149793          	slli	a5,s1,0x1
    80004fa0:	009787b3          	add	a5,a5,s1
    80004fa4:	00379793          	slli	a5,a5,0x3
    80004fa8:	00fa07b3          	add	a5,s4,a5
    80004fac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004fb0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004fb4:	00007717          	auipc	a4,0x7
    80004fb8:	85c73703          	ld	a4,-1956(a4) # 8000b810 <_ZL10waitForAll>
    80004fbc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004fc0:	02905863          	blez	s1,80004ff0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004fc4:	02800513          	li	a0,40
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	180080e7          	jalr	384(ra) # 80002148 <_Znwm>
    80004fd0:	00050c93          	mv	s9,a0
    80004fd4:	00149c13          	slli	s8,s1,0x1
    80004fd8:	009c0c33          	add	s8,s8,s1
    80004fdc:	003c1c13          	slli	s8,s8,0x3
    80004fe0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004fe4:	ffffd097          	auipc	ra,0xffffd
    80004fe8:	3a8080e7          	jalr	936(ra) # 8000238c <_ZN6ThreadC1Ev>
    80004fec:	f79ff06f          	j	80004f64 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ff0:	02800513          	li	a0,40
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	154080e7          	jalr	340(ra) # 80002148 <_Znwm>
    80004ffc:	00050c93          	mv	s9,a0
    80005000:	00149c13          	slli	s8,s1,0x1
    80005004:	009c0c33          	add	s8,s8,s1
    80005008:	003c1c13          	slli	s8,s8,0x3
    8000500c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005010:	ffffd097          	auipc	ra,0xffffd
    80005014:	37c080e7          	jalr	892(ra) # 8000238c <_ZN6ThreadC1Ev>
    80005018:	00006797          	auipc	a5,0x6
    8000501c:	67078793          	addi	a5,a5,1648 # 8000b688 <_ZTV16ProducerKeyboard+0x10>
    80005020:	00fcb023          	sd	a5,0(s9)
    80005024:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005028:	00349793          	slli	a5,s1,0x3
    8000502c:	00f987b3          	add	a5,s3,a5
    80005030:	0197b023          	sd	s9,0(a5)
    80005034:	f4dff06f          	j	80004f80 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	310080e7          	jalr	784(ra) # 80002348 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005040:	00000493          	li	s1,0
    80005044:	00994e63          	blt	s2,s1,80005060 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005048:	00006517          	auipc	a0,0x6
    8000504c:	7c853503          	ld	a0,1992(a0) # 8000b810 <_ZL10waitForAll>
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	3a8080e7          	jalr	936(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005058:	0014849b          	addiw	s1,s1,1
    8000505c:	fe9ff06f          	j	80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005060:	00000493          	li	s1,0
    80005064:	0080006f          	j	8000506c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005068:	0014849b          	addiw	s1,s1,1
    8000506c:	0324d263          	bge	s1,s2,80005090 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005070:	00349793          	slli	a5,s1,0x3
    80005074:	00f987b3          	add	a5,s3,a5
    80005078:	0007b503          	ld	a0,0(a5)
    8000507c:	fe0506e3          	beqz	a0,80005068 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005080:	00053783          	ld	a5,0(a0)
    80005084:	0087b783          	ld	a5,8(a5)
    80005088:	000780e7          	jalr	a5
    8000508c:	fddff06f          	j	80005068 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005090:	000b0a63          	beqz	s6,800050a4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005094:	000b3783          	ld	a5,0(s6)
    80005098:	0087b783          	ld	a5,8(a5)
    8000509c:	000b0513          	mv	a0,s6
    800050a0:	000780e7          	jalr	a5
    delete waitForAll;
    800050a4:	00006517          	auipc	a0,0x6
    800050a8:	76c53503          	ld	a0,1900(a0) # 8000b810 <_ZL10waitForAll>
    800050ac:	00050863          	beqz	a0,800050bc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800050b0:	00053783          	ld	a5,0(a0)
    800050b4:	0087b783          	ld	a5,8(a5)
    800050b8:	000780e7          	jalr	a5
    delete buffer;
    800050bc:	000a8e63          	beqz	s5,800050d8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800050c0:	000a8513          	mv	a0,s5
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	8a8080e7          	jalr	-1880(ra) # 8000596c <_ZN9BufferCPPD1Ev>
    800050cc:	000a8513          	mv	a0,s5
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	0c8080e7          	jalr	200(ra) # 80002198 <_ZdlPv>
    800050d8:	000b8113          	mv	sp,s7

}
    800050dc:	f8040113          	addi	sp,s0,-128
    800050e0:	07813083          	ld	ra,120(sp)
    800050e4:	07013403          	ld	s0,112(sp)
    800050e8:	06813483          	ld	s1,104(sp)
    800050ec:	06013903          	ld	s2,96(sp)
    800050f0:	05813983          	ld	s3,88(sp)
    800050f4:	05013a03          	ld	s4,80(sp)
    800050f8:	04813a83          	ld	s5,72(sp)
    800050fc:	04013b03          	ld	s6,64(sp)
    80005100:	03813b83          	ld	s7,56(sp)
    80005104:	03013c03          	ld	s8,48(sp)
    80005108:	02813c83          	ld	s9,40(sp)
    8000510c:	08010113          	addi	sp,sp,128
    80005110:	00008067          	ret
    80005114:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005118:	000a8513          	mv	a0,s5
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	07c080e7          	jalr	124(ra) # 80002198 <_ZdlPv>
    80005124:	00048513          	mv	a0,s1
    80005128:	00007097          	auipc	ra,0x7
    8000512c:	7d0080e7          	jalr	2000(ra) # 8000c8f8 <_Unwind_Resume>
    80005130:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005134:	00048513          	mv	a0,s1
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	060080e7          	jalr	96(ra) # 80002198 <_ZdlPv>
    80005140:	00090513          	mv	a0,s2
    80005144:	00007097          	auipc	ra,0x7
    80005148:	7b4080e7          	jalr	1972(ra) # 8000c8f8 <_Unwind_Resume>
    8000514c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005150:	000b0513          	mv	a0,s6
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	044080e7          	jalr	68(ra) # 80002198 <_ZdlPv>
    8000515c:	00048513          	mv	a0,s1
    80005160:	00007097          	auipc	ra,0x7
    80005164:	798080e7          	jalr	1944(ra) # 8000c8f8 <_Unwind_Resume>
    80005168:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000516c:	000c8513          	mv	a0,s9
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	028080e7          	jalr	40(ra) # 80002198 <_ZdlPv>
    80005178:	00048513          	mv	a0,s1
    8000517c:	00007097          	auipc	ra,0x7
    80005180:	77c080e7          	jalr	1916(ra) # 8000c8f8 <_Unwind_Resume>
    80005184:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005188:	000c8513          	mv	a0,s9
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	00c080e7          	jalr	12(ra) # 80002198 <_ZdlPv>
    80005194:	00048513          	mv	a0,s1
    80005198:	00007097          	auipc	ra,0x7
    8000519c:	760080e7          	jalr	1888(ra) # 8000c8f8 <_Unwind_Resume>

00000000800051a0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800051a0:	ff010113          	addi	sp,sp,-16
    800051a4:	00113423          	sd	ra,8(sp)
    800051a8:	00813023          	sd	s0,0(sp)
    800051ac:	01010413          	addi	s0,sp,16
    800051b0:	00006797          	auipc	a5,0x6
    800051b4:	52878793          	addi	a5,a5,1320 # 8000b6d8 <_ZTV12ConsumerSync+0x10>
    800051b8:	00f53023          	sd	a5,0(a0)
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	02c080e7          	jalr	44(ra) # 800021e8 <_ZN6ThreadD1Ev>
    800051c4:	00813083          	ld	ra,8(sp)
    800051c8:	00013403          	ld	s0,0(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN12ConsumerSyncD0Ev>:
    800051d4:	fe010113          	addi	sp,sp,-32
    800051d8:	00113c23          	sd	ra,24(sp)
    800051dc:	00813823          	sd	s0,16(sp)
    800051e0:	00913423          	sd	s1,8(sp)
    800051e4:	02010413          	addi	s0,sp,32
    800051e8:	00050493          	mv	s1,a0
    800051ec:	00006797          	auipc	a5,0x6
    800051f0:	4ec78793          	addi	a5,a5,1260 # 8000b6d8 <_ZTV12ConsumerSync+0x10>
    800051f4:	00f53023          	sd	a5,0(a0)
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	ff0080e7          	jalr	-16(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80005200:	00048513          	mv	a0,s1
    80005204:	ffffd097          	auipc	ra,0xffffd
    80005208:	f94080e7          	jalr	-108(ra) # 80002198 <_ZdlPv>
    8000520c:	01813083          	ld	ra,24(sp)
    80005210:	01013403          	ld	s0,16(sp)
    80005214:	00813483          	ld	s1,8(sp)
    80005218:	02010113          	addi	sp,sp,32
    8000521c:	00008067          	ret

0000000080005220 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005220:	ff010113          	addi	sp,sp,-16
    80005224:	00113423          	sd	ra,8(sp)
    80005228:	00813023          	sd	s0,0(sp)
    8000522c:	01010413          	addi	s0,sp,16
    80005230:	00006797          	auipc	a5,0x6
    80005234:	48078793          	addi	a5,a5,1152 # 8000b6b0 <_ZTV12ProducerSync+0x10>
    80005238:	00f53023          	sd	a5,0(a0)
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	fac080e7          	jalr	-84(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80005244:	00813083          	ld	ra,8(sp)
    80005248:	00013403          	ld	s0,0(sp)
    8000524c:	01010113          	addi	sp,sp,16
    80005250:	00008067          	ret

0000000080005254 <_ZN12ProducerSyncD0Ev>:
    80005254:	fe010113          	addi	sp,sp,-32
    80005258:	00113c23          	sd	ra,24(sp)
    8000525c:	00813823          	sd	s0,16(sp)
    80005260:	00913423          	sd	s1,8(sp)
    80005264:	02010413          	addi	s0,sp,32
    80005268:	00050493          	mv	s1,a0
    8000526c:	00006797          	auipc	a5,0x6
    80005270:	44478793          	addi	a5,a5,1092 # 8000b6b0 <_ZTV12ProducerSync+0x10>
    80005274:	00f53023          	sd	a5,0(a0)
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	f70080e7          	jalr	-144(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80005280:	00048513          	mv	a0,s1
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	f14080e7          	jalr	-236(ra) # 80002198 <_ZdlPv>
    8000528c:	01813083          	ld	ra,24(sp)
    80005290:	01013403          	ld	s0,16(sp)
    80005294:	00813483          	ld	s1,8(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret

00000000800052a0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00113423          	sd	ra,8(sp)
    800052a8:	00813023          	sd	s0,0(sp)
    800052ac:	01010413          	addi	s0,sp,16
    800052b0:	00006797          	auipc	a5,0x6
    800052b4:	3d878793          	addi	a5,a5,984 # 8000b688 <_ZTV16ProducerKeyboard+0x10>
    800052b8:	00f53023          	sd	a5,0(a0)
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	f2c080e7          	jalr	-212(ra) # 800021e8 <_ZN6ThreadD1Ev>
    800052c4:	00813083          	ld	ra,8(sp)
    800052c8:	00013403          	ld	s0,0(sp)
    800052cc:	01010113          	addi	sp,sp,16
    800052d0:	00008067          	ret

00000000800052d4 <_ZN16ProducerKeyboardD0Ev>:
    800052d4:	fe010113          	addi	sp,sp,-32
    800052d8:	00113c23          	sd	ra,24(sp)
    800052dc:	00813823          	sd	s0,16(sp)
    800052e0:	00913423          	sd	s1,8(sp)
    800052e4:	02010413          	addi	s0,sp,32
    800052e8:	00050493          	mv	s1,a0
    800052ec:	00006797          	auipc	a5,0x6
    800052f0:	39c78793          	addi	a5,a5,924 # 8000b688 <_ZTV16ProducerKeyboard+0x10>
    800052f4:	00f53023          	sd	a5,0(a0)
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	ef0080e7          	jalr	-272(ra) # 800021e8 <_ZN6ThreadD1Ev>
    80005300:	00048513          	mv	a0,s1
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	e94080e7          	jalr	-364(ra) # 80002198 <_ZdlPv>
    8000530c:	01813083          	ld	ra,24(sp)
    80005310:	01013403          	ld	s0,16(sp)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret

0000000080005320 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00113423          	sd	ra,8(sp)
    80005328:	00813023          	sd	s0,0(sp)
    8000532c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005330:	02053583          	ld	a1,32(a0)
    80005334:	fffff097          	auipc	ra,0xfffff
    80005338:	7e4080e7          	jalr	2020(ra) # 80004b18 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000533c:	00813083          	ld	ra,8(sp)
    80005340:	00013403          	ld	s0,0(sp)
    80005344:	01010113          	addi	sp,sp,16
    80005348:	00008067          	ret

000000008000534c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000534c:	ff010113          	addi	sp,sp,-16
    80005350:	00113423          	sd	ra,8(sp)
    80005354:	00813023          	sd	s0,0(sp)
    80005358:	01010413          	addi	s0,sp,16
        producer(td);
    8000535c:	02053583          	ld	a1,32(a0)
    80005360:	00000097          	auipc	ra,0x0
    80005364:	878080e7          	jalr	-1928(ra) # 80004bd8 <_ZN12ProducerSync8producerEPv>
    }
    80005368:	00813083          	ld	ra,8(sp)
    8000536c:	00013403          	ld	s0,0(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00113423          	sd	ra,8(sp)
    80005380:	00813023          	sd	s0,0(sp)
    80005384:	01010413          	addi	s0,sp,16
        consumer(td);
    80005388:	02053583          	ld	a1,32(a0)
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	8e0080e7          	jalr	-1824(ra) # 80004c6c <_ZN12ConsumerSync8consumerEPv>
    }
    80005394:	00813083          	ld	ra,8(sp)
    80005398:	00013403          	ld	s0,0(sp)
    8000539c:	01010113          	addi	sp,sp,16
    800053a0:	00008067          	ret

00000000800053a4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800053a4:	fe010113          	addi	sp,sp,-32
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00913423          	sd	s1,8(sp)
    800053b4:	02010413          	addi	s0,sp,32
    800053b8:	00050493          	mv	s1,a0
    LOCK();
    800053bc:	00100613          	li	a2,1
    800053c0:	00000593          	li	a1,0
    800053c4:	00006517          	auipc	a0,0x6
    800053c8:	45450513          	addi	a0,a0,1108 # 8000b818 <lockPrint>
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	e58080e7          	jalr	-424(ra) # 80001224 <copy_and_swap>
    800053d4:	00050863          	beqz	a0,800053e4 <_Z11printStringPKc+0x40>
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	fb4080e7          	jalr	-76(ra) # 8000138c <_Z15thread_dispatchv>
    800053e0:	fddff06f          	j	800053bc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800053e4:	0004c503          	lbu	a0,0(s1)
    800053e8:	00050a63          	beqz	a0,800053fc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	184080e7          	jalr	388(ra) # 80001570 <_Z4putcc>
        string++;
    800053f4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800053f8:	fedff06f          	j	800053e4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800053fc:	00000613          	li	a2,0
    80005400:	00100593          	li	a1,1
    80005404:	00006517          	auipc	a0,0x6
    80005408:	41450513          	addi	a0,a0,1044 # 8000b818 <lockPrint>
    8000540c:	ffffc097          	auipc	ra,0xffffc
    80005410:	e18080e7          	jalr	-488(ra) # 80001224 <copy_and_swap>
    80005414:	fe0514e3          	bnez	a0,800053fc <_Z11printStringPKc+0x58>
}
    80005418:	01813083          	ld	ra,24(sp)
    8000541c:	01013403          	ld	s0,16(sp)
    80005420:	00813483          	ld	s1,8(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000542c:	fd010113          	addi	sp,sp,-48
    80005430:	02113423          	sd	ra,40(sp)
    80005434:	02813023          	sd	s0,32(sp)
    80005438:	00913c23          	sd	s1,24(sp)
    8000543c:	01213823          	sd	s2,16(sp)
    80005440:	01313423          	sd	s3,8(sp)
    80005444:	01413023          	sd	s4,0(sp)
    80005448:	03010413          	addi	s0,sp,48
    8000544c:	00050993          	mv	s3,a0
    80005450:	00058a13          	mv	s4,a1
    LOCK();
    80005454:	00100613          	li	a2,1
    80005458:	00000593          	li	a1,0
    8000545c:	00006517          	auipc	a0,0x6
    80005460:	3bc50513          	addi	a0,a0,956 # 8000b818 <lockPrint>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	dc0080e7          	jalr	-576(ra) # 80001224 <copy_and_swap>
    8000546c:	00050863          	beqz	a0,8000547c <_Z9getStringPci+0x50>
    80005470:	ffffc097          	auipc	ra,0xffffc
    80005474:	f1c080e7          	jalr	-228(ra) # 8000138c <_Z15thread_dispatchv>
    80005478:	fddff06f          	j	80005454 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000547c:	00000913          	li	s2,0
    80005480:	00090493          	mv	s1,s2
    80005484:	0019091b          	addiw	s2,s2,1
    80005488:	03495a63          	bge	s2,s4,800054bc <_Z9getStringPci+0x90>
        cc = getc();
    8000548c:	ffffc097          	auipc	ra,0xffffc
    80005490:	0b0080e7          	jalr	176(ra) # 8000153c <_Z4getcv>
        if(cc < 1)
    80005494:	02050463          	beqz	a0,800054bc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005498:	009984b3          	add	s1,s3,s1
    8000549c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800054a0:	00a00793          	li	a5,10
    800054a4:	00f50a63          	beq	a0,a5,800054b8 <_Z9getStringPci+0x8c>
    800054a8:	00d00793          	li	a5,13
    800054ac:	fcf51ae3          	bne	a0,a5,80005480 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800054b0:	00090493          	mv	s1,s2
    800054b4:	0080006f          	j	800054bc <_Z9getStringPci+0x90>
    800054b8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800054bc:	009984b3          	add	s1,s3,s1
    800054c0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800054c4:	00000613          	li	a2,0
    800054c8:	00100593          	li	a1,1
    800054cc:	00006517          	auipc	a0,0x6
    800054d0:	34c50513          	addi	a0,a0,844 # 8000b818 <lockPrint>
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	d50080e7          	jalr	-688(ra) # 80001224 <copy_and_swap>
    800054dc:	fe0514e3          	bnez	a0,800054c4 <_Z9getStringPci+0x98>
    return buf;
}
    800054e0:	00098513          	mv	a0,s3
    800054e4:	02813083          	ld	ra,40(sp)
    800054e8:	02013403          	ld	s0,32(sp)
    800054ec:	01813483          	ld	s1,24(sp)
    800054f0:	01013903          	ld	s2,16(sp)
    800054f4:	00813983          	ld	s3,8(sp)
    800054f8:	00013a03          	ld	s4,0(sp)
    800054fc:	03010113          	addi	sp,sp,48
    80005500:	00008067          	ret

0000000080005504 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005504:	ff010113          	addi	sp,sp,-16
    80005508:	00813423          	sd	s0,8(sp)
    8000550c:	01010413          	addi	s0,sp,16
    80005510:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005514:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005518:	0006c603          	lbu	a2,0(a3)
    8000551c:	fd06071b          	addiw	a4,a2,-48
    80005520:	0ff77713          	andi	a4,a4,255
    80005524:	00900793          	li	a5,9
    80005528:	02e7e063          	bltu	a5,a4,80005548 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000552c:	0025179b          	slliw	a5,a0,0x2
    80005530:	00a787bb          	addw	a5,a5,a0
    80005534:	0017979b          	slliw	a5,a5,0x1
    80005538:	00168693          	addi	a3,a3,1
    8000553c:	00c787bb          	addw	a5,a5,a2
    80005540:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005544:	fd5ff06f          	j	80005518 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005548:	00813403          	ld	s0,8(sp)
    8000554c:	01010113          	addi	sp,sp,16
    80005550:	00008067          	ret

0000000080005554 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005554:	fc010113          	addi	sp,sp,-64
    80005558:	02113c23          	sd	ra,56(sp)
    8000555c:	02813823          	sd	s0,48(sp)
    80005560:	02913423          	sd	s1,40(sp)
    80005564:	03213023          	sd	s2,32(sp)
    80005568:	01313c23          	sd	s3,24(sp)
    8000556c:	04010413          	addi	s0,sp,64
    80005570:	00050493          	mv	s1,a0
    80005574:	00058913          	mv	s2,a1
    80005578:	00060993          	mv	s3,a2
    LOCK();
    8000557c:	00100613          	li	a2,1
    80005580:	00000593          	li	a1,0
    80005584:	00006517          	auipc	a0,0x6
    80005588:	29450513          	addi	a0,a0,660 # 8000b818 <lockPrint>
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	c98080e7          	jalr	-872(ra) # 80001224 <copy_and_swap>
    80005594:	00050863          	beqz	a0,800055a4 <_Z8printIntiii+0x50>
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	df4080e7          	jalr	-524(ra) # 8000138c <_Z15thread_dispatchv>
    800055a0:	fddff06f          	j	8000557c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800055a4:	00098463          	beqz	s3,800055ac <_Z8printIntiii+0x58>
    800055a8:	0804c463          	bltz	s1,80005630 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800055ac:	0004851b          	sext.w	a0,s1
    neg = 0;
    800055b0:	00000593          	li	a1,0
    }

    i = 0;
    800055b4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800055b8:	0009079b          	sext.w	a5,s2
    800055bc:	0325773b          	remuw	a4,a0,s2
    800055c0:	00048613          	mv	a2,s1
    800055c4:	0014849b          	addiw	s1,s1,1
    800055c8:	02071693          	slli	a3,a4,0x20
    800055cc:	0206d693          	srli	a3,a3,0x20
    800055d0:	00006717          	auipc	a4,0x6
    800055d4:	12070713          	addi	a4,a4,288 # 8000b6f0 <digits>
    800055d8:	00d70733          	add	a4,a4,a3
    800055dc:	00074683          	lbu	a3,0(a4)
    800055e0:	fd040713          	addi	a4,s0,-48
    800055e4:	00c70733          	add	a4,a4,a2
    800055e8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800055ec:	0005071b          	sext.w	a4,a0
    800055f0:	0325553b          	divuw	a0,a0,s2
    800055f4:	fcf772e3          	bgeu	a4,a5,800055b8 <_Z8printIntiii+0x64>
    if(neg)
    800055f8:	00058c63          	beqz	a1,80005610 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800055fc:	fd040793          	addi	a5,s0,-48
    80005600:	009784b3          	add	s1,a5,s1
    80005604:	02d00793          	li	a5,45
    80005608:	fef48823          	sb	a5,-16(s1)
    8000560c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005610:	fff4849b          	addiw	s1,s1,-1
    80005614:	0204c463          	bltz	s1,8000563c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005618:	fd040793          	addi	a5,s0,-48
    8000561c:	009787b3          	add	a5,a5,s1
    80005620:	ff07c503          	lbu	a0,-16(a5)
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	f4c080e7          	jalr	-180(ra) # 80001570 <_Z4putcc>
    8000562c:	fe5ff06f          	j	80005610 <_Z8printIntiii+0xbc>
        x = -xx;
    80005630:	4090053b          	negw	a0,s1
        neg = 1;
    80005634:	00100593          	li	a1,1
        x = -xx;
    80005638:	f7dff06f          	j	800055b4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000563c:	00000613          	li	a2,0
    80005640:	00100593          	li	a1,1
    80005644:	00006517          	auipc	a0,0x6
    80005648:	1d450513          	addi	a0,a0,468 # 8000b818 <lockPrint>
    8000564c:	ffffc097          	auipc	ra,0xffffc
    80005650:	bd8080e7          	jalr	-1064(ra) # 80001224 <copy_and_swap>
    80005654:	fe0514e3          	bnez	a0,8000563c <_Z8printIntiii+0xe8>
    80005658:	03813083          	ld	ra,56(sp)
    8000565c:	03013403          	ld	s0,48(sp)
    80005660:	02813483          	ld	s1,40(sp)
    80005664:	02013903          	ld	s2,32(sp)
    80005668:	01813983          	ld	s3,24(sp)
    8000566c:	04010113          	addi	sp,sp,64
    80005670:	00008067          	ret

0000000080005674 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005674:	fd010113          	addi	sp,sp,-48
    80005678:	02113423          	sd	ra,40(sp)
    8000567c:	02813023          	sd	s0,32(sp)
    80005680:	00913c23          	sd	s1,24(sp)
    80005684:	01213823          	sd	s2,16(sp)
    80005688:	01313423          	sd	s3,8(sp)
    8000568c:	03010413          	addi	s0,sp,48
    80005690:	00050493          	mv	s1,a0
    80005694:	00058913          	mv	s2,a1
    80005698:	0015879b          	addiw	a5,a1,1
    8000569c:	0007851b          	sext.w	a0,a5
    800056a0:	00f4a023          	sw	a5,0(s1)
    800056a4:	0004a823          	sw	zero,16(s1)
    800056a8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800056ac:	00251513          	slli	a0,a0,0x2
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	b94080e7          	jalr	-1132(ra) # 80001244 <_Z9mem_allocm>
    800056b8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800056bc:	01000513          	li	a0,16
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	a88080e7          	jalr	-1400(ra) # 80002148 <_Znwm>
    800056c8:	00050993          	mv	s3,a0
    800056cc:	00000593          	li	a1,0
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	cf0080e7          	jalr	-784(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    800056d8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800056dc:	01000513          	li	a0,16
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	a68080e7          	jalr	-1432(ra) # 80002148 <_Znwm>
    800056e8:	00050993          	mv	s3,a0
    800056ec:	00090593          	mv	a1,s2
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	cd0080e7          	jalr	-816(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    800056f8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800056fc:	01000513          	li	a0,16
    80005700:	ffffd097          	auipc	ra,0xffffd
    80005704:	a48080e7          	jalr	-1464(ra) # 80002148 <_Znwm>
    80005708:	00050913          	mv	s2,a0
    8000570c:	00100593          	li	a1,1
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	cb0080e7          	jalr	-848(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80005718:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000571c:	01000513          	li	a0,16
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	a28080e7          	jalr	-1496(ra) # 80002148 <_Znwm>
    80005728:	00050913          	mv	s2,a0
    8000572c:	00100593          	li	a1,1
    80005730:	ffffd097          	auipc	ra,0xffffd
    80005734:	c90080e7          	jalr	-880(ra) # 800023c0 <_ZN9SemaphoreC1Ej>
    80005738:	0324b823          	sd	s2,48(s1)
}
    8000573c:	02813083          	ld	ra,40(sp)
    80005740:	02013403          	ld	s0,32(sp)
    80005744:	01813483          	ld	s1,24(sp)
    80005748:	01013903          	ld	s2,16(sp)
    8000574c:	00813983          	ld	s3,8(sp)
    80005750:	03010113          	addi	sp,sp,48
    80005754:	00008067          	ret
    80005758:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000575c:	00098513          	mv	a0,s3
    80005760:	ffffd097          	auipc	ra,0xffffd
    80005764:	a38080e7          	jalr	-1480(ra) # 80002198 <_ZdlPv>
    80005768:	00048513          	mv	a0,s1
    8000576c:	00007097          	auipc	ra,0x7
    80005770:	18c080e7          	jalr	396(ra) # 8000c8f8 <_Unwind_Resume>
    80005774:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005778:	00098513          	mv	a0,s3
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	a1c080e7          	jalr	-1508(ra) # 80002198 <_ZdlPv>
    80005784:	00048513          	mv	a0,s1
    80005788:	00007097          	auipc	ra,0x7
    8000578c:	170080e7          	jalr	368(ra) # 8000c8f8 <_Unwind_Resume>
    80005790:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005794:	00090513          	mv	a0,s2
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	a00080e7          	jalr	-1536(ra) # 80002198 <_ZdlPv>
    800057a0:	00048513          	mv	a0,s1
    800057a4:	00007097          	auipc	ra,0x7
    800057a8:	154080e7          	jalr	340(ra) # 8000c8f8 <_Unwind_Resume>
    800057ac:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800057b0:	00090513          	mv	a0,s2
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	9e4080e7          	jalr	-1564(ra) # 80002198 <_ZdlPv>
    800057bc:	00048513          	mv	a0,s1
    800057c0:	00007097          	auipc	ra,0x7
    800057c4:	138080e7          	jalr	312(ra) # 8000c8f8 <_Unwind_Resume>

00000000800057c8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	01213023          	sd	s2,0(sp)
    800057dc:	02010413          	addi	s0,sp,32
    800057e0:	00050493          	mv	s1,a0
    800057e4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800057e8:	01853503          	ld	a0,24(a0)
    800057ec:	ffffd097          	auipc	ra,0xffffd
    800057f0:	c0c080e7          	jalr	-1012(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800057f4:	0304b503          	ld	a0,48(s1)
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	c00080e7          	jalr	-1024(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005800:	0084b783          	ld	a5,8(s1)
    80005804:	0144a703          	lw	a4,20(s1)
    80005808:	00271713          	slli	a4,a4,0x2
    8000580c:	00e787b3          	add	a5,a5,a4
    80005810:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005814:	0144a783          	lw	a5,20(s1)
    80005818:	0017879b          	addiw	a5,a5,1
    8000581c:	0004a703          	lw	a4,0(s1)
    80005820:	02e7e7bb          	remw	a5,a5,a4
    80005824:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005828:	0304b503          	ld	a0,48(s1)
    8000582c:	ffffd097          	auipc	ra,0xffffd
    80005830:	bfc080e7          	jalr	-1028(ra) # 80002428 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005834:	0204b503          	ld	a0,32(s1)
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	bf0080e7          	jalr	-1040(ra) # 80002428 <_ZN9Semaphore6signalEv>

}
    80005840:	01813083          	ld	ra,24(sp)
    80005844:	01013403          	ld	s0,16(sp)
    80005848:	00813483          	ld	s1,8(sp)
    8000584c:	00013903          	ld	s2,0(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret

0000000080005858 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00113c23          	sd	ra,24(sp)
    80005860:	00813823          	sd	s0,16(sp)
    80005864:	00913423          	sd	s1,8(sp)
    80005868:	01213023          	sd	s2,0(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005874:	02053503          	ld	a0,32(a0)
    80005878:	ffffd097          	auipc	ra,0xffffd
    8000587c:	b80080e7          	jalr	-1152(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005880:	0284b503          	ld	a0,40(s1)
    80005884:	ffffd097          	auipc	ra,0xffffd
    80005888:	b74080e7          	jalr	-1164(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000588c:	0084b703          	ld	a4,8(s1)
    80005890:	0104a783          	lw	a5,16(s1)
    80005894:	00279693          	slli	a3,a5,0x2
    80005898:	00d70733          	add	a4,a4,a3
    8000589c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800058a0:	0017879b          	addiw	a5,a5,1
    800058a4:	0004a703          	lw	a4,0(s1)
    800058a8:	02e7e7bb          	remw	a5,a5,a4
    800058ac:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800058b0:	0284b503          	ld	a0,40(s1)
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	b74080e7          	jalr	-1164(ra) # 80002428 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800058bc:	0184b503          	ld	a0,24(s1)
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	b68080e7          	jalr	-1176(ra) # 80002428 <_ZN9Semaphore6signalEv>

    return ret;
}
    800058c8:	00090513          	mv	a0,s2
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	00013903          	ld	s2,0(sp)
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret

00000000800058e4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800058e4:	fe010113          	addi	sp,sp,-32
    800058e8:	00113c23          	sd	ra,24(sp)
    800058ec:	00813823          	sd	s0,16(sp)
    800058f0:	00913423          	sd	s1,8(sp)
    800058f4:	01213023          	sd	s2,0(sp)
    800058f8:	02010413          	addi	s0,sp,32
    800058fc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005900:	02853503          	ld	a0,40(a0)
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	af4080e7          	jalr	-1292(ra) # 800023f8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000590c:	0304b503          	ld	a0,48(s1)
    80005910:	ffffd097          	auipc	ra,0xffffd
    80005914:	ae8080e7          	jalr	-1304(ra) # 800023f8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005918:	0144a783          	lw	a5,20(s1)
    8000591c:	0104a903          	lw	s2,16(s1)
    80005920:	0327ce63          	blt	a5,s2,8000595c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005924:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005928:	0304b503          	ld	a0,48(s1)
    8000592c:	ffffd097          	auipc	ra,0xffffd
    80005930:	afc080e7          	jalr	-1284(ra) # 80002428 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005934:	0284b503          	ld	a0,40(s1)
    80005938:	ffffd097          	auipc	ra,0xffffd
    8000593c:	af0080e7          	jalr	-1296(ra) # 80002428 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005940:	00090513          	mv	a0,s2
    80005944:	01813083          	ld	ra,24(sp)
    80005948:	01013403          	ld	s0,16(sp)
    8000594c:	00813483          	ld	s1,8(sp)
    80005950:	00013903          	ld	s2,0(sp)
    80005954:	02010113          	addi	sp,sp,32
    80005958:	00008067          	ret
        ret = cap - head + tail;
    8000595c:	0004a703          	lw	a4,0(s1)
    80005960:	4127093b          	subw	s2,a4,s2
    80005964:	00f9093b          	addw	s2,s2,a5
    80005968:	fc1ff06f          	j	80005928 <_ZN9BufferCPP6getCntEv+0x44>

000000008000596c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000596c:	fe010113          	addi	sp,sp,-32
    80005970:	00113c23          	sd	ra,24(sp)
    80005974:	00813823          	sd	s0,16(sp)
    80005978:	00913423          	sd	s1,8(sp)
    8000597c:	02010413          	addi	s0,sp,32
    80005980:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005984:	00a00513          	li	a0,10
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	b2c080e7          	jalr	-1236(ra) # 800024b4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005990:	00004517          	auipc	a0,0x4
    80005994:	ae850513          	addi	a0,a0,-1304 # 80009478 <_ZZ12printIntegermE6digits+0x1c8>
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	a0c080e7          	jalr	-1524(ra) # 800053a4 <_Z11printStringPKc>
    while (getCnt()) {
    800059a0:	00048513          	mv	a0,s1
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	f40080e7          	jalr	-192(ra) # 800058e4 <_ZN9BufferCPP6getCntEv>
    800059ac:	02050c63          	beqz	a0,800059e4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800059b0:	0084b783          	ld	a5,8(s1)
    800059b4:	0104a703          	lw	a4,16(s1)
    800059b8:	00271713          	slli	a4,a4,0x2
    800059bc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800059c0:	0007c503          	lbu	a0,0(a5)
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	af0080e7          	jalr	-1296(ra) # 800024b4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800059cc:	0104a783          	lw	a5,16(s1)
    800059d0:	0017879b          	addiw	a5,a5,1
    800059d4:	0004a703          	lw	a4,0(s1)
    800059d8:	02e7e7bb          	remw	a5,a5,a4
    800059dc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800059e0:	fc1ff06f          	j	800059a0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800059e4:	02100513          	li	a0,33
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	acc080e7          	jalr	-1332(ra) # 800024b4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800059f0:	00a00513          	li	a0,10
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	ac0080e7          	jalr	-1344(ra) # 800024b4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800059fc:	0084b503          	ld	a0,8(s1)
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	888080e7          	jalr	-1912(ra) # 80001288 <_Z8mem_freePv>
    delete itemAvailable;
    80005a08:	0204b503          	ld	a0,32(s1)
    80005a0c:	00050863          	beqz	a0,80005a1c <_ZN9BufferCPPD1Ev+0xb0>
    80005a10:	00053783          	ld	a5,0(a0)
    80005a14:	0087b783          	ld	a5,8(a5)
    80005a18:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005a1c:	0184b503          	ld	a0,24(s1)
    80005a20:	00050863          	beqz	a0,80005a30 <_ZN9BufferCPPD1Ev+0xc4>
    80005a24:	00053783          	ld	a5,0(a0)
    80005a28:	0087b783          	ld	a5,8(a5)
    80005a2c:	000780e7          	jalr	a5
    delete mutexTail;
    80005a30:	0304b503          	ld	a0,48(s1)
    80005a34:	00050863          	beqz	a0,80005a44 <_ZN9BufferCPPD1Ev+0xd8>
    80005a38:	00053783          	ld	a5,0(a0)
    80005a3c:	0087b783          	ld	a5,8(a5)
    80005a40:	000780e7          	jalr	a5
    delete mutexHead;
    80005a44:	0284b503          	ld	a0,40(s1)
    80005a48:	00050863          	beqz	a0,80005a58 <_ZN9BufferCPPD1Ev+0xec>
    80005a4c:	00053783          	ld	a5,0(a0)
    80005a50:	0087b783          	ld	a5,8(a5)
    80005a54:	000780e7          	jalr	a5
}
    80005a58:	01813083          	ld	ra,24(sp)
    80005a5c:	01013403          	ld	s0,16(sp)
    80005a60:	00813483          	ld	s1,8(sp)
    80005a64:	02010113          	addi	sp,sp,32
    80005a68:	00008067          	ret

0000000080005a6c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005a6c:	fe010113          	addi	sp,sp,-32
    80005a70:	00113c23          	sd	ra,24(sp)
    80005a74:	00813823          	sd	s0,16(sp)
    80005a78:	00913423          	sd	s1,8(sp)
    80005a7c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	a1050513          	addi	a0,a0,-1520 # 80009490 <_ZZ12printIntegermE6digits+0x1e0>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	91c080e7          	jalr	-1764(ra) # 800053a4 <_Z11printStringPKc>
    int test = getc() - '0';
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	aac080e7          	jalr	-1364(ra) # 8000153c <_Z4getcv>
    80005a98:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	aa0080e7          	jalr	-1376(ra) # 8000153c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005aa4:	00700793          	li	a5,7
    80005aa8:	1097e263          	bltu	a5,s1,80005bac <_Z8userMainv+0x140>
    80005aac:	00249493          	slli	s1,s1,0x2
    80005ab0:	00004717          	auipc	a4,0x4
    80005ab4:	c3870713          	addi	a4,a4,-968 # 800096e8 <_ZZ12printIntegermE6digits+0x438>
    80005ab8:	00e484b3          	add	s1,s1,a4
    80005abc:	0004a783          	lw	a5,0(s1)
    80005ac0:	00e787b3          	add	a5,a5,a4
    80005ac4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005ac8:	fffff097          	auipc	ra,0xfffff
    80005acc:	f54080e7          	jalr	-172(ra) # 80004a1c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005ad0:	00004517          	auipc	a0,0x4
    80005ad4:	9e050513          	addi	a0,a0,-1568 # 800094b0 <_ZZ12printIntegermE6digits+0x200>
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	8cc080e7          	jalr	-1844(ra) # 800053a4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005ae0:	01813083          	ld	ra,24(sp)
    80005ae4:	01013403          	ld	s0,16(sp)
    80005ae8:	00813483          	ld	s1,8(sp)
    80005aec:	02010113          	addi	sp,sp,32
    80005af0:	00008067          	ret
            Threads_CPP_API_test();
    80005af4:	ffffe097          	auipc	ra,0xffffe
    80005af8:	e08080e7          	jalr	-504(ra) # 800038fc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005afc:	00004517          	auipc	a0,0x4
    80005b00:	9f450513          	addi	a0,a0,-1548 # 800094f0 <_ZZ12printIntegermE6digits+0x240>
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	8a0080e7          	jalr	-1888(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005b0c:	fd5ff06f          	j	80005ae0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005b10:	ffffd097          	auipc	ra,0xffffd
    80005b14:	640080e7          	jalr	1600(ra) # 80003150 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005b18:	00004517          	auipc	a0,0x4
    80005b1c:	a1850513          	addi	a0,a0,-1512 # 80009530 <_ZZ12printIntegermE6digits+0x280>
    80005b20:	00000097          	auipc	ra,0x0
    80005b24:	884080e7          	jalr	-1916(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005b28:	fb9ff06f          	j	80005ae0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005b2c:	fffff097          	auipc	ra,0xfffff
    80005b30:	234080e7          	jalr	564(ra) # 80004d60 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	a4c50513          	addi	a0,a0,-1460 # 80009580 <_ZZ12printIntegermE6digits+0x2d0>
    80005b3c:	00000097          	auipc	ra,0x0
    80005b40:	868080e7          	jalr	-1944(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005b44:	f9dff06f          	j	80005ae0 <_Z8userMainv+0x74>
            testSleeping();
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	11c080e7          	jalr	284(ra) # 80005c64 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005b50:	00004517          	auipc	a0,0x4
    80005b54:	a8850513          	addi	a0,a0,-1400 # 800095d8 <_ZZ12printIntegermE6digits+0x328>
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	84c080e7          	jalr	-1972(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005b60:	f81ff06f          	j	80005ae0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005b64:	ffffe097          	auipc	ra,0xffffe
    80005b68:	258080e7          	jalr	600(ra) # 80003dbc <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005b6c:	00004517          	auipc	a0,0x4
    80005b70:	a9c50513          	addi	a0,a0,-1380 # 80009608 <_ZZ12printIntegermE6digits+0x358>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	830080e7          	jalr	-2000(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005b7c:	f65ff06f          	j	80005ae0 <_Z8userMainv+0x74>
            System_Mode_test();
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	658080e7          	jalr	1624(ra) # 800061d8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	ac050513          	addi	a0,a0,-1344 # 80009648 <_ZZ12printIntegermE6digits+0x398>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	814080e7          	jalr	-2028(ra) # 800053a4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005b98:	00004517          	auipc	a0,0x4
    80005b9c:	ad050513          	addi	a0,a0,-1328 # 80009668 <_ZZ12printIntegermE6digits+0x3b8>
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	804080e7          	jalr	-2044(ra) # 800053a4 <_Z11printStringPKc>
            break;
    80005ba8:	f39ff06f          	j	80005ae0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005bac:	00004517          	auipc	a0,0x4
    80005bb0:	b1450513          	addi	a0,a0,-1260 # 800096c0 <_ZZ12printIntegermE6digits+0x410>
    80005bb4:	fffff097          	auipc	ra,0xfffff
    80005bb8:	7f0080e7          	jalr	2032(ra) # 800053a4 <_Z11printStringPKc>
    80005bbc:	f25ff06f          	j	80005ae0 <_Z8userMainv+0x74>

0000000080005bc0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	00813823          	sd	s0,16(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	01213023          	sd	s2,0(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005bd8:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005bdc:	00600493          	li	s1,6
    while (--i > 0) {
    80005be0:	fff4849b          	addiw	s1,s1,-1
    80005be4:	04905463          	blez	s1,80005c2c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	b2050513          	addi	a0,a0,-1248 # 80009708 <_ZZ12printIntegermE6digits+0x458>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	7b4080e7          	jalr	1972(ra) # 800053a4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00a00593          	li	a1,10
    80005c00:	0009051b          	sext.w	a0,s2
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	950080e7          	jalr	-1712(ra) # 80005554 <_Z8printIntiii>
        printString(" !\n");
    80005c0c:	00004517          	auipc	a0,0x4
    80005c10:	b0450513          	addi	a0,a0,-1276 # 80009710 <_ZZ12printIntegermE6digits+0x460>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	790080e7          	jalr	1936(ra) # 800053a4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005c1c:	00090513          	mv	a0,s2
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	8dc080e7          	jalr	-1828(ra) # 800014fc <_Z10time_sleepm>
    while (--i > 0) {
    80005c28:	fb9ff06f          	j	80005be0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005c2c:	00a00793          	li	a5,10
    80005c30:	02f95933          	divu	s2,s2,a5
    80005c34:	fff90913          	addi	s2,s2,-1
    80005c38:	00006797          	auipc	a5,0x6
    80005c3c:	be878793          	addi	a5,a5,-1048 # 8000b820 <_ZL8finished>
    80005c40:	01278933          	add	s2,a5,s2
    80005c44:	00100793          	li	a5,1
    80005c48:	00f90023          	sb	a5,0(s2)
}
    80005c4c:	01813083          	ld	ra,24(sp)
    80005c50:	01013403          	ld	s0,16(sp)
    80005c54:	00813483          	ld	s1,8(sp)
    80005c58:	00013903          	ld	s2,0(sp)
    80005c5c:	02010113          	addi	sp,sp,32
    80005c60:	00008067          	ret

0000000080005c64 <_Z12testSleepingv>:

void testSleeping() {
    80005c64:	fc010113          	addi	sp,sp,-64
    80005c68:	02113c23          	sd	ra,56(sp)
    80005c6c:	02813823          	sd	s0,48(sp)
    80005c70:	02913423          	sd	s1,40(sp)
    80005c74:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005c78:	00a00793          	li	a5,10
    80005c7c:	fcf43823          	sd	a5,-48(s0)
    80005c80:	01400793          	li	a5,20
    80005c84:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c88:	00000493          	li	s1,0
    80005c8c:	02c0006f          	j	80005cb8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c90:	00349793          	slli	a5,s1,0x3
    80005c94:	fd040613          	addi	a2,s0,-48
    80005c98:	00f60633          	add	a2,a2,a5
    80005c9c:	00000597          	auipc	a1,0x0
    80005ca0:	f2458593          	addi	a1,a1,-220 # 80005bc0 <_ZL9sleepyRunPv>
    80005ca4:	fc040513          	addi	a0,s0,-64
    80005ca8:	00f50533          	add	a0,a0,a5
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	614080e7          	jalr	1556(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005cb4:	0014849b          	addiw	s1,s1,1
    80005cb8:	00100793          	li	a5,1
    80005cbc:	fc97dae3          	bge	a5,s1,80005c90 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005cc0:	00006797          	auipc	a5,0x6
    80005cc4:	b607c783          	lbu	a5,-1184(a5) # 8000b820 <_ZL8finished>
    80005cc8:	fe078ce3          	beqz	a5,80005cc0 <_Z12testSleepingv+0x5c>
    80005ccc:	00006797          	auipc	a5,0x6
    80005cd0:	b557c783          	lbu	a5,-1195(a5) # 8000b821 <_ZL8finished+0x1>
    80005cd4:	fe0786e3          	beqz	a5,80005cc0 <_Z12testSleepingv+0x5c>
}
    80005cd8:	03813083          	ld	ra,56(sp)
    80005cdc:	03013403          	ld	s0,48(sp)
    80005ce0:	02813483          	ld	s1,40(sp)
    80005ce4:	04010113          	addi	sp,sp,64
    80005ce8:	00008067          	ret

0000000080005cec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005cec:	fe010113          	addi	sp,sp,-32
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	00813823          	sd	s0,16(sp)
    80005cf8:	00913423          	sd	s1,8(sp)
    80005cfc:	01213023          	sd	s2,0(sp)
    80005d00:	02010413          	addi	s0,sp,32
    80005d04:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d08:	00100793          	li	a5,1
    80005d0c:	02a7f863          	bgeu	a5,a0,80005d3c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d10:	00a00793          	li	a5,10
    80005d14:	02f577b3          	remu	a5,a0,a5
    80005d18:	02078e63          	beqz	a5,80005d54 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d1c:	fff48513          	addi	a0,s1,-1
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	fcc080e7          	jalr	-52(ra) # 80005cec <_ZL9fibonaccim>
    80005d28:	00050913          	mv	s2,a0
    80005d2c:	ffe48513          	addi	a0,s1,-2
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	fbc080e7          	jalr	-68(ra) # 80005cec <_ZL9fibonaccim>
    80005d38:	00a90533          	add	a0,s2,a0
}
    80005d3c:	01813083          	ld	ra,24(sp)
    80005d40:	01013403          	ld	s0,16(sp)
    80005d44:	00813483          	ld	s1,8(sp)
    80005d48:	00013903          	ld	s2,0(sp)
    80005d4c:	02010113          	addi	sp,sp,32
    80005d50:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	638080e7          	jalr	1592(ra) # 8000138c <_Z15thread_dispatchv>
    80005d5c:	fc1ff06f          	j	80005d1c <_ZL9fibonaccim+0x30>

0000000080005d60 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005d60:	fe010113          	addi	sp,sp,-32
    80005d64:	00113c23          	sd	ra,24(sp)
    80005d68:	00813823          	sd	s0,16(sp)
    80005d6c:	00913423          	sd	s1,8(sp)
    80005d70:	01213023          	sd	s2,0(sp)
    80005d74:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005d78:	00a00493          	li	s1,10
    80005d7c:	0400006f          	j	80005dbc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d80:	00003517          	auipc	a0,0x3
    80005d84:	66050513          	addi	a0,a0,1632 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	61c080e7          	jalr	1564(ra) # 800053a4 <_Z11printStringPKc>
    80005d90:	00000613          	li	a2,0
    80005d94:	00a00593          	li	a1,10
    80005d98:	00048513          	mv	a0,s1
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	7b8080e7          	jalr	1976(ra) # 80005554 <_Z8printIntiii>
    80005da4:	00004517          	auipc	a0,0x4
    80005da8:	82c50513          	addi	a0,a0,-2004 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	5f8080e7          	jalr	1528(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005db4:	0014849b          	addiw	s1,s1,1
    80005db8:	0ff4f493          	andi	s1,s1,255
    80005dbc:	00c00793          	li	a5,12
    80005dc0:	fc97f0e3          	bgeu	a5,s1,80005d80 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005dc4:	00003517          	auipc	a0,0x3
    80005dc8:	62450513          	addi	a0,a0,1572 # 800093e8 <_ZZ12printIntegermE6digits+0x138>
    80005dcc:	fffff097          	auipc	ra,0xfffff
    80005dd0:	5d8080e7          	jalr	1496(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005dd4:	00500313          	li	t1,5
    thread_dispatch();
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	5b4080e7          	jalr	1460(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005de0:	01000513          	li	a0,16
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	f08080e7          	jalr	-248(ra) # 80005cec <_ZL9fibonaccim>
    80005dec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	60850513          	addi	a0,a0,1544 # 800093f8 <_ZZ12printIntegermE6digits+0x148>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	5ac080e7          	jalr	1452(ra) # 800053a4 <_Z11printStringPKc>
    80005e00:	00000613          	li	a2,0
    80005e04:	00a00593          	li	a1,10
    80005e08:	0009051b          	sext.w	a0,s2
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	748080e7          	jalr	1864(ra) # 80005554 <_Z8printIntiii>
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	7bc50513          	addi	a0,a0,1980 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	588080e7          	jalr	1416(ra) # 800053a4 <_Z11printStringPKc>
    80005e24:	0400006f          	j	80005e64 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	5b850513          	addi	a0,a0,1464 # 800093e0 <_ZZ12printIntegermE6digits+0x130>
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	574080e7          	jalr	1396(ra) # 800053a4 <_Z11printStringPKc>
    80005e38:	00000613          	li	a2,0
    80005e3c:	00a00593          	li	a1,10
    80005e40:	00048513          	mv	a0,s1
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	710080e7          	jalr	1808(ra) # 80005554 <_Z8printIntiii>
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	78450513          	addi	a0,a0,1924 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005e54:	fffff097          	auipc	ra,0xfffff
    80005e58:	550080e7          	jalr	1360(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005e5c:	0014849b          	addiw	s1,s1,1
    80005e60:	0ff4f493          	andi	s1,s1,255
    80005e64:	00f00793          	li	a5,15
    80005e68:	fc97f0e3          	bgeu	a5,s1,80005e28 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005e6c:	00003517          	auipc	a0,0x3
    80005e70:	59c50513          	addi	a0,a0,1436 # 80009408 <_ZZ12printIntegermE6digits+0x158>
    80005e74:	fffff097          	auipc	ra,0xfffff
    80005e78:	530080e7          	jalr	1328(ra) # 800053a4 <_Z11printStringPKc>
    finishedD = true;
    80005e7c:	00100793          	li	a5,1
    80005e80:	00006717          	auipc	a4,0x6
    80005e84:	9af70123          	sb	a5,-1630(a4) # 8000b822 <_ZL9finishedD>
    thread_dispatch();
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	504080e7          	jalr	1284(ra) # 8000138c <_Z15thread_dispatchv>
}
    80005e90:	01813083          	ld	ra,24(sp)
    80005e94:	01013403          	ld	s0,16(sp)
    80005e98:	00813483          	ld	s1,8(sp)
    80005e9c:	00013903          	ld	s2,0(sp)
    80005ea0:	02010113          	addi	sp,sp,32
    80005ea4:	00008067          	ret

0000000080005ea8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005ea8:	fe010113          	addi	sp,sp,-32
    80005eac:	00113c23          	sd	ra,24(sp)
    80005eb0:	00813823          	sd	s0,16(sp)
    80005eb4:	00913423          	sd	s1,8(sp)
    80005eb8:	01213023          	sd	s2,0(sp)
    80005ebc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005ec0:	00000493          	li	s1,0
    80005ec4:	0400006f          	j	80005f04 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	23850513          	addi	a0,a0,568 # 80009100 <CONSOLE_STATUS+0xf0>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	4d4080e7          	jalr	1236(ra) # 800053a4 <_Z11printStringPKc>
    80005ed8:	00000613          	li	a2,0
    80005edc:	00a00593          	li	a1,10
    80005ee0:	00048513          	mv	a0,s1
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	670080e7          	jalr	1648(ra) # 80005554 <_Z8printIntiii>
    80005eec:	00003517          	auipc	a0,0x3
    80005ef0:	6e450513          	addi	a0,a0,1764 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005ef4:	fffff097          	auipc	ra,0xfffff
    80005ef8:	4b0080e7          	jalr	1200(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005efc:	0014849b          	addiw	s1,s1,1
    80005f00:	0ff4f493          	andi	s1,s1,255
    80005f04:	00200793          	li	a5,2
    80005f08:	fc97f0e3          	bgeu	a5,s1,80005ec8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	4bc50513          	addi	a0,a0,1212 # 800093c8 <_ZZ12printIntegermE6digits+0x118>
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	490080e7          	jalr	1168(ra) # 800053a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005f1c:	00700313          	li	t1,7
    thread_dispatch();
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	46c080e7          	jalr	1132(ra) # 8000138c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005f28:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	4ac50513          	addi	a0,a0,1196 # 800093d8 <_ZZ12printIntegermE6digits+0x128>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	470080e7          	jalr	1136(ra) # 800053a4 <_Z11printStringPKc>
    80005f3c:	00000613          	li	a2,0
    80005f40:	00a00593          	li	a1,10
    80005f44:	0009051b          	sext.w	a0,s2
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	60c080e7          	jalr	1548(ra) # 80005554 <_Z8printIntiii>
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	68050513          	addi	a0,a0,1664 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	44c080e7          	jalr	1100(ra) # 800053a4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005f60:	00c00513          	li	a0,12
    80005f64:	00000097          	auipc	ra,0x0
    80005f68:	d88080e7          	jalr	-632(ra) # 80005cec <_ZL9fibonaccim>
    80005f6c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005f70:	00003517          	auipc	a0,0x3
    80005f74:	1a850513          	addi	a0,a0,424 # 80009118 <CONSOLE_STATUS+0x108>
    80005f78:	fffff097          	auipc	ra,0xfffff
    80005f7c:	42c080e7          	jalr	1068(ra) # 800053a4 <_Z11printStringPKc>
    80005f80:	00000613          	li	a2,0
    80005f84:	00a00593          	li	a1,10
    80005f88:	0009051b          	sext.w	a0,s2
    80005f8c:	fffff097          	auipc	ra,0xfffff
    80005f90:	5c8080e7          	jalr	1480(ra) # 80005554 <_Z8printIntiii>
    80005f94:	00003517          	auipc	a0,0x3
    80005f98:	63c50513          	addi	a0,a0,1596 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005f9c:	fffff097          	auipc	ra,0xfffff
    80005fa0:	408080e7          	jalr	1032(ra) # 800053a4 <_Z11printStringPKc>
    80005fa4:	0400006f          	j	80005fe4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005fa8:	00003517          	auipc	a0,0x3
    80005fac:	15850513          	addi	a0,a0,344 # 80009100 <CONSOLE_STATUS+0xf0>
    80005fb0:	fffff097          	auipc	ra,0xfffff
    80005fb4:	3f4080e7          	jalr	1012(ra) # 800053a4 <_Z11printStringPKc>
    80005fb8:	00000613          	li	a2,0
    80005fbc:	00a00593          	li	a1,10
    80005fc0:	00048513          	mv	a0,s1
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	590080e7          	jalr	1424(ra) # 80005554 <_Z8printIntiii>
    80005fcc:	00003517          	auipc	a0,0x3
    80005fd0:	60450513          	addi	a0,a0,1540 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80005fd4:	fffff097          	auipc	ra,0xfffff
    80005fd8:	3d0080e7          	jalr	976(ra) # 800053a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005fdc:	0014849b          	addiw	s1,s1,1
    80005fe0:	0ff4f493          	andi	s1,s1,255
    80005fe4:	00500793          	li	a5,5
    80005fe8:	fc97f0e3          	bgeu	a5,s1,80005fa8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	3bc50513          	addi	a0,a0,956 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    80005ff4:	fffff097          	auipc	ra,0xfffff
    80005ff8:	3b0080e7          	jalr	944(ra) # 800053a4 <_Z11printStringPKc>
    finishedC = true;
    80005ffc:	00100793          	li	a5,1
    80006000:	00006717          	auipc	a4,0x6
    80006004:	82f701a3          	sb	a5,-2013(a4) # 8000b823 <_ZL9finishedC>
    thread_dispatch();
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	384080e7          	jalr	900(ra) # 8000138c <_Z15thread_dispatchv>
}
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	00013903          	ld	s2,0(sp)
    80006020:	02010113          	addi	sp,sp,32
    80006024:	00008067          	ret

0000000080006028 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006028:	fe010113          	addi	sp,sp,-32
    8000602c:	00113c23          	sd	ra,24(sp)
    80006030:	00813823          	sd	s0,16(sp)
    80006034:	00913423          	sd	s1,8(sp)
    80006038:	01213023          	sd	s2,0(sp)
    8000603c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006040:	00000913          	li	s2,0
    80006044:	0400006f          	j	80006084 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	344080e7          	jalr	836(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006050:	00148493          	addi	s1,s1,1
    80006054:	000027b7          	lui	a5,0x2
    80006058:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000605c:	0097ee63          	bltu	a5,s1,80006078 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006060:	00000713          	li	a4,0
    80006064:	000077b7          	lui	a5,0x7
    80006068:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000606c:	fce7eee3          	bltu	a5,a4,80006048 <_ZL11workerBodyBPv+0x20>
    80006070:	00170713          	addi	a4,a4,1
    80006074:	ff1ff06f          	j	80006064 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006078:	00a00793          	li	a5,10
    8000607c:	04f90663          	beq	s2,a5,800060c8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006080:	00190913          	addi	s2,s2,1
    80006084:	00f00793          	li	a5,15
    80006088:	0527e463          	bltu	a5,s2,800060d0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000608c:	00003517          	auipc	a0,0x3
    80006090:	ffc50513          	addi	a0,a0,-4 # 80009088 <CONSOLE_STATUS+0x78>
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	310080e7          	jalr	784(ra) # 800053a4 <_Z11printStringPKc>
    8000609c:	00000613          	li	a2,0
    800060a0:	00a00593          	li	a1,10
    800060a4:	0009051b          	sext.w	a0,s2
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	4ac080e7          	jalr	1196(ra) # 80005554 <_Z8printIntiii>
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	52050513          	addi	a0,a0,1312 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	2ec080e7          	jalr	748(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800060c0:	00000493          	li	s1,0
    800060c4:	f91ff06f          	j	80006054 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800060c8:	14102ff3          	csrr	t6,sepc
    800060cc:	fb5ff06f          	j	80006080 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800060d0:	00003517          	auipc	a0,0x3
    800060d4:	2e850513          	addi	a0,a0,744 # 800093b8 <_ZZ12printIntegermE6digits+0x108>
    800060d8:	fffff097          	auipc	ra,0xfffff
    800060dc:	2cc080e7          	jalr	716(ra) # 800053a4 <_Z11printStringPKc>
    finishedB = true;
    800060e0:	00100793          	li	a5,1
    800060e4:	00005717          	auipc	a4,0x5
    800060e8:	74f70023          	sb	a5,1856(a4) # 8000b824 <_ZL9finishedB>
    thread_dispatch();
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	2a0080e7          	jalr	672(ra) # 8000138c <_Z15thread_dispatchv>
}
    800060f4:	01813083          	ld	ra,24(sp)
    800060f8:	01013403          	ld	s0,16(sp)
    800060fc:	00813483          	ld	s1,8(sp)
    80006100:	00013903          	ld	s2,0(sp)
    80006104:	02010113          	addi	sp,sp,32
    80006108:	00008067          	ret

000000008000610c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000610c:	fe010113          	addi	sp,sp,-32
    80006110:	00113c23          	sd	ra,24(sp)
    80006114:	00813823          	sd	s0,16(sp)
    80006118:	00913423          	sd	s1,8(sp)
    8000611c:	01213023          	sd	s2,0(sp)
    80006120:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006124:	00000913          	li	s2,0
    80006128:	0380006f          	j	80006160 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000612c:	ffffb097          	auipc	ra,0xffffb
    80006130:	260080e7          	jalr	608(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006134:	00148493          	addi	s1,s1,1
    80006138:	000027b7          	lui	a5,0x2
    8000613c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006140:	0097ee63          	bltu	a5,s1,8000615c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006144:	00000713          	li	a4,0
    80006148:	000077b7          	lui	a5,0x7
    8000614c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006150:	fce7eee3          	bltu	a5,a4,8000612c <_ZL11workerBodyAPv+0x20>
    80006154:	00170713          	addi	a4,a4,1
    80006158:	ff1ff06f          	j	80006148 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000615c:	00190913          	addi	s2,s2,1
    80006160:	00900793          	li	a5,9
    80006164:	0527e063          	bltu	a5,s2,800061a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006168:	00003517          	auipc	a0,0x3
    8000616c:	ee050513          	addi	a0,a0,-288 # 80009048 <CONSOLE_STATUS+0x38>
    80006170:	fffff097          	auipc	ra,0xfffff
    80006174:	234080e7          	jalr	564(ra) # 800053a4 <_Z11printStringPKc>
    80006178:	00000613          	li	a2,0
    8000617c:	00a00593          	li	a1,10
    80006180:	0009051b          	sext.w	a0,s2
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	3d0080e7          	jalr	976(ra) # 80005554 <_Z8printIntiii>
    8000618c:	00003517          	auipc	a0,0x3
    80006190:	44450513          	addi	a0,a0,1092 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80006194:	fffff097          	auipc	ra,0xfffff
    80006198:	210080e7          	jalr	528(ra) # 800053a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000619c:	00000493          	li	s1,0
    800061a0:	f99ff06f          	j	80006138 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800061a4:	00003517          	auipc	a0,0x3
    800061a8:	20450513          	addi	a0,a0,516 # 800093a8 <_ZZ12printIntegermE6digits+0xf8>
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	1f8080e7          	jalr	504(ra) # 800053a4 <_Z11printStringPKc>
    finishedA = true;
    800061b4:	00100793          	li	a5,1
    800061b8:	00005717          	auipc	a4,0x5
    800061bc:	66f706a3          	sb	a5,1645(a4) # 8000b825 <_ZL9finishedA>
}
    800061c0:	01813083          	ld	ra,24(sp)
    800061c4:	01013403          	ld	s0,16(sp)
    800061c8:	00813483          	ld	s1,8(sp)
    800061cc:	00013903          	ld	s2,0(sp)
    800061d0:	02010113          	addi	sp,sp,32
    800061d4:	00008067          	ret

00000000800061d8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800061d8:	fd010113          	addi	sp,sp,-48
    800061dc:	02113423          	sd	ra,40(sp)
    800061e0:	02813023          	sd	s0,32(sp)
    800061e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800061e8:	00000613          	li	a2,0
    800061ec:	00000597          	auipc	a1,0x0
    800061f0:	f2058593          	addi	a1,a1,-224 # 8000610c <_ZL11workerBodyAPv>
    800061f4:	fd040513          	addi	a0,s0,-48
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	0c8080e7          	jalr	200(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006200:	00003517          	auipc	a0,0x3
    80006204:	21850513          	addi	a0,a0,536 # 80009418 <_ZZ12printIntegermE6digits+0x168>
    80006208:	fffff097          	auipc	ra,0xfffff
    8000620c:	19c080e7          	jalr	412(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006210:	00000613          	li	a2,0
    80006214:	00000597          	auipc	a1,0x0
    80006218:	e1458593          	addi	a1,a1,-492 # 80006028 <_ZL11workerBodyBPv>
    8000621c:	fd840513          	addi	a0,s0,-40
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	0a0080e7          	jalr	160(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	20850513          	addi	a0,a0,520 # 80009430 <_ZZ12printIntegermE6digits+0x180>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	174080e7          	jalr	372(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006238:	00000613          	li	a2,0
    8000623c:	00000597          	auipc	a1,0x0
    80006240:	c6c58593          	addi	a1,a1,-916 # 80005ea8 <_ZL11workerBodyCPv>
    80006244:	fe040513          	addi	a0,s0,-32
    80006248:	ffffb097          	auipc	ra,0xffffb
    8000624c:	078080e7          	jalr	120(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006250:	00003517          	auipc	a0,0x3
    80006254:	1f850513          	addi	a0,a0,504 # 80009448 <_ZZ12printIntegermE6digits+0x198>
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	14c080e7          	jalr	332(ra) # 800053a4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006260:	00000613          	li	a2,0
    80006264:	00000597          	auipc	a1,0x0
    80006268:	afc58593          	addi	a1,a1,-1284 # 80005d60 <_ZL11workerBodyDPv>
    8000626c:	fe840513          	addi	a0,s0,-24
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	050080e7          	jalr	80(ra) # 800012c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	1e850513          	addi	a0,a0,488 # 80009460 <_ZZ12printIntegermE6digits+0x1b0>
    80006280:	fffff097          	auipc	ra,0xfffff
    80006284:	124080e7          	jalr	292(ra) # 800053a4 <_Z11printStringPKc>
    80006288:	00c0006f          	j	80006294 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	100080e7          	jalr	256(ra) # 8000138c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006294:	00005797          	auipc	a5,0x5
    80006298:	5917c783          	lbu	a5,1425(a5) # 8000b825 <_ZL9finishedA>
    8000629c:	fe0788e3          	beqz	a5,8000628c <_Z16System_Mode_testv+0xb4>
    800062a0:	00005797          	auipc	a5,0x5
    800062a4:	5847c783          	lbu	a5,1412(a5) # 8000b824 <_ZL9finishedB>
    800062a8:	fe0782e3          	beqz	a5,8000628c <_Z16System_Mode_testv+0xb4>
    800062ac:	00005797          	auipc	a5,0x5
    800062b0:	5777c783          	lbu	a5,1399(a5) # 8000b823 <_ZL9finishedC>
    800062b4:	fc078ce3          	beqz	a5,8000628c <_Z16System_Mode_testv+0xb4>
    800062b8:	00005797          	auipc	a5,0x5
    800062bc:	56a7c783          	lbu	a5,1386(a5) # 8000b822 <_ZL9finishedD>
    800062c0:	fc0786e3          	beqz	a5,8000628c <_Z16System_Mode_testv+0xb4>
    }

}
    800062c4:	02813083          	ld	ra,40(sp)
    800062c8:	02013403          	ld	s0,32(sp)
    800062cc:	03010113          	addi	sp,sp,48
    800062d0:	00008067          	ret

00000000800062d4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062d4:	fe010113          	addi	sp,sp,-32
    800062d8:	00113c23          	sd	ra,24(sp)
    800062dc:	00813823          	sd	s0,16(sp)
    800062e0:	00913423          	sd	s1,8(sp)
    800062e4:	01213023          	sd	s2,0(sp)
    800062e8:	02010413          	addi	s0,sp,32
    800062ec:	00050493          	mv	s1,a0
    800062f0:	00058913          	mv	s2,a1
    800062f4:	0015879b          	addiw	a5,a1,1
    800062f8:	0007851b          	sext.w	a0,a5
    800062fc:	00f4a023          	sw	a5,0(s1)
    80006300:	0004a823          	sw	zero,16(s1)
    80006304:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006308:	00251513          	slli	a0,a0,0x2
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	f38080e7          	jalr	-200(ra) # 80001244 <_Z9mem_allocm>
    80006314:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006318:	00000593          	li	a1,0
    8000631c:	02048513          	addi	a0,s1,32
    80006320:	ffffb097          	auipc	ra,0xffffb
    80006324:	098080e7          	jalr	152(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006328:	00090593          	mv	a1,s2
    8000632c:	01848513          	addi	a0,s1,24
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	088080e7          	jalr	136(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    80006338:	00100593          	li	a1,1
    8000633c:	02848513          	addi	a0,s1,40
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	078080e7          	jalr	120(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    80006348:	00100593          	li	a1,1
    8000634c:	03048513          	addi	a0,s1,48
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	068080e7          	jalr	104(ra) # 800013b8 <_Z8sem_openPP11MySemaphorej>
}
    80006358:	01813083          	ld	ra,24(sp)
    8000635c:	01013403          	ld	s0,16(sp)
    80006360:	00813483          	ld	s1,8(sp)
    80006364:	00013903          	ld	s2,0(sp)
    80006368:	02010113          	addi	sp,sp,32
    8000636c:	00008067          	ret

0000000080006370 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	01213023          	sd	s2,0(sp)
    80006384:	02010413          	addi	s0,sp,32
    80006388:	00050493          	mv	s1,a0
    8000638c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006390:	01853503          	ld	a0,24(a0)
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	0a8080e7          	jalr	168(ra) # 8000143c <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    8000639c:	0304b503          	ld	a0,48(s1)
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	09c080e7          	jalr	156(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    800063a8:	0084b783          	ld	a5,8(s1)
    800063ac:	0144a703          	lw	a4,20(s1)
    800063b0:	00271713          	slli	a4,a4,0x2
    800063b4:	00e787b3          	add	a5,a5,a4
    800063b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063bc:	0144a783          	lw	a5,20(s1)
    800063c0:	0017879b          	addiw	a5,a5,1
    800063c4:	0004a703          	lw	a4,0(s1)
    800063c8:	02e7e7bb          	remw	a5,a5,a4
    800063cc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800063d0:	0304b503          	ld	a0,48(s1)
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	0a8080e7          	jalr	168(ra) # 8000147c <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    800063dc:	0204b503          	ld	a0,32(s1)
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	09c080e7          	jalr	156(ra) # 8000147c <_Z10sem_signalP11MySemaphore>

}
    800063e8:	01813083          	ld	ra,24(sp)
    800063ec:	01013403          	ld	s0,16(sp)
    800063f0:	00813483          	ld	s1,8(sp)
    800063f4:	00013903          	ld	s2,0(sp)
    800063f8:	02010113          	addi	sp,sp,32
    800063fc:	00008067          	ret

0000000080006400 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006400:	fe010113          	addi	sp,sp,-32
    80006404:	00113c23          	sd	ra,24(sp)
    80006408:	00813823          	sd	s0,16(sp)
    8000640c:	00913423          	sd	s1,8(sp)
    80006410:	01213023          	sd	s2,0(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000641c:	02053503          	ld	a0,32(a0)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	01c080e7          	jalr	28(ra) # 8000143c <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    80006428:	0284b503          	ld	a0,40(s1)
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	010080e7          	jalr	16(ra) # 8000143c <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    80006434:	0084b703          	ld	a4,8(s1)
    80006438:	0104a783          	lw	a5,16(s1)
    8000643c:	00279693          	slli	a3,a5,0x2
    80006440:	00d70733          	add	a4,a4,a3
    80006444:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006448:	0017879b          	addiw	a5,a5,1
    8000644c:	0004a703          	lw	a4,0(s1)
    80006450:	02e7e7bb          	remw	a5,a5,a4
    80006454:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006458:	0284b503          	ld	a0,40(s1)
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	020080e7          	jalr	32(ra) # 8000147c <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    80006464:	0184b503          	ld	a0,24(s1)
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	014080e7          	jalr	20(ra) # 8000147c <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80006470:	00090513          	mv	a0,s2
    80006474:	01813083          	ld	ra,24(sp)
    80006478:	01013403          	ld	s0,16(sp)
    8000647c:	00813483          	ld	s1,8(sp)
    80006480:	00013903          	ld	s2,0(sp)
    80006484:	02010113          	addi	sp,sp,32
    80006488:	00008067          	ret

000000008000648c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000648c:	fe010113          	addi	sp,sp,-32
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	01213023          	sd	s2,0(sp)
    800064a0:	02010413          	addi	s0,sp,32
    800064a4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800064a8:	02853503          	ld	a0,40(a0)
    800064ac:	ffffb097          	auipc	ra,0xffffb
    800064b0:	f90080e7          	jalr	-112(ra) # 8000143c <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    800064b4:	0304b503          	ld	a0,48(s1)
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	f84080e7          	jalr	-124(ra) # 8000143c <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    800064c0:	0144a783          	lw	a5,20(s1)
    800064c4:	0104a903          	lw	s2,16(s1)
    800064c8:	0327ce63          	blt	a5,s2,80006504 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800064cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800064d0:	0304b503          	ld	a0,48(s1)
    800064d4:	ffffb097          	auipc	ra,0xffffb
    800064d8:	fa8080e7          	jalr	-88(ra) # 8000147c <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    800064dc:	0284b503          	ld	a0,40(s1)
    800064e0:	ffffb097          	auipc	ra,0xffffb
    800064e4:	f9c080e7          	jalr	-100(ra) # 8000147c <_Z10sem_signalP11MySemaphore>

    return ret;
}
    800064e8:	00090513          	mv	a0,s2
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	00013903          	ld	s2,0(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret
        ret = cap - head + tail;
    80006504:	0004a703          	lw	a4,0(s1)
    80006508:	4127093b          	subw	s2,a4,s2
    8000650c:	00f9093b          	addw	s2,s2,a5
    80006510:	fc1ff06f          	j	800064d0 <_ZN6Buffer6getCntEv+0x44>

0000000080006514 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006514:	fe010113          	addi	sp,sp,-32
    80006518:	00113c23          	sd	ra,24(sp)
    8000651c:	00813823          	sd	s0,16(sp)
    80006520:	00913423          	sd	s1,8(sp)
    80006524:	02010413          	addi	s0,sp,32
    80006528:	00050493          	mv	s1,a0
    putc('\n');
    8000652c:	00a00513          	li	a0,10
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	040080e7          	jalr	64(ra) # 80001570 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006538:	00003517          	auipc	a0,0x3
    8000653c:	f4050513          	addi	a0,a0,-192 # 80009478 <_ZZ12printIntegermE6digits+0x1c8>
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	e64080e7          	jalr	-412(ra) # 800053a4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006548:	00048513          	mv	a0,s1
    8000654c:	00000097          	auipc	ra,0x0
    80006550:	f40080e7          	jalr	-192(ra) # 8000648c <_ZN6Buffer6getCntEv>
    80006554:	02a05c63          	blez	a0,8000658c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006558:	0084b783          	ld	a5,8(s1)
    8000655c:	0104a703          	lw	a4,16(s1)
    80006560:	00271713          	slli	a4,a4,0x2
    80006564:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006568:	0007c503          	lbu	a0,0(a5)
    8000656c:	ffffb097          	auipc	ra,0xffffb
    80006570:	004080e7          	jalr	4(ra) # 80001570 <_Z4putcc>
        head = (head + 1) % cap;
    80006574:	0104a783          	lw	a5,16(s1)
    80006578:	0017879b          	addiw	a5,a5,1
    8000657c:	0004a703          	lw	a4,0(s1)
    80006580:	02e7e7bb          	remw	a5,a5,a4
    80006584:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006588:	fc1ff06f          	j	80006548 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000658c:	02100513          	li	a0,33
    80006590:	ffffb097          	auipc	ra,0xffffb
    80006594:	fe0080e7          	jalr	-32(ra) # 80001570 <_Z4putcc>
    putc('\n');
    80006598:	00a00513          	li	a0,10
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	fd4080e7          	jalr	-44(ra) # 80001570 <_Z4putcc>
    mem_free(buffer);
    800065a4:	0084b503          	ld	a0,8(s1)
    800065a8:	ffffb097          	auipc	ra,0xffffb
    800065ac:	ce0080e7          	jalr	-800(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800065b0:	0204b503          	ld	a0,32(s1)
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	e48080e7          	jalr	-440(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    800065bc:	0184b503          	ld	a0,24(s1)
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	e3c080e7          	jalr	-452(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    800065c8:	0304b503          	ld	a0,48(s1)
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	e30080e7          	jalr	-464(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    800065d4:	0284b503          	ld	a0,40(s1)
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	e24080e7          	jalr	-476(ra) # 800013fc <_Z9sem_closeP11MySemaphore>
}
    800065e0:	01813083          	ld	ra,24(sp)
    800065e4:	01013403          	ld	s0,16(sp)
    800065e8:	00813483          	ld	s1,8(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret

00000000800065f4 <start>:
    800065f4:	ff010113          	addi	sp,sp,-16
    800065f8:	00813423          	sd	s0,8(sp)
    800065fc:	01010413          	addi	s0,sp,16
    80006600:	300027f3          	csrr	a5,mstatus
    80006604:	ffffe737          	lui	a4,0xffffe
    80006608:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1d6f>
    8000660c:	00e7f7b3          	and	a5,a5,a4
    80006610:	00001737          	lui	a4,0x1
    80006614:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006618:	00e7e7b3          	or	a5,a5,a4
    8000661c:	30079073          	csrw	mstatus,a5
    80006620:	00000797          	auipc	a5,0x0
    80006624:	16078793          	addi	a5,a5,352 # 80006780 <system_main>
    80006628:	34179073          	csrw	mepc,a5
    8000662c:	00000793          	li	a5,0
    80006630:	18079073          	csrw	satp,a5
    80006634:	000107b7          	lui	a5,0x10
    80006638:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000663c:	30279073          	csrw	medeleg,a5
    80006640:	30379073          	csrw	mideleg,a5
    80006644:	104027f3          	csrr	a5,sie
    80006648:	2227e793          	ori	a5,a5,546
    8000664c:	10479073          	csrw	sie,a5
    80006650:	fff00793          	li	a5,-1
    80006654:	00a7d793          	srli	a5,a5,0xa
    80006658:	3b079073          	csrw	pmpaddr0,a5
    8000665c:	00f00793          	li	a5,15
    80006660:	3a079073          	csrw	pmpcfg0,a5
    80006664:	f14027f3          	csrr	a5,mhartid
    80006668:	0200c737          	lui	a4,0x200c
    8000666c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006670:	0007869b          	sext.w	a3,a5
    80006674:	00269713          	slli	a4,a3,0x2
    80006678:	000f4637          	lui	a2,0xf4
    8000667c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006680:	00d70733          	add	a4,a4,a3
    80006684:	0037979b          	slliw	a5,a5,0x3
    80006688:	020046b7          	lui	a3,0x2004
    8000668c:	00d787b3          	add	a5,a5,a3
    80006690:	00c585b3          	add	a1,a1,a2
    80006694:	00371693          	slli	a3,a4,0x3
    80006698:	00005717          	auipc	a4,0x5
    8000669c:	19870713          	addi	a4,a4,408 # 8000b830 <timer_scratch>
    800066a0:	00b7b023          	sd	a1,0(a5)
    800066a4:	00d70733          	add	a4,a4,a3
    800066a8:	00f73c23          	sd	a5,24(a4)
    800066ac:	02c73023          	sd	a2,32(a4)
    800066b0:	34071073          	csrw	mscratch,a4
    800066b4:	00000797          	auipc	a5,0x0
    800066b8:	6ec78793          	addi	a5,a5,1772 # 80006da0 <timervec>
    800066bc:	30579073          	csrw	mtvec,a5
    800066c0:	300027f3          	csrr	a5,mstatus
    800066c4:	0087e793          	ori	a5,a5,8
    800066c8:	30079073          	csrw	mstatus,a5
    800066cc:	304027f3          	csrr	a5,mie
    800066d0:	0807e793          	ori	a5,a5,128
    800066d4:	30479073          	csrw	mie,a5
    800066d8:	f14027f3          	csrr	a5,mhartid
    800066dc:	0007879b          	sext.w	a5,a5
    800066e0:	00078213          	mv	tp,a5
    800066e4:	30200073          	mret
    800066e8:	00813403          	ld	s0,8(sp)
    800066ec:	01010113          	addi	sp,sp,16
    800066f0:	00008067          	ret

00000000800066f4 <timerinit>:
    800066f4:	ff010113          	addi	sp,sp,-16
    800066f8:	00813423          	sd	s0,8(sp)
    800066fc:	01010413          	addi	s0,sp,16
    80006700:	f14027f3          	csrr	a5,mhartid
    80006704:	0200c737          	lui	a4,0x200c
    80006708:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000670c:	0007869b          	sext.w	a3,a5
    80006710:	00269713          	slli	a4,a3,0x2
    80006714:	000f4637          	lui	a2,0xf4
    80006718:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000671c:	00d70733          	add	a4,a4,a3
    80006720:	0037979b          	slliw	a5,a5,0x3
    80006724:	020046b7          	lui	a3,0x2004
    80006728:	00d787b3          	add	a5,a5,a3
    8000672c:	00c585b3          	add	a1,a1,a2
    80006730:	00371693          	slli	a3,a4,0x3
    80006734:	00005717          	auipc	a4,0x5
    80006738:	0fc70713          	addi	a4,a4,252 # 8000b830 <timer_scratch>
    8000673c:	00b7b023          	sd	a1,0(a5)
    80006740:	00d70733          	add	a4,a4,a3
    80006744:	00f73c23          	sd	a5,24(a4)
    80006748:	02c73023          	sd	a2,32(a4)
    8000674c:	34071073          	csrw	mscratch,a4
    80006750:	00000797          	auipc	a5,0x0
    80006754:	65078793          	addi	a5,a5,1616 # 80006da0 <timervec>
    80006758:	30579073          	csrw	mtvec,a5
    8000675c:	300027f3          	csrr	a5,mstatus
    80006760:	0087e793          	ori	a5,a5,8
    80006764:	30079073          	csrw	mstatus,a5
    80006768:	304027f3          	csrr	a5,mie
    8000676c:	0807e793          	ori	a5,a5,128
    80006770:	30479073          	csrw	mie,a5
    80006774:	00813403          	ld	s0,8(sp)
    80006778:	01010113          	addi	sp,sp,16
    8000677c:	00008067          	ret

0000000080006780 <system_main>:
    80006780:	fe010113          	addi	sp,sp,-32
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	00113c23          	sd	ra,24(sp)
    80006790:	02010413          	addi	s0,sp,32
    80006794:	00000097          	auipc	ra,0x0
    80006798:	0c4080e7          	jalr	196(ra) # 80006858 <cpuid>
    8000679c:	00005497          	auipc	s1,0x5
    800067a0:	fc448493          	addi	s1,s1,-60 # 8000b760 <started>
    800067a4:	02050263          	beqz	a0,800067c8 <system_main+0x48>
    800067a8:	0004a783          	lw	a5,0(s1)
    800067ac:	0007879b          	sext.w	a5,a5
    800067b0:	fe078ce3          	beqz	a5,800067a8 <system_main+0x28>
    800067b4:	0ff0000f          	fence
    800067b8:	00003517          	auipc	a0,0x3
    800067bc:	f9050513          	addi	a0,a0,-112 # 80009748 <_ZZ12printIntegermE6digits+0x498>
    800067c0:	00001097          	auipc	ra,0x1
    800067c4:	a7c080e7          	jalr	-1412(ra) # 8000723c <panic>
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	9d0080e7          	jalr	-1584(ra) # 80007198 <consoleinit>
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	15c080e7          	jalr	348(ra) # 8000792c <printfinit>
    800067d8:	00003517          	auipc	a0,0x3
    800067dc:	df850513          	addi	a0,a0,-520 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    800067e0:	00001097          	auipc	ra,0x1
    800067e4:	ab8080e7          	jalr	-1352(ra) # 80007298 <__printf>
    800067e8:	00003517          	auipc	a0,0x3
    800067ec:	f3050513          	addi	a0,a0,-208 # 80009718 <_ZZ12printIntegermE6digits+0x468>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	aa8080e7          	jalr	-1368(ra) # 80007298 <__printf>
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	dd850513          	addi	a0,a0,-552 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80006800:	00001097          	auipc	ra,0x1
    80006804:	a98080e7          	jalr	-1384(ra) # 80007298 <__printf>
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	4b0080e7          	jalr	1200(ra) # 80007cb8 <kinit>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	148080e7          	jalr	328(ra) # 80006958 <trapinit>
    80006818:	00000097          	auipc	ra,0x0
    8000681c:	16c080e7          	jalr	364(ra) # 80006984 <trapinithart>
    80006820:	00000097          	auipc	ra,0x0
    80006824:	5c0080e7          	jalr	1472(ra) # 80006de0 <plicinit>
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	5e0080e7          	jalr	1504(ra) # 80006e08 <plicinithart>
    80006830:	00000097          	auipc	ra,0x0
    80006834:	078080e7          	jalr	120(ra) # 800068a8 <userinit>
    80006838:	0ff0000f          	fence
    8000683c:	00100793          	li	a5,1
    80006840:	00003517          	auipc	a0,0x3
    80006844:	ef050513          	addi	a0,a0,-272 # 80009730 <_ZZ12printIntegermE6digits+0x480>
    80006848:	00f4a023          	sw	a5,0(s1)
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	a4c080e7          	jalr	-1460(ra) # 80007298 <__printf>
    80006854:	0000006f          	j	80006854 <system_main+0xd4>

0000000080006858 <cpuid>:
    80006858:	ff010113          	addi	sp,sp,-16
    8000685c:	00813423          	sd	s0,8(sp)
    80006860:	01010413          	addi	s0,sp,16
    80006864:	00020513          	mv	a0,tp
    80006868:	00813403          	ld	s0,8(sp)
    8000686c:	0005051b          	sext.w	a0,a0
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret

0000000080006878 <mycpu>:
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00813423          	sd	s0,8(sp)
    80006880:	01010413          	addi	s0,sp,16
    80006884:	00020793          	mv	a5,tp
    80006888:	00813403          	ld	s0,8(sp)
    8000688c:	0007879b          	sext.w	a5,a5
    80006890:	00779793          	slli	a5,a5,0x7
    80006894:	00006517          	auipc	a0,0x6
    80006898:	fcc50513          	addi	a0,a0,-52 # 8000c860 <cpus>
    8000689c:	00f50533          	add	a0,a0,a5
    800068a0:	01010113          	addi	sp,sp,16
    800068a4:	00008067          	ret

00000000800068a8 <userinit>:
    800068a8:	ff010113          	addi	sp,sp,-16
    800068ac:	00813423          	sd	s0,8(sp)
    800068b0:	01010413          	addi	s0,sp,16
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	01010113          	addi	sp,sp,16
    800068bc:	ffffb317          	auipc	t1,0xffffb
    800068c0:	2a030067          	jr	672(t1) # 80001b5c <main>

00000000800068c4 <either_copyout>:
    800068c4:	ff010113          	addi	sp,sp,-16
    800068c8:	00813023          	sd	s0,0(sp)
    800068cc:	00113423          	sd	ra,8(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	02051663          	bnez	a0,80006900 <either_copyout+0x3c>
    800068d8:	00058513          	mv	a0,a1
    800068dc:	00060593          	mv	a1,a2
    800068e0:	0006861b          	sext.w	a2,a3
    800068e4:	00002097          	auipc	ra,0x2
    800068e8:	c60080e7          	jalr	-928(ra) # 80008544 <__memmove>
    800068ec:	00813083          	ld	ra,8(sp)
    800068f0:	00013403          	ld	s0,0(sp)
    800068f4:	00000513          	li	a0,0
    800068f8:	01010113          	addi	sp,sp,16
    800068fc:	00008067          	ret
    80006900:	00003517          	auipc	a0,0x3
    80006904:	e7050513          	addi	a0,a0,-400 # 80009770 <_ZZ12printIntegermE6digits+0x4c0>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	934080e7          	jalr	-1740(ra) # 8000723c <panic>

0000000080006910 <either_copyin>:
    80006910:	ff010113          	addi	sp,sp,-16
    80006914:	00813023          	sd	s0,0(sp)
    80006918:	00113423          	sd	ra,8(sp)
    8000691c:	01010413          	addi	s0,sp,16
    80006920:	02059463          	bnez	a1,80006948 <either_copyin+0x38>
    80006924:	00060593          	mv	a1,a2
    80006928:	0006861b          	sext.w	a2,a3
    8000692c:	00002097          	auipc	ra,0x2
    80006930:	c18080e7          	jalr	-1000(ra) # 80008544 <__memmove>
    80006934:	00813083          	ld	ra,8(sp)
    80006938:	00013403          	ld	s0,0(sp)
    8000693c:	00000513          	li	a0,0
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret
    80006948:	00003517          	auipc	a0,0x3
    8000694c:	e5050513          	addi	a0,a0,-432 # 80009798 <_ZZ12printIntegermE6digits+0x4e8>
    80006950:	00001097          	auipc	ra,0x1
    80006954:	8ec080e7          	jalr	-1812(ra) # 8000723c <panic>

0000000080006958 <trapinit>:
    80006958:	ff010113          	addi	sp,sp,-16
    8000695c:	00813423          	sd	s0,8(sp)
    80006960:	01010413          	addi	s0,sp,16
    80006964:	00813403          	ld	s0,8(sp)
    80006968:	00003597          	auipc	a1,0x3
    8000696c:	e5858593          	addi	a1,a1,-424 # 800097c0 <_ZZ12printIntegermE6digits+0x510>
    80006970:	00006517          	auipc	a0,0x6
    80006974:	f7050513          	addi	a0,a0,-144 # 8000c8e0 <tickslock>
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00001317          	auipc	t1,0x1
    80006980:	5cc30067          	jr	1484(t1) # 80007f48 <initlock>

0000000080006984 <trapinithart>:
    80006984:	ff010113          	addi	sp,sp,-16
    80006988:	00813423          	sd	s0,8(sp)
    8000698c:	01010413          	addi	s0,sp,16
    80006990:	00000797          	auipc	a5,0x0
    80006994:	30078793          	addi	a5,a5,768 # 80006c90 <kernelvec>
    80006998:	10579073          	csrw	stvec,a5
    8000699c:	00813403          	ld	s0,8(sp)
    800069a0:	01010113          	addi	sp,sp,16
    800069a4:	00008067          	ret

00000000800069a8 <usertrap>:
    800069a8:	ff010113          	addi	sp,sp,-16
    800069ac:	00813423          	sd	s0,8(sp)
    800069b0:	01010413          	addi	s0,sp,16
    800069b4:	00813403          	ld	s0,8(sp)
    800069b8:	01010113          	addi	sp,sp,16
    800069bc:	00008067          	ret

00000000800069c0 <usertrapret>:
    800069c0:	ff010113          	addi	sp,sp,-16
    800069c4:	00813423          	sd	s0,8(sp)
    800069c8:	01010413          	addi	s0,sp,16
    800069cc:	00813403          	ld	s0,8(sp)
    800069d0:	01010113          	addi	sp,sp,16
    800069d4:	00008067          	ret

00000000800069d8 <kerneltrap>:
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00113c23          	sd	ra,24(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	142025f3          	csrr	a1,scause
    800069f0:	100027f3          	csrr	a5,sstatus
    800069f4:	0027f793          	andi	a5,a5,2
    800069f8:	10079c63          	bnez	a5,80006b10 <kerneltrap+0x138>
    800069fc:	142027f3          	csrr	a5,scause
    80006a00:	0207ce63          	bltz	a5,80006a3c <kerneltrap+0x64>
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	e0450513          	addi	a0,a0,-508 # 80009808 <_ZZ12printIntegermE6digits+0x558>
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	88c080e7          	jalr	-1908(ra) # 80007298 <__printf>
    80006a14:	141025f3          	csrr	a1,sepc
    80006a18:	14302673          	csrr	a2,stval
    80006a1c:	00003517          	auipc	a0,0x3
    80006a20:	dfc50513          	addi	a0,a0,-516 # 80009818 <_ZZ12printIntegermE6digits+0x568>
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	874080e7          	jalr	-1932(ra) # 80007298 <__printf>
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	e0450513          	addi	a0,a0,-508 # 80009830 <_ZZ12printIntegermE6digits+0x580>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	808080e7          	jalr	-2040(ra) # 8000723c <panic>
    80006a3c:	0ff7f713          	andi	a4,a5,255
    80006a40:	00900693          	li	a3,9
    80006a44:	04d70063          	beq	a4,a3,80006a84 <kerneltrap+0xac>
    80006a48:	fff00713          	li	a4,-1
    80006a4c:	03f71713          	slli	a4,a4,0x3f
    80006a50:	00170713          	addi	a4,a4,1
    80006a54:	fae798e3          	bne	a5,a4,80006a04 <kerneltrap+0x2c>
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	e00080e7          	jalr	-512(ra) # 80006858 <cpuid>
    80006a60:	06050663          	beqz	a0,80006acc <kerneltrap+0xf4>
    80006a64:	144027f3          	csrr	a5,sip
    80006a68:	ffd7f793          	andi	a5,a5,-3
    80006a6c:	14479073          	csrw	sip,a5
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	01013403          	ld	s0,16(sp)
    80006a78:	00813483          	ld	s1,8(sp)
    80006a7c:	02010113          	addi	sp,sp,32
    80006a80:	00008067          	ret
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	3d0080e7          	jalr	976(ra) # 80006e54 <plic_claim>
    80006a8c:	00a00793          	li	a5,10
    80006a90:	00050493          	mv	s1,a0
    80006a94:	06f50863          	beq	a0,a5,80006b04 <kerneltrap+0x12c>
    80006a98:	fc050ce3          	beqz	a0,80006a70 <kerneltrap+0x98>
    80006a9c:	00050593          	mv	a1,a0
    80006aa0:	00003517          	auipc	a0,0x3
    80006aa4:	d4850513          	addi	a0,a0,-696 # 800097e8 <_ZZ12printIntegermE6digits+0x538>
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	7f0080e7          	jalr	2032(ra) # 80007298 <__printf>
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	01813083          	ld	ra,24(sp)
    80006ab8:	00048513          	mv	a0,s1
    80006abc:	00813483          	ld	s1,8(sp)
    80006ac0:	02010113          	addi	sp,sp,32
    80006ac4:	00000317          	auipc	t1,0x0
    80006ac8:	3c830067          	jr	968(t1) # 80006e8c <plic_complete>
    80006acc:	00006517          	auipc	a0,0x6
    80006ad0:	e1450513          	addi	a0,a0,-492 # 8000c8e0 <tickslock>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	498080e7          	jalr	1176(ra) # 80007f6c <acquire>
    80006adc:	00005717          	auipc	a4,0x5
    80006ae0:	c8870713          	addi	a4,a4,-888 # 8000b764 <ticks>
    80006ae4:	00072783          	lw	a5,0(a4)
    80006ae8:	00006517          	auipc	a0,0x6
    80006aec:	df850513          	addi	a0,a0,-520 # 8000c8e0 <tickslock>
    80006af0:	0017879b          	addiw	a5,a5,1
    80006af4:	00f72023          	sw	a5,0(a4)
    80006af8:	00001097          	auipc	ra,0x1
    80006afc:	540080e7          	jalr	1344(ra) # 80008038 <release>
    80006b00:	f65ff06f          	j	80006a64 <kerneltrap+0x8c>
    80006b04:	00001097          	auipc	ra,0x1
    80006b08:	09c080e7          	jalr	156(ra) # 80007ba0 <uartintr>
    80006b0c:	fa5ff06f          	j	80006ab0 <kerneltrap+0xd8>
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	cb850513          	addi	a0,a0,-840 # 800097c8 <_ZZ12printIntegermE6digits+0x518>
    80006b18:	00000097          	auipc	ra,0x0
    80006b1c:	724080e7          	jalr	1828(ra) # 8000723c <panic>

0000000080006b20 <clockintr>:
    80006b20:	fe010113          	addi	sp,sp,-32
    80006b24:	00813823          	sd	s0,16(sp)
    80006b28:	00913423          	sd	s1,8(sp)
    80006b2c:	00113c23          	sd	ra,24(sp)
    80006b30:	02010413          	addi	s0,sp,32
    80006b34:	00006497          	auipc	s1,0x6
    80006b38:	dac48493          	addi	s1,s1,-596 # 8000c8e0 <tickslock>
    80006b3c:	00048513          	mv	a0,s1
    80006b40:	00001097          	auipc	ra,0x1
    80006b44:	42c080e7          	jalr	1068(ra) # 80007f6c <acquire>
    80006b48:	00005717          	auipc	a4,0x5
    80006b4c:	c1c70713          	addi	a4,a4,-996 # 8000b764 <ticks>
    80006b50:	00072783          	lw	a5,0(a4)
    80006b54:	01013403          	ld	s0,16(sp)
    80006b58:	01813083          	ld	ra,24(sp)
    80006b5c:	00048513          	mv	a0,s1
    80006b60:	0017879b          	addiw	a5,a5,1
    80006b64:	00813483          	ld	s1,8(sp)
    80006b68:	00f72023          	sw	a5,0(a4)
    80006b6c:	02010113          	addi	sp,sp,32
    80006b70:	00001317          	auipc	t1,0x1
    80006b74:	4c830067          	jr	1224(t1) # 80008038 <release>

0000000080006b78 <devintr>:
    80006b78:	142027f3          	csrr	a5,scause
    80006b7c:	00000513          	li	a0,0
    80006b80:	0007c463          	bltz	a5,80006b88 <devintr+0x10>
    80006b84:	00008067          	ret
    80006b88:	fe010113          	addi	sp,sp,-32
    80006b8c:	00813823          	sd	s0,16(sp)
    80006b90:	00113c23          	sd	ra,24(sp)
    80006b94:	00913423          	sd	s1,8(sp)
    80006b98:	02010413          	addi	s0,sp,32
    80006b9c:	0ff7f713          	andi	a4,a5,255
    80006ba0:	00900693          	li	a3,9
    80006ba4:	04d70c63          	beq	a4,a3,80006bfc <devintr+0x84>
    80006ba8:	fff00713          	li	a4,-1
    80006bac:	03f71713          	slli	a4,a4,0x3f
    80006bb0:	00170713          	addi	a4,a4,1
    80006bb4:	00e78c63          	beq	a5,a4,80006bcc <devintr+0x54>
    80006bb8:	01813083          	ld	ra,24(sp)
    80006bbc:	01013403          	ld	s0,16(sp)
    80006bc0:	00813483          	ld	s1,8(sp)
    80006bc4:	02010113          	addi	sp,sp,32
    80006bc8:	00008067          	ret
    80006bcc:	00000097          	auipc	ra,0x0
    80006bd0:	c8c080e7          	jalr	-884(ra) # 80006858 <cpuid>
    80006bd4:	06050663          	beqz	a0,80006c40 <devintr+0xc8>
    80006bd8:	144027f3          	csrr	a5,sip
    80006bdc:	ffd7f793          	andi	a5,a5,-3
    80006be0:	14479073          	csrw	sip,a5
    80006be4:	01813083          	ld	ra,24(sp)
    80006be8:	01013403          	ld	s0,16(sp)
    80006bec:	00813483          	ld	s1,8(sp)
    80006bf0:	00200513          	li	a0,2
    80006bf4:	02010113          	addi	sp,sp,32
    80006bf8:	00008067          	ret
    80006bfc:	00000097          	auipc	ra,0x0
    80006c00:	258080e7          	jalr	600(ra) # 80006e54 <plic_claim>
    80006c04:	00a00793          	li	a5,10
    80006c08:	00050493          	mv	s1,a0
    80006c0c:	06f50663          	beq	a0,a5,80006c78 <devintr+0x100>
    80006c10:	00100513          	li	a0,1
    80006c14:	fa0482e3          	beqz	s1,80006bb8 <devintr+0x40>
    80006c18:	00048593          	mv	a1,s1
    80006c1c:	00003517          	auipc	a0,0x3
    80006c20:	bcc50513          	addi	a0,a0,-1076 # 800097e8 <_ZZ12printIntegermE6digits+0x538>
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	674080e7          	jalr	1652(ra) # 80007298 <__printf>
    80006c2c:	00048513          	mv	a0,s1
    80006c30:	00000097          	auipc	ra,0x0
    80006c34:	25c080e7          	jalr	604(ra) # 80006e8c <plic_complete>
    80006c38:	00100513          	li	a0,1
    80006c3c:	f7dff06f          	j	80006bb8 <devintr+0x40>
    80006c40:	00006517          	auipc	a0,0x6
    80006c44:	ca050513          	addi	a0,a0,-864 # 8000c8e0 <tickslock>
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	324080e7          	jalr	804(ra) # 80007f6c <acquire>
    80006c50:	00005717          	auipc	a4,0x5
    80006c54:	b1470713          	addi	a4,a4,-1260 # 8000b764 <ticks>
    80006c58:	00072783          	lw	a5,0(a4)
    80006c5c:	00006517          	auipc	a0,0x6
    80006c60:	c8450513          	addi	a0,a0,-892 # 8000c8e0 <tickslock>
    80006c64:	0017879b          	addiw	a5,a5,1
    80006c68:	00f72023          	sw	a5,0(a4)
    80006c6c:	00001097          	auipc	ra,0x1
    80006c70:	3cc080e7          	jalr	972(ra) # 80008038 <release>
    80006c74:	f65ff06f          	j	80006bd8 <devintr+0x60>
    80006c78:	00001097          	auipc	ra,0x1
    80006c7c:	f28080e7          	jalr	-216(ra) # 80007ba0 <uartintr>
    80006c80:	fadff06f          	j	80006c2c <devintr+0xb4>
	...

0000000080006c90 <kernelvec>:
    80006c90:	f0010113          	addi	sp,sp,-256
    80006c94:	00113023          	sd	ra,0(sp)
    80006c98:	00213423          	sd	sp,8(sp)
    80006c9c:	00313823          	sd	gp,16(sp)
    80006ca0:	00413c23          	sd	tp,24(sp)
    80006ca4:	02513023          	sd	t0,32(sp)
    80006ca8:	02613423          	sd	t1,40(sp)
    80006cac:	02713823          	sd	t2,48(sp)
    80006cb0:	02813c23          	sd	s0,56(sp)
    80006cb4:	04913023          	sd	s1,64(sp)
    80006cb8:	04a13423          	sd	a0,72(sp)
    80006cbc:	04b13823          	sd	a1,80(sp)
    80006cc0:	04c13c23          	sd	a2,88(sp)
    80006cc4:	06d13023          	sd	a3,96(sp)
    80006cc8:	06e13423          	sd	a4,104(sp)
    80006ccc:	06f13823          	sd	a5,112(sp)
    80006cd0:	07013c23          	sd	a6,120(sp)
    80006cd4:	09113023          	sd	a7,128(sp)
    80006cd8:	09213423          	sd	s2,136(sp)
    80006cdc:	09313823          	sd	s3,144(sp)
    80006ce0:	09413c23          	sd	s4,152(sp)
    80006ce4:	0b513023          	sd	s5,160(sp)
    80006ce8:	0b613423          	sd	s6,168(sp)
    80006cec:	0b713823          	sd	s7,176(sp)
    80006cf0:	0b813c23          	sd	s8,184(sp)
    80006cf4:	0d913023          	sd	s9,192(sp)
    80006cf8:	0da13423          	sd	s10,200(sp)
    80006cfc:	0db13823          	sd	s11,208(sp)
    80006d00:	0dc13c23          	sd	t3,216(sp)
    80006d04:	0fd13023          	sd	t4,224(sp)
    80006d08:	0fe13423          	sd	t5,232(sp)
    80006d0c:	0ff13823          	sd	t6,240(sp)
    80006d10:	cc9ff0ef          	jal	ra,800069d8 <kerneltrap>
    80006d14:	00013083          	ld	ra,0(sp)
    80006d18:	00813103          	ld	sp,8(sp)
    80006d1c:	01013183          	ld	gp,16(sp)
    80006d20:	02013283          	ld	t0,32(sp)
    80006d24:	02813303          	ld	t1,40(sp)
    80006d28:	03013383          	ld	t2,48(sp)
    80006d2c:	03813403          	ld	s0,56(sp)
    80006d30:	04013483          	ld	s1,64(sp)
    80006d34:	04813503          	ld	a0,72(sp)
    80006d38:	05013583          	ld	a1,80(sp)
    80006d3c:	05813603          	ld	a2,88(sp)
    80006d40:	06013683          	ld	a3,96(sp)
    80006d44:	06813703          	ld	a4,104(sp)
    80006d48:	07013783          	ld	a5,112(sp)
    80006d4c:	07813803          	ld	a6,120(sp)
    80006d50:	08013883          	ld	a7,128(sp)
    80006d54:	08813903          	ld	s2,136(sp)
    80006d58:	09013983          	ld	s3,144(sp)
    80006d5c:	09813a03          	ld	s4,152(sp)
    80006d60:	0a013a83          	ld	s5,160(sp)
    80006d64:	0a813b03          	ld	s6,168(sp)
    80006d68:	0b013b83          	ld	s7,176(sp)
    80006d6c:	0b813c03          	ld	s8,184(sp)
    80006d70:	0c013c83          	ld	s9,192(sp)
    80006d74:	0c813d03          	ld	s10,200(sp)
    80006d78:	0d013d83          	ld	s11,208(sp)
    80006d7c:	0d813e03          	ld	t3,216(sp)
    80006d80:	0e013e83          	ld	t4,224(sp)
    80006d84:	0e813f03          	ld	t5,232(sp)
    80006d88:	0f013f83          	ld	t6,240(sp)
    80006d8c:	10010113          	addi	sp,sp,256
    80006d90:	10200073          	sret
    80006d94:	00000013          	nop
    80006d98:	00000013          	nop
    80006d9c:	00000013          	nop

0000000080006da0 <timervec>:
    80006da0:	34051573          	csrrw	a0,mscratch,a0
    80006da4:	00b53023          	sd	a1,0(a0)
    80006da8:	00c53423          	sd	a2,8(a0)
    80006dac:	00d53823          	sd	a3,16(a0)
    80006db0:	01853583          	ld	a1,24(a0)
    80006db4:	02053603          	ld	a2,32(a0)
    80006db8:	0005b683          	ld	a3,0(a1)
    80006dbc:	00c686b3          	add	a3,a3,a2
    80006dc0:	00d5b023          	sd	a3,0(a1)
    80006dc4:	00200593          	li	a1,2
    80006dc8:	14459073          	csrw	sip,a1
    80006dcc:	01053683          	ld	a3,16(a0)
    80006dd0:	00853603          	ld	a2,8(a0)
    80006dd4:	00053583          	ld	a1,0(a0)
    80006dd8:	34051573          	csrrw	a0,mscratch,a0
    80006ddc:	30200073          	mret

0000000080006de0 <plicinit>:
    80006de0:	ff010113          	addi	sp,sp,-16
    80006de4:	00813423          	sd	s0,8(sp)
    80006de8:	01010413          	addi	s0,sp,16
    80006dec:	00813403          	ld	s0,8(sp)
    80006df0:	0c0007b7          	lui	a5,0xc000
    80006df4:	00100713          	li	a4,1
    80006df8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006dfc:	00e7a223          	sw	a4,4(a5)
    80006e00:	01010113          	addi	sp,sp,16
    80006e04:	00008067          	ret

0000000080006e08 <plicinithart>:
    80006e08:	ff010113          	addi	sp,sp,-16
    80006e0c:	00813023          	sd	s0,0(sp)
    80006e10:	00113423          	sd	ra,8(sp)
    80006e14:	01010413          	addi	s0,sp,16
    80006e18:	00000097          	auipc	ra,0x0
    80006e1c:	a40080e7          	jalr	-1472(ra) # 80006858 <cpuid>
    80006e20:	0085171b          	slliw	a4,a0,0x8
    80006e24:	0c0027b7          	lui	a5,0xc002
    80006e28:	00e787b3          	add	a5,a5,a4
    80006e2c:	40200713          	li	a4,1026
    80006e30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e34:	00813083          	ld	ra,8(sp)
    80006e38:	00013403          	ld	s0,0(sp)
    80006e3c:	00d5151b          	slliw	a0,a0,0xd
    80006e40:	0c2017b7          	lui	a5,0xc201
    80006e44:	00a78533          	add	a0,a5,a0
    80006e48:	00052023          	sw	zero,0(a0)
    80006e4c:	01010113          	addi	sp,sp,16
    80006e50:	00008067          	ret

0000000080006e54 <plic_claim>:
    80006e54:	ff010113          	addi	sp,sp,-16
    80006e58:	00813023          	sd	s0,0(sp)
    80006e5c:	00113423          	sd	ra,8(sp)
    80006e60:	01010413          	addi	s0,sp,16
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	9f4080e7          	jalr	-1548(ra) # 80006858 <cpuid>
    80006e6c:	00813083          	ld	ra,8(sp)
    80006e70:	00013403          	ld	s0,0(sp)
    80006e74:	00d5151b          	slliw	a0,a0,0xd
    80006e78:	0c2017b7          	lui	a5,0xc201
    80006e7c:	00a78533          	add	a0,a5,a0
    80006e80:	00452503          	lw	a0,4(a0)
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <plic_complete>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00913423          	sd	s1,8(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00050493          	mv	s1,a0
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	9b4080e7          	jalr	-1612(ra) # 80006858 <cpuid>
    80006eac:	01813083          	ld	ra,24(sp)
    80006eb0:	01013403          	ld	s0,16(sp)
    80006eb4:	00d5179b          	slliw	a5,a0,0xd
    80006eb8:	0c201737          	lui	a4,0xc201
    80006ebc:	00f707b3          	add	a5,a4,a5
    80006ec0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ec4:	00813483          	ld	s1,8(sp)
    80006ec8:	02010113          	addi	sp,sp,32
    80006ecc:	00008067          	ret

0000000080006ed0 <consolewrite>:
    80006ed0:	fb010113          	addi	sp,sp,-80
    80006ed4:	04813023          	sd	s0,64(sp)
    80006ed8:	04113423          	sd	ra,72(sp)
    80006edc:	02913c23          	sd	s1,56(sp)
    80006ee0:	03213823          	sd	s2,48(sp)
    80006ee4:	03313423          	sd	s3,40(sp)
    80006ee8:	03413023          	sd	s4,32(sp)
    80006eec:	01513c23          	sd	s5,24(sp)
    80006ef0:	05010413          	addi	s0,sp,80
    80006ef4:	06c05c63          	blez	a2,80006f6c <consolewrite+0x9c>
    80006ef8:	00060993          	mv	s3,a2
    80006efc:	00050a13          	mv	s4,a0
    80006f00:	00058493          	mv	s1,a1
    80006f04:	00000913          	li	s2,0
    80006f08:	fff00a93          	li	s5,-1
    80006f0c:	01c0006f          	j	80006f28 <consolewrite+0x58>
    80006f10:	fbf44503          	lbu	a0,-65(s0)
    80006f14:	0019091b          	addiw	s2,s2,1
    80006f18:	00148493          	addi	s1,s1,1
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	a9c080e7          	jalr	-1380(ra) # 800079b8 <uartputc>
    80006f24:	03298063          	beq	s3,s2,80006f44 <consolewrite+0x74>
    80006f28:	00048613          	mv	a2,s1
    80006f2c:	00100693          	li	a3,1
    80006f30:	000a0593          	mv	a1,s4
    80006f34:	fbf40513          	addi	a0,s0,-65
    80006f38:	00000097          	auipc	ra,0x0
    80006f3c:	9d8080e7          	jalr	-1576(ra) # 80006910 <either_copyin>
    80006f40:	fd5518e3          	bne	a0,s5,80006f10 <consolewrite+0x40>
    80006f44:	04813083          	ld	ra,72(sp)
    80006f48:	04013403          	ld	s0,64(sp)
    80006f4c:	03813483          	ld	s1,56(sp)
    80006f50:	02813983          	ld	s3,40(sp)
    80006f54:	02013a03          	ld	s4,32(sp)
    80006f58:	01813a83          	ld	s5,24(sp)
    80006f5c:	00090513          	mv	a0,s2
    80006f60:	03013903          	ld	s2,48(sp)
    80006f64:	05010113          	addi	sp,sp,80
    80006f68:	00008067          	ret
    80006f6c:	00000913          	li	s2,0
    80006f70:	fd5ff06f          	j	80006f44 <consolewrite+0x74>

0000000080006f74 <consoleread>:
    80006f74:	f9010113          	addi	sp,sp,-112
    80006f78:	06813023          	sd	s0,96(sp)
    80006f7c:	04913c23          	sd	s1,88(sp)
    80006f80:	05213823          	sd	s2,80(sp)
    80006f84:	05313423          	sd	s3,72(sp)
    80006f88:	05413023          	sd	s4,64(sp)
    80006f8c:	03513c23          	sd	s5,56(sp)
    80006f90:	03613823          	sd	s6,48(sp)
    80006f94:	03713423          	sd	s7,40(sp)
    80006f98:	03813023          	sd	s8,32(sp)
    80006f9c:	06113423          	sd	ra,104(sp)
    80006fa0:	01913c23          	sd	s9,24(sp)
    80006fa4:	07010413          	addi	s0,sp,112
    80006fa8:	00060b93          	mv	s7,a2
    80006fac:	00050913          	mv	s2,a0
    80006fb0:	00058c13          	mv	s8,a1
    80006fb4:	00060b1b          	sext.w	s6,a2
    80006fb8:	00006497          	auipc	s1,0x6
    80006fbc:	95048493          	addi	s1,s1,-1712 # 8000c908 <cons>
    80006fc0:	00400993          	li	s3,4
    80006fc4:	fff00a13          	li	s4,-1
    80006fc8:	00a00a93          	li	s5,10
    80006fcc:	05705e63          	blez	s7,80007028 <consoleread+0xb4>
    80006fd0:	09c4a703          	lw	a4,156(s1)
    80006fd4:	0984a783          	lw	a5,152(s1)
    80006fd8:	0007071b          	sext.w	a4,a4
    80006fdc:	08e78463          	beq	a5,a4,80007064 <consoleread+0xf0>
    80006fe0:	07f7f713          	andi	a4,a5,127
    80006fe4:	00e48733          	add	a4,s1,a4
    80006fe8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006fec:	0017869b          	addiw	a3,a5,1
    80006ff0:	08d4ac23          	sw	a3,152(s1)
    80006ff4:	00070c9b          	sext.w	s9,a4
    80006ff8:	0b370663          	beq	a4,s3,800070a4 <consoleread+0x130>
    80006ffc:	00100693          	li	a3,1
    80007000:	f9f40613          	addi	a2,s0,-97
    80007004:	000c0593          	mv	a1,s8
    80007008:	00090513          	mv	a0,s2
    8000700c:	f8e40fa3          	sb	a4,-97(s0)
    80007010:	00000097          	auipc	ra,0x0
    80007014:	8b4080e7          	jalr	-1868(ra) # 800068c4 <either_copyout>
    80007018:	01450863          	beq	a0,s4,80007028 <consoleread+0xb4>
    8000701c:	001c0c13          	addi	s8,s8,1
    80007020:	fffb8b9b          	addiw	s7,s7,-1
    80007024:	fb5c94e3          	bne	s9,s5,80006fcc <consoleread+0x58>
    80007028:	000b851b          	sext.w	a0,s7
    8000702c:	06813083          	ld	ra,104(sp)
    80007030:	06013403          	ld	s0,96(sp)
    80007034:	05813483          	ld	s1,88(sp)
    80007038:	05013903          	ld	s2,80(sp)
    8000703c:	04813983          	ld	s3,72(sp)
    80007040:	04013a03          	ld	s4,64(sp)
    80007044:	03813a83          	ld	s5,56(sp)
    80007048:	02813b83          	ld	s7,40(sp)
    8000704c:	02013c03          	ld	s8,32(sp)
    80007050:	01813c83          	ld	s9,24(sp)
    80007054:	40ab053b          	subw	a0,s6,a0
    80007058:	03013b03          	ld	s6,48(sp)
    8000705c:	07010113          	addi	sp,sp,112
    80007060:	00008067          	ret
    80007064:	00001097          	auipc	ra,0x1
    80007068:	1d8080e7          	jalr	472(ra) # 8000823c <push_on>
    8000706c:	0984a703          	lw	a4,152(s1)
    80007070:	09c4a783          	lw	a5,156(s1)
    80007074:	0007879b          	sext.w	a5,a5
    80007078:	fef70ce3          	beq	a4,a5,80007070 <consoleread+0xfc>
    8000707c:	00001097          	auipc	ra,0x1
    80007080:	234080e7          	jalr	564(ra) # 800082b0 <pop_on>
    80007084:	0984a783          	lw	a5,152(s1)
    80007088:	07f7f713          	andi	a4,a5,127
    8000708c:	00e48733          	add	a4,s1,a4
    80007090:	01874703          	lbu	a4,24(a4)
    80007094:	0017869b          	addiw	a3,a5,1
    80007098:	08d4ac23          	sw	a3,152(s1)
    8000709c:	00070c9b          	sext.w	s9,a4
    800070a0:	f5371ee3          	bne	a4,s3,80006ffc <consoleread+0x88>
    800070a4:	000b851b          	sext.w	a0,s7
    800070a8:	f96bf2e3          	bgeu	s7,s6,8000702c <consoleread+0xb8>
    800070ac:	08f4ac23          	sw	a5,152(s1)
    800070b0:	f7dff06f          	j	8000702c <consoleread+0xb8>

00000000800070b4 <consputc>:
    800070b4:	10000793          	li	a5,256
    800070b8:	00f50663          	beq	a0,a5,800070c4 <consputc+0x10>
    800070bc:	00001317          	auipc	t1,0x1
    800070c0:	9f430067          	jr	-1548(t1) # 80007ab0 <uartputc_sync>
    800070c4:	ff010113          	addi	sp,sp,-16
    800070c8:	00113423          	sd	ra,8(sp)
    800070cc:	00813023          	sd	s0,0(sp)
    800070d0:	01010413          	addi	s0,sp,16
    800070d4:	00800513          	li	a0,8
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	9d8080e7          	jalr	-1576(ra) # 80007ab0 <uartputc_sync>
    800070e0:	02000513          	li	a0,32
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	9cc080e7          	jalr	-1588(ra) # 80007ab0 <uartputc_sync>
    800070ec:	00013403          	ld	s0,0(sp)
    800070f0:	00813083          	ld	ra,8(sp)
    800070f4:	00800513          	li	a0,8
    800070f8:	01010113          	addi	sp,sp,16
    800070fc:	00001317          	auipc	t1,0x1
    80007100:	9b430067          	jr	-1612(t1) # 80007ab0 <uartputc_sync>

0000000080007104 <consoleintr>:
    80007104:	fe010113          	addi	sp,sp,-32
    80007108:	00813823          	sd	s0,16(sp)
    8000710c:	00913423          	sd	s1,8(sp)
    80007110:	01213023          	sd	s2,0(sp)
    80007114:	00113c23          	sd	ra,24(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00005917          	auipc	s2,0x5
    80007120:	7ec90913          	addi	s2,s2,2028 # 8000c908 <cons>
    80007124:	00050493          	mv	s1,a0
    80007128:	00090513          	mv	a0,s2
    8000712c:	00001097          	auipc	ra,0x1
    80007130:	e40080e7          	jalr	-448(ra) # 80007f6c <acquire>
    80007134:	02048c63          	beqz	s1,8000716c <consoleintr+0x68>
    80007138:	0a092783          	lw	a5,160(s2)
    8000713c:	09892703          	lw	a4,152(s2)
    80007140:	07f00693          	li	a3,127
    80007144:	40e7873b          	subw	a4,a5,a4
    80007148:	02e6e263          	bltu	a3,a4,8000716c <consoleintr+0x68>
    8000714c:	00d00713          	li	a4,13
    80007150:	04e48063          	beq	s1,a4,80007190 <consoleintr+0x8c>
    80007154:	07f7f713          	andi	a4,a5,127
    80007158:	00e90733          	add	a4,s2,a4
    8000715c:	0017879b          	addiw	a5,a5,1
    80007160:	0af92023          	sw	a5,160(s2)
    80007164:	00970c23          	sb	s1,24(a4)
    80007168:	08f92e23          	sw	a5,156(s2)
    8000716c:	01013403          	ld	s0,16(sp)
    80007170:	01813083          	ld	ra,24(sp)
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	00013903          	ld	s2,0(sp)
    8000717c:	00005517          	auipc	a0,0x5
    80007180:	78c50513          	addi	a0,a0,1932 # 8000c908 <cons>
    80007184:	02010113          	addi	sp,sp,32
    80007188:	00001317          	auipc	t1,0x1
    8000718c:	eb030067          	jr	-336(t1) # 80008038 <release>
    80007190:	00a00493          	li	s1,10
    80007194:	fc1ff06f          	j	80007154 <consoleintr+0x50>

0000000080007198 <consoleinit>:
    80007198:	fe010113          	addi	sp,sp,-32
    8000719c:	00113c23          	sd	ra,24(sp)
    800071a0:	00813823          	sd	s0,16(sp)
    800071a4:	00913423          	sd	s1,8(sp)
    800071a8:	02010413          	addi	s0,sp,32
    800071ac:	00005497          	auipc	s1,0x5
    800071b0:	75c48493          	addi	s1,s1,1884 # 8000c908 <cons>
    800071b4:	00048513          	mv	a0,s1
    800071b8:	00002597          	auipc	a1,0x2
    800071bc:	68858593          	addi	a1,a1,1672 # 80009840 <_ZZ12printIntegermE6digits+0x590>
    800071c0:	00001097          	auipc	ra,0x1
    800071c4:	d88080e7          	jalr	-632(ra) # 80007f48 <initlock>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	7ac080e7          	jalr	1964(ra) # 80007974 <uartinit>
    800071d0:	01813083          	ld	ra,24(sp)
    800071d4:	01013403          	ld	s0,16(sp)
    800071d8:	00000797          	auipc	a5,0x0
    800071dc:	d9c78793          	addi	a5,a5,-612 # 80006f74 <consoleread>
    800071e0:	0af4bc23          	sd	a5,184(s1)
    800071e4:	00000797          	auipc	a5,0x0
    800071e8:	cec78793          	addi	a5,a5,-788 # 80006ed0 <consolewrite>
    800071ec:	0cf4b023          	sd	a5,192(s1)
    800071f0:	00813483          	ld	s1,8(sp)
    800071f4:	02010113          	addi	sp,sp,32
    800071f8:	00008067          	ret

00000000800071fc <console_read>:
    800071fc:	ff010113          	addi	sp,sp,-16
    80007200:	00813423          	sd	s0,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	00813403          	ld	s0,8(sp)
    8000720c:	00005317          	auipc	t1,0x5
    80007210:	7b433303          	ld	t1,1972(t1) # 8000c9c0 <devsw+0x10>
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00030067          	jr	t1

000000008000721c <console_write>:
    8000721c:	ff010113          	addi	sp,sp,-16
    80007220:	00813423          	sd	s0,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00813403          	ld	s0,8(sp)
    8000722c:	00005317          	auipc	t1,0x5
    80007230:	79c33303          	ld	t1,1948(t1) # 8000c9c8 <devsw+0x18>
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00030067          	jr	t1

000000008000723c <panic>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00113c23          	sd	ra,24(sp)
    80007244:	00813823          	sd	s0,16(sp)
    80007248:	00913423          	sd	s1,8(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	00050493          	mv	s1,a0
    80007254:	00002517          	auipc	a0,0x2
    80007258:	5f450513          	addi	a0,a0,1524 # 80009848 <_ZZ12printIntegermE6digits+0x598>
    8000725c:	00006797          	auipc	a5,0x6
    80007260:	8007a623          	sw	zero,-2036(a5) # 8000ca68 <pr+0x18>
    80007264:	00000097          	auipc	ra,0x0
    80007268:	034080e7          	jalr	52(ra) # 80007298 <__printf>
    8000726c:	00048513          	mv	a0,s1
    80007270:	00000097          	auipc	ra,0x0
    80007274:	028080e7          	jalr	40(ra) # 80007298 <__printf>
    80007278:	00002517          	auipc	a0,0x2
    8000727c:	35850513          	addi	a0,a0,856 # 800095d0 <_ZZ12printIntegermE6digits+0x320>
    80007280:	00000097          	auipc	ra,0x0
    80007284:	018080e7          	jalr	24(ra) # 80007298 <__printf>
    80007288:	00100793          	li	a5,1
    8000728c:	00004717          	auipc	a4,0x4
    80007290:	4cf72e23          	sw	a5,1244(a4) # 8000b768 <panicked>
    80007294:	0000006f          	j	80007294 <panic+0x58>

0000000080007298 <__printf>:
    80007298:	f3010113          	addi	sp,sp,-208
    8000729c:	08813023          	sd	s0,128(sp)
    800072a0:	07313423          	sd	s3,104(sp)
    800072a4:	09010413          	addi	s0,sp,144
    800072a8:	05813023          	sd	s8,64(sp)
    800072ac:	08113423          	sd	ra,136(sp)
    800072b0:	06913c23          	sd	s1,120(sp)
    800072b4:	07213823          	sd	s2,112(sp)
    800072b8:	07413023          	sd	s4,96(sp)
    800072bc:	05513c23          	sd	s5,88(sp)
    800072c0:	05613823          	sd	s6,80(sp)
    800072c4:	05713423          	sd	s7,72(sp)
    800072c8:	03913c23          	sd	s9,56(sp)
    800072cc:	03a13823          	sd	s10,48(sp)
    800072d0:	03b13423          	sd	s11,40(sp)
    800072d4:	00005317          	auipc	t1,0x5
    800072d8:	77c30313          	addi	t1,t1,1916 # 8000ca50 <pr>
    800072dc:	01832c03          	lw	s8,24(t1)
    800072e0:	00b43423          	sd	a1,8(s0)
    800072e4:	00c43823          	sd	a2,16(s0)
    800072e8:	00d43c23          	sd	a3,24(s0)
    800072ec:	02e43023          	sd	a4,32(s0)
    800072f0:	02f43423          	sd	a5,40(s0)
    800072f4:	03043823          	sd	a6,48(s0)
    800072f8:	03143c23          	sd	a7,56(s0)
    800072fc:	00050993          	mv	s3,a0
    80007300:	4a0c1663          	bnez	s8,800077ac <__printf+0x514>
    80007304:	60098c63          	beqz	s3,8000791c <__printf+0x684>
    80007308:	0009c503          	lbu	a0,0(s3)
    8000730c:	00840793          	addi	a5,s0,8
    80007310:	f6f43c23          	sd	a5,-136(s0)
    80007314:	00000493          	li	s1,0
    80007318:	22050063          	beqz	a0,80007538 <__printf+0x2a0>
    8000731c:	00002a37          	lui	s4,0x2
    80007320:	00018ab7          	lui	s5,0x18
    80007324:	000f4b37          	lui	s6,0xf4
    80007328:	00989bb7          	lui	s7,0x989
    8000732c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007330:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007334:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007338:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000733c:	00148c9b          	addiw	s9,s1,1
    80007340:	02500793          	li	a5,37
    80007344:	01998933          	add	s2,s3,s9
    80007348:	38f51263          	bne	a0,a5,800076cc <__printf+0x434>
    8000734c:	00094783          	lbu	a5,0(s2)
    80007350:	00078c9b          	sext.w	s9,a5
    80007354:	1e078263          	beqz	a5,80007538 <__printf+0x2a0>
    80007358:	0024849b          	addiw	s1,s1,2
    8000735c:	07000713          	li	a4,112
    80007360:	00998933          	add	s2,s3,s1
    80007364:	38e78a63          	beq	a5,a4,800076f8 <__printf+0x460>
    80007368:	20f76863          	bltu	a4,a5,80007578 <__printf+0x2e0>
    8000736c:	42a78863          	beq	a5,a0,8000779c <__printf+0x504>
    80007370:	06400713          	li	a4,100
    80007374:	40e79663          	bne	a5,a4,80007780 <__printf+0x4e8>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	0007a603          	lw	a2,0(a5)
    80007380:	00878793          	addi	a5,a5,8
    80007384:	f6f43c23          	sd	a5,-136(s0)
    80007388:	42064a63          	bltz	a2,800077bc <__printf+0x524>
    8000738c:	00a00713          	li	a4,10
    80007390:	02e677bb          	remuw	a5,a2,a4
    80007394:	00002d97          	auipc	s11,0x2
    80007398:	4dcd8d93          	addi	s11,s11,1244 # 80009870 <digits>
    8000739c:	00900593          	li	a1,9
    800073a0:	0006051b          	sext.w	a0,a2
    800073a4:	00000c93          	li	s9,0
    800073a8:	02079793          	slli	a5,a5,0x20
    800073ac:	0207d793          	srli	a5,a5,0x20
    800073b0:	00fd87b3          	add	a5,s11,a5
    800073b4:	0007c783          	lbu	a5,0(a5)
    800073b8:	02e656bb          	divuw	a3,a2,a4
    800073bc:	f8f40023          	sb	a5,-128(s0)
    800073c0:	14c5d863          	bge	a1,a2,80007510 <__printf+0x278>
    800073c4:	06300593          	li	a1,99
    800073c8:	00100c93          	li	s9,1
    800073cc:	02e6f7bb          	remuw	a5,a3,a4
    800073d0:	02079793          	slli	a5,a5,0x20
    800073d4:	0207d793          	srli	a5,a5,0x20
    800073d8:	00fd87b3          	add	a5,s11,a5
    800073dc:	0007c783          	lbu	a5,0(a5)
    800073e0:	02e6d73b          	divuw	a4,a3,a4
    800073e4:	f8f400a3          	sb	a5,-127(s0)
    800073e8:	12a5f463          	bgeu	a1,a0,80007510 <__printf+0x278>
    800073ec:	00a00693          	li	a3,10
    800073f0:	00900593          	li	a1,9
    800073f4:	02d777bb          	remuw	a5,a4,a3
    800073f8:	02079793          	slli	a5,a5,0x20
    800073fc:	0207d793          	srli	a5,a5,0x20
    80007400:	00fd87b3          	add	a5,s11,a5
    80007404:	0007c503          	lbu	a0,0(a5)
    80007408:	02d757bb          	divuw	a5,a4,a3
    8000740c:	f8a40123          	sb	a0,-126(s0)
    80007410:	48e5f263          	bgeu	a1,a4,80007894 <__printf+0x5fc>
    80007414:	06300513          	li	a0,99
    80007418:	02d7f5bb          	remuw	a1,a5,a3
    8000741c:	02059593          	slli	a1,a1,0x20
    80007420:	0205d593          	srli	a1,a1,0x20
    80007424:	00bd85b3          	add	a1,s11,a1
    80007428:	0005c583          	lbu	a1,0(a1)
    8000742c:	02d7d7bb          	divuw	a5,a5,a3
    80007430:	f8b401a3          	sb	a1,-125(s0)
    80007434:	48e57263          	bgeu	a0,a4,800078b8 <__printf+0x620>
    80007438:	3e700513          	li	a0,999
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b40223          	sb	a1,-124(s0)
    80007458:	46e57663          	bgeu	a0,a4,800078c4 <__printf+0x62c>
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b402a3          	sb	a1,-123(s0)
    80007478:	46ea7863          	bgeu	s4,a4,800078e8 <__printf+0x650>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b40323          	sb	a1,-122(s0)
    80007498:	3eeaf863          	bgeu	s5,a4,80007888 <__printf+0x5f0>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b403a3          	sb	a1,-121(s0)
    800074b8:	42eb7e63          	bgeu	s6,a4,800078f4 <__printf+0x65c>
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b40423          	sb	a1,-120(s0)
    800074d8:	42ebfc63          	bgeu	s7,a4,80007910 <__printf+0x678>
    800074dc:	02079793          	slli	a5,a5,0x20
    800074e0:	0207d793          	srli	a5,a5,0x20
    800074e4:	00fd8db3          	add	s11,s11,a5
    800074e8:	000dc703          	lbu	a4,0(s11)
    800074ec:	00a00793          	li	a5,10
    800074f0:	00900c93          	li	s9,9
    800074f4:	f8e404a3          	sb	a4,-119(s0)
    800074f8:	00065c63          	bgez	a2,80007510 <__printf+0x278>
    800074fc:	f9040713          	addi	a4,s0,-112
    80007500:	00f70733          	add	a4,a4,a5
    80007504:	02d00693          	li	a3,45
    80007508:	fed70823          	sb	a3,-16(a4)
    8000750c:	00078c93          	mv	s9,a5
    80007510:	f8040793          	addi	a5,s0,-128
    80007514:	01978cb3          	add	s9,a5,s9
    80007518:	f7f40d13          	addi	s10,s0,-129
    8000751c:	000cc503          	lbu	a0,0(s9)
    80007520:	fffc8c93          	addi	s9,s9,-1
    80007524:	00000097          	auipc	ra,0x0
    80007528:	b90080e7          	jalr	-1136(ra) # 800070b4 <consputc>
    8000752c:	ffac98e3          	bne	s9,s10,8000751c <__printf+0x284>
    80007530:	00094503          	lbu	a0,0(s2)
    80007534:	e00514e3          	bnez	a0,8000733c <__printf+0xa4>
    80007538:	1a0c1663          	bnez	s8,800076e4 <__printf+0x44c>
    8000753c:	08813083          	ld	ra,136(sp)
    80007540:	08013403          	ld	s0,128(sp)
    80007544:	07813483          	ld	s1,120(sp)
    80007548:	07013903          	ld	s2,112(sp)
    8000754c:	06813983          	ld	s3,104(sp)
    80007550:	06013a03          	ld	s4,96(sp)
    80007554:	05813a83          	ld	s5,88(sp)
    80007558:	05013b03          	ld	s6,80(sp)
    8000755c:	04813b83          	ld	s7,72(sp)
    80007560:	04013c03          	ld	s8,64(sp)
    80007564:	03813c83          	ld	s9,56(sp)
    80007568:	03013d03          	ld	s10,48(sp)
    8000756c:	02813d83          	ld	s11,40(sp)
    80007570:	0d010113          	addi	sp,sp,208
    80007574:	00008067          	ret
    80007578:	07300713          	li	a4,115
    8000757c:	1ce78a63          	beq	a5,a4,80007750 <__printf+0x4b8>
    80007580:	07800713          	li	a4,120
    80007584:	1ee79e63          	bne	a5,a4,80007780 <__printf+0x4e8>
    80007588:	f7843783          	ld	a5,-136(s0)
    8000758c:	0007a703          	lw	a4,0(a5)
    80007590:	00878793          	addi	a5,a5,8
    80007594:	f6f43c23          	sd	a5,-136(s0)
    80007598:	28074263          	bltz	a4,8000781c <__printf+0x584>
    8000759c:	00002d97          	auipc	s11,0x2
    800075a0:	2d4d8d93          	addi	s11,s11,724 # 80009870 <digits>
    800075a4:	00f77793          	andi	a5,a4,15
    800075a8:	00fd87b3          	add	a5,s11,a5
    800075ac:	0007c683          	lbu	a3,0(a5)
    800075b0:	00f00613          	li	a2,15
    800075b4:	0007079b          	sext.w	a5,a4
    800075b8:	f8d40023          	sb	a3,-128(s0)
    800075bc:	0047559b          	srliw	a1,a4,0x4
    800075c0:	0047569b          	srliw	a3,a4,0x4
    800075c4:	00000c93          	li	s9,0
    800075c8:	0ee65063          	bge	a2,a4,800076a8 <__printf+0x410>
    800075cc:	00f6f693          	andi	a3,a3,15
    800075d0:	00dd86b3          	add	a3,s11,a3
    800075d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075d8:	0087d79b          	srliw	a5,a5,0x8
    800075dc:	00100c93          	li	s9,1
    800075e0:	f8d400a3          	sb	a3,-127(s0)
    800075e4:	0cb67263          	bgeu	a2,a1,800076a8 <__printf+0x410>
    800075e8:	00f7f693          	andi	a3,a5,15
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c583          	lbu	a1,0(a3)
    800075f4:	00f00613          	li	a2,15
    800075f8:	0047d69b          	srliw	a3,a5,0x4
    800075fc:	f8b40123          	sb	a1,-126(s0)
    80007600:	0047d593          	srli	a1,a5,0x4
    80007604:	28f67e63          	bgeu	a2,a5,800078a0 <__printf+0x608>
    80007608:	00f6f693          	andi	a3,a3,15
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c503          	lbu	a0,0(a3)
    80007614:	0087d813          	srli	a6,a5,0x8
    80007618:	0087d69b          	srliw	a3,a5,0x8
    8000761c:	f8a401a3          	sb	a0,-125(s0)
    80007620:	28b67663          	bgeu	a2,a1,800078ac <__printf+0x614>
    80007624:	00f6f693          	andi	a3,a3,15
    80007628:	00dd86b3          	add	a3,s11,a3
    8000762c:	0006c583          	lbu	a1,0(a3)
    80007630:	00c7d513          	srli	a0,a5,0xc
    80007634:	00c7d69b          	srliw	a3,a5,0xc
    80007638:	f8b40223          	sb	a1,-124(s0)
    8000763c:	29067a63          	bgeu	a2,a6,800078d0 <__printf+0x638>
    80007640:	00f6f693          	andi	a3,a3,15
    80007644:	00dd86b3          	add	a3,s11,a3
    80007648:	0006c583          	lbu	a1,0(a3)
    8000764c:	0107d813          	srli	a6,a5,0x10
    80007650:	0107d69b          	srliw	a3,a5,0x10
    80007654:	f8b402a3          	sb	a1,-123(s0)
    80007658:	28a67263          	bgeu	a2,a0,800078dc <__printf+0x644>
    8000765c:	00f6f693          	andi	a3,a3,15
    80007660:	00dd86b3          	add	a3,s11,a3
    80007664:	0006c683          	lbu	a3,0(a3)
    80007668:	0147d79b          	srliw	a5,a5,0x14
    8000766c:	f8d40323          	sb	a3,-122(s0)
    80007670:	21067663          	bgeu	a2,a6,8000787c <__printf+0x5e4>
    80007674:	02079793          	slli	a5,a5,0x20
    80007678:	0207d793          	srli	a5,a5,0x20
    8000767c:	00fd8db3          	add	s11,s11,a5
    80007680:	000dc683          	lbu	a3,0(s11)
    80007684:	00800793          	li	a5,8
    80007688:	00700c93          	li	s9,7
    8000768c:	f8d403a3          	sb	a3,-121(s0)
    80007690:	00075c63          	bgez	a4,800076a8 <__printf+0x410>
    80007694:	f9040713          	addi	a4,s0,-112
    80007698:	00f70733          	add	a4,a4,a5
    8000769c:	02d00693          	li	a3,45
    800076a0:	fed70823          	sb	a3,-16(a4)
    800076a4:	00078c93          	mv	s9,a5
    800076a8:	f8040793          	addi	a5,s0,-128
    800076ac:	01978cb3          	add	s9,a5,s9
    800076b0:	f7f40d13          	addi	s10,s0,-129
    800076b4:	000cc503          	lbu	a0,0(s9)
    800076b8:	fffc8c93          	addi	s9,s9,-1
    800076bc:	00000097          	auipc	ra,0x0
    800076c0:	9f8080e7          	jalr	-1544(ra) # 800070b4 <consputc>
    800076c4:	ff9d18e3          	bne	s10,s9,800076b4 <__printf+0x41c>
    800076c8:	0100006f          	j	800076d8 <__printf+0x440>
    800076cc:	00000097          	auipc	ra,0x0
    800076d0:	9e8080e7          	jalr	-1560(ra) # 800070b4 <consputc>
    800076d4:	000c8493          	mv	s1,s9
    800076d8:	00094503          	lbu	a0,0(s2)
    800076dc:	c60510e3          	bnez	a0,8000733c <__printf+0xa4>
    800076e0:	e40c0ee3          	beqz	s8,8000753c <__printf+0x2a4>
    800076e4:	00005517          	auipc	a0,0x5
    800076e8:	36c50513          	addi	a0,a0,876 # 8000ca50 <pr>
    800076ec:	00001097          	auipc	ra,0x1
    800076f0:	94c080e7          	jalr	-1716(ra) # 80008038 <release>
    800076f4:	e49ff06f          	j	8000753c <__printf+0x2a4>
    800076f8:	f7843783          	ld	a5,-136(s0)
    800076fc:	03000513          	li	a0,48
    80007700:	01000d13          	li	s10,16
    80007704:	00878713          	addi	a4,a5,8
    80007708:	0007bc83          	ld	s9,0(a5)
    8000770c:	f6e43c23          	sd	a4,-136(s0)
    80007710:	00000097          	auipc	ra,0x0
    80007714:	9a4080e7          	jalr	-1628(ra) # 800070b4 <consputc>
    80007718:	07800513          	li	a0,120
    8000771c:	00000097          	auipc	ra,0x0
    80007720:	998080e7          	jalr	-1640(ra) # 800070b4 <consputc>
    80007724:	00002d97          	auipc	s11,0x2
    80007728:	14cd8d93          	addi	s11,s11,332 # 80009870 <digits>
    8000772c:	03ccd793          	srli	a5,s9,0x3c
    80007730:	00fd87b3          	add	a5,s11,a5
    80007734:	0007c503          	lbu	a0,0(a5)
    80007738:	fffd0d1b          	addiw	s10,s10,-1
    8000773c:	004c9c93          	slli	s9,s9,0x4
    80007740:	00000097          	auipc	ra,0x0
    80007744:	974080e7          	jalr	-1676(ra) # 800070b4 <consputc>
    80007748:	fe0d12e3          	bnez	s10,8000772c <__printf+0x494>
    8000774c:	f8dff06f          	j	800076d8 <__printf+0x440>
    80007750:	f7843783          	ld	a5,-136(s0)
    80007754:	0007bc83          	ld	s9,0(a5)
    80007758:	00878793          	addi	a5,a5,8
    8000775c:	f6f43c23          	sd	a5,-136(s0)
    80007760:	000c9a63          	bnez	s9,80007774 <__printf+0x4dc>
    80007764:	1080006f          	j	8000786c <__printf+0x5d4>
    80007768:	001c8c93          	addi	s9,s9,1
    8000776c:	00000097          	auipc	ra,0x0
    80007770:	948080e7          	jalr	-1720(ra) # 800070b4 <consputc>
    80007774:	000cc503          	lbu	a0,0(s9)
    80007778:	fe0518e3          	bnez	a0,80007768 <__printf+0x4d0>
    8000777c:	f5dff06f          	j	800076d8 <__printf+0x440>
    80007780:	02500513          	li	a0,37
    80007784:	00000097          	auipc	ra,0x0
    80007788:	930080e7          	jalr	-1744(ra) # 800070b4 <consputc>
    8000778c:	000c8513          	mv	a0,s9
    80007790:	00000097          	auipc	ra,0x0
    80007794:	924080e7          	jalr	-1756(ra) # 800070b4 <consputc>
    80007798:	f41ff06f          	j	800076d8 <__printf+0x440>
    8000779c:	02500513          	li	a0,37
    800077a0:	00000097          	auipc	ra,0x0
    800077a4:	914080e7          	jalr	-1772(ra) # 800070b4 <consputc>
    800077a8:	f31ff06f          	j	800076d8 <__printf+0x440>
    800077ac:	00030513          	mv	a0,t1
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	7bc080e7          	jalr	1980(ra) # 80007f6c <acquire>
    800077b8:	b4dff06f          	j	80007304 <__printf+0x6c>
    800077bc:	40c0053b          	negw	a0,a2
    800077c0:	00a00713          	li	a4,10
    800077c4:	02e576bb          	remuw	a3,a0,a4
    800077c8:	00002d97          	auipc	s11,0x2
    800077cc:	0a8d8d93          	addi	s11,s11,168 # 80009870 <digits>
    800077d0:	ff700593          	li	a1,-9
    800077d4:	02069693          	slli	a3,a3,0x20
    800077d8:	0206d693          	srli	a3,a3,0x20
    800077dc:	00dd86b3          	add	a3,s11,a3
    800077e0:	0006c683          	lbu	a3,0(a3)
    800077e4:	02e557bb          	divuw	a5,a0,a4
    800077e8:	f8d40023          	sb	a3,-128(s0)
    800077ec:	10b65e63          	bge	a2,a1,80007908 <__printf+0x670>
    800077f0:	06300593          	li	a1,99
    800077f4:	02e7f6bb          	remuw	a3,a5,a4
    800077f8:	02069693          	slli	a3,a3,0x20
    800077fc:	0206d693          	srli	a3,a3,0x20
    80007800:	00dd86b3          	add	a3,s11,a3
    80007804:	0006c683          	lbu	a3,0(a3)
    80007808:	02e7d73b          	divuw	a4,a5,a4
    8000780c:	00200793          	li	a5,2
    80007810:	f8d400a3          	sb	a3,-127(s0)
    80007814:	bca5ece3          	bltu	a1,a0,800073ec <__printf+0x154>
    80007818:	ce5ff06f          	j	800074fc <__printf+0x264>
    8000781c:	40e007bb          	negw	a5,a4
    80007820:	00002d97          	auipc	s11,0x2
    80007824:	050d8d93          	addi	s11,s11,80 # 80009870 <digits>
    80007828:	00f7f693          	andi	a3,a5,15
    8000782c:	00dd86b3          	add	a3,s11,a3
    80007830:	0006c583          	lbu	a1,0(a3)
    80007834:	ff100613          	li	a2,-15
    80007838:	0047d69b          	srliw	a3,a5,0x4
    8000783c:	f8b40023          	sb	a1,-128(s0)
    80007840:	0047d59b          	srliw	a1,a5,0x4
    80007844:	0ac75e63          	bge	a4,a2,80007900 <__printf+0x668>
    80007848:	00f6f693          	andi	a3,a3,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c603          	lbu	a2,0(a3)
    80007854:	00f00693          	li	a3,15
    80007858:	0087d79b          	srliw	a5,a5,0x8
    8000785c:	f8c400a3          	sb	a2,-127(s0)
    80007860:	d8b6e4e3          	bltu	a3,a1,800075e8 <__printf+0x350>
    80007864:	00200793          	li	a5,2
    80007868:	e2dff06f          	j	80007694 <__printf+0x3fc>
    8000786c:	00002c97          	auipc	s9,0x2
    80007870:	fe4c8c93          	addi	s9,s9,-28 # 80009850 <_ZZ12printIntegermE6digits+0x5a0>
    80007874:	02800513          	li	a0,40
    80007878:	ef1ff06f          	j	80007768 <__printf+0x4d0>
    8000787c:	00700793          	li	a5,7
    80007880:	00600c93          	li	s9,6
    80007884:	e0dff06f          	j	80007690 <__printf+0x3f8>
    80007888:	00700793          	li	a5,7
    8000788c:	00600c93          	li	s9,6
    80007890:	c69ff06f          	j	800074f8 <__printf+0x260>
    80007894:	00300793          	li	a5,3
    80007898:	00200c93          	li	s9,2
    8000789c:	c5dff06f          	j	800074f8 <__printf+0x260>
    800078a0:	00300793          	li	a5,3
    800078a4:	00200c93          	li	s9,2
    800078a8:	de9ff06f          	j	80007690 <__printf+0x3f8>
    800078ac:	00400793          	li	a5,4
    800078b0:	00300c93          	li	s9,3
    800078b4:	dddff06f          	j	80007690 <__printf+0x3f8>
    800078b8:	00400793          	li	a5,4
    800078bc:	00300c93          	li	s9,3
    800078c0:	c39ff06f          	j	800074f8 <__printf+0x260>
    800078c4:	00500793          	li	a5,5
    800078c8:	00400c93          	li	s9,4
    800078cc:	c2dff06f          	j	800074f8 <__printf+0x260>
    800078d0:	00500793          	li	a5,5
    800078d4:	00400c93          	li	s9,4
    800078d8:	db9ff06f          	j	80007690 <__printf+0x3f8>
    800078dc:	00600793          	li	a5,6
    800078e0:	00500c93          	li	s9,5
    800078e4:	dadff06f          	j	80007690 <__printf+0x3f8>
    800078e8:	00600793          	li	a5,6
    800078ec:	00500c93          	li	s9,5
    800078f0:	c09ff06f          	j	800074f8 <__printf+0x260>
    800078f4:	00800793          	li	a5,8
    800078f8:	00700c93          	li	s9,7
    800078fc:	bfdff06f          	j	800074f8 <__printf+0x260>
    80007900:	00100793          	li	a5,1
    80007904:	d91ff06f          	j	80007694 <__printf+0x3fc>
    80007908:	00100793          	li	a5,1
    8000790c:	bf1ff06f          	j	800074fc <__printf+0x264>
    80007910:	00900793          	li	a5,9
    80007914:	00800c93          	li	s9,8
    80007918:	be1ff06f          	j	800074f8 <__printf+0x260>
    8000791c:	00002517          	auipc	a0,0x2
    80007920:	f3c50513          	addi	a0,a0,-196 # 80009858 <_ZZ12printIntegermE6digits+0x5a8>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	918080e7          	jalr	-1768(ra) # 8000723c <panic>

000000008000792c <printfinit>:
    8000792c:	fe010113          	addi	sp,sp,-32
    80007930:	00813823          	sd	s0,16(sp)
    80007934:	00913423          	sd	s1,8(sp)
    80007938:	00113c23          	sd	ra,24(sp)
    8000793c:	02010413          	addi	s0,sp,32
    80007940:	00005497          	auipc	s1,0x5
    80007944:	11048493          	addi	s1,s1,272 # 8000ca50 <pr>
    80007948:	00048513          	mv	a0,s1
    8000794c:	00002597          	auipc	a1,0x2
    80007950:	f1c58593          	addi	a1,a1,-228 # 80009868 <_ZZ12printIntegermE6digits+0x5b8>
    80007954:	00000097          	auipc	ra,0x0
    80007958:	5f4080e7          	jalr	1524(ra) # 80007f48 <initlock>
    8000795c:	01813083          	ld	ra,24(sp)
    80007960:	01013403          	ld	s0,16(sp)
    80007964:	0004ac23          	sw	zero,24(s1)
    80007968:	00813483          	ld	s1,8(sp)
    8000796c:	02010113          	addi	sp,sp,32
    80007970:	00008067          	ret

0000000080007974 <uartinit>:
    80007974:	ff010113          	addi	sp,sp,-16
    80007978:	00813423          	sd	s0,8(sp)
    8000797c:	01010413          	addi	s0,sp,16
    80007980:	100007b7          	lui	a5,0x10000
    80007984:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007988:	f8000713          	li	a4,-128
    8000798c:	00e781a3          	sb	a4,3(a5)
    80007990:	00300713          	li	a4,3
    80007994:	00e78023          	sb	a4,0(a5)
    80007998:	000780a3          	sb	zero,1(a5)
    8000799c:	00e781a3          	sb	a4,3(a5)
    800079a0:	00700693          	li	a3,7
    800079a4:	00d78123          	sb	a3,2(a5)
    800079a8:	00e780a3          	sb	a4,1(a5)
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartputc>:
    800079b8:	00004797          	auipc	a5,0x4
    800079bc:	db07a783          	lw	a5,-592(a5) # 8000b768 <panicked>
    800079c0:	00078463          	beqz	a5,800079c8 <uartputc+0x10>
    800079c4:	0000006f          	j	800079c4 <uartputc+0xc>
    800079c8:	fd010113          	addi	sp,sp,-48
    800079cc:	02813023          	sd	s0,32(sp)
    800079d0:	00913c23          	sd	s1,24(sp)
    800079d4:	01213823          	sd	s2,16(sp)
    800079d8:	01313423          	sd	s3,8(sp)
    800079dc:	02113423          	sd	ra,40(sp)
    800079e0:	03010413          	addi	s0,sp,48
    800079e4:	00004917          	auipc	s2,0x4
    800079e8:	d8c90913          	addi	s2,s2,-628 # 8000b770 <uart_tx_r>
    800079ec:	00093783          	ld	a5,0(s2)
    800079f0:	00004497          	auipc	s1,0x4
    800079f4:	d8848493          	addi	s1,s1,-632 # 8000b778 <uart_tx_w>
    800079f8:	0004b703          	ld	a4,0(s1)
    800079fc:	02078693          	addi	a3,a5,32
    80007a00:	00050993          	mv	s3,a0
    80007a04:	02e69c63          	bne	a3,a4,80007a3c <uartputc+0x84>
    80007a08:	00001097          	auipc	ra,0x1
    80007a0c:	834080e7          	jalr	-1996(ra) # 8000823c <push_on>
    80007a10:	00093783          	ld	a5,0(s2)
    80007a14:	0004b703          	ld	a4,0(s1)
    80007a18:	02078793          	addi	a5,a5,32
    80007a1c:	00e79463          	bne	a5,a4,80007a24 <uartputc+0x6c>
    80007a20:	0000006f          	j	80007a20 <uartputc+0x68>
    80007a24:	00001097          	auipc	ra,0x1
    80007a28:	88c080e7          	jalr	-1908(ra) # 800082b0 <pop_on>
    80007a2c:	00093783          	ld	a5,0(s2)
    80007a30:	0004b703          	ld	a4,0(s1)
    80007a34:	02078693          	addi	a3,a5,32
    80007a38:	fce688e3          	beq	a3,a4,80007a08 <uartputc+0x50>
    80007a3c:	01f77693          	andi	a3,a4,31
    80007a40:	00005597          	auipc	a1,0x5
    80007a44:	03058593          	addi	a1,a1,48 # 8000ca70 <uart_tx_buf>
    80007a48:	00d586b3          	add	a3,a1,a3
    80007a4c:	00170713          	addi	a4,a4,1
    80007a50:	01368023          	sb	s3,0(a3)
    80007a54:	00e4b023          	sd	a4,0(s1)
    80007a58:	10000637          	lui	a2,0x10000
    80007a5c:	02f71063          	bne	a4,a5,80007a7c <uartputc+0xc4>
    80007a60:	0340006f          	j	80007a94 <uartputc+0xdc>
    80007a64:	00074703          	lbu	a4,0(a4)
    80007a68:	00f93023          	sd	a5,0(s2)
    80007a6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a70:	00093783          	ld	a5,0(s2)
    80007a74:	0004b703          	ld	a4,0(s1)
    80007a78:	00f70e63          	beq	a4,a5,80007a94 <uartputc+0xdc>
    80007a7c:	00564683          	lbu	a3,5(a2)
    80007a80:	01f7f713          	andi	a4,a5,31
    80007a84:	00e58733          	add	a4,a1,a4
    80007a88:	0206f693          	andi	a3,a3,32
    80007a8c:	00178793          	addi	a5,a5,1
    80007a90:	fc069ae3          	bnez	a3,80007a64 <uartputc+0xac>
    80007a94:	02813083          	ld	ra,40(sp)
    80007a98:	02013403          	ld	s0,32(sp)
    80007a9c:	01813483          	ld	s1,24(sp)
    80007aa0:	01013903          	ld	s2,16(sp)
    80007aa4:	00813983          	ld	s3,8(sp)
    80007aa8:	03010113          	addi	sp,sp,48
    80007aac:	00008067          	ret

0000000080007ab0 <uartputc_sync>:
    80007ab0:	ff010113          	addi	sp,sp,-16
    80007ab4:	00813423          	sd	s0,8(sp)
    80007ab8:	01010413          	addi	s0,sp,16
    80007abc:	00004717          	auipc	a4,0x4
    80007ac0:	cac72703          	lw	a4,-852(a4) # 8000b768 <panicked>
    80007ac4:	02071663          	bnez	a4,80007af0 <uartputc_sync+0x40>
    80007ac8:	00050793          	mv	a5,a0
    80007acc:	100006b7          	lui	a3,0x10000
    80007ad0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ad4:	02077713          	andi	a4,a4,32
    80007ad8:	fe070ce3          	beqz	a4,80007ad0 <uartputc_sync+0x20>
    80007adc:	0ff7f793          	andi	a5,a5,255
    80007ae0:	00f68023          	sb	a5,0(a3)
    80007ae4:	00813403          	ld	s0,8(sp)
    80007ae8:	01010113          	addi	sp,sp,16
    80007aec:	00008067          	ret
    80007af0:	0000006f          	j	80007af0 <uartputc_sync+0x40>

0000000080007af4 <uartstart>:
    80007af4:	ff010113          	addi	sp,sp,-16
    80007af8:	00813423          	sd	s0,8(sp)
    80007afc:	01010413          	addi	s0,sp,16
    80007b00:	00004617          	auipc	a2,0x4
    80007b04:	c7060613          	addi	a2,a2,-912 # 8000b770 <uart_tx_r>
    80007b08:	00004517          	auipc	a0,0x4
    80007b0c:	c7050513          	addi	a0,a0,-912 # 8000b778 <uart_tx_w>
    80007b10:	00063783          	ld	a5,0(a2)
    80007b14:	00053703          	ld	a4,0(a0)
    80007b18:	04f70263          	beq	a4,a5,80007b5c <uartstart+0x68>
    80007b1c:	100005b7          	lui	a1,0x10000
    80007b20:	00005817          	auipc	a6,0x5
    80007b24:	f5080813          	addi	a6,a6,-176 # 8000ca70 <uart_tx_buf>
    80007b28:	01c0006f          	j	80007b44 <uartstart+0x50>
    80007b2c:	0006c703          	lbu	a4,0(a3)
    80007b30:	00f63023          	sd	a5,0(a2)
    80007b34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b38:	00063783          	ld	a5,0(a2)
    80007b3c:	00053703          	ld	a4,0(a0)
    80007b40:	00f70e63          	beq	a4,a5,80007b5c <uartstart+0x68>
    80007b44:	01f7f713          	andi	a4,a5,31
    80007b48:	00e806b3          	add	a3,a6,a4
    80007b4c:	0055c703          	lbu	a4,5(a1)
    80007b50:	00178793          	addi	a5,a5,1
    80007b54:	02077713          	andi	a4,a4,32
    80007b58:	fc071ae3          	bnez	a4,80007b2c <uartstart+0x38>
    80007b5c:	00813403          	ld	s0,8(sp)
    80007b60:	01010113          	addi	sp,sp,16
    80007b64:	00008067          	ret

0000000080007b68 <uartgetc>:
    80007b68:	ff010113          	addi	sp,sp,-16
    80007b6c:	00813423          	sd	s0,8(sp)
    80007b70:	01010413          	addi	s0,sp,16
    80007b74:	10000737          	lui	a4,0x10000
    80007b78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b7c:	0017f793          	andi	a5,a5,1
    80007b80:	00078c63          	beqz	a5,80007b98 <uartgetc+0x30>
    80007b84:	00074503          	lbu	a0,0(a4)
    80007b88:	0ff57513          	andi	a0,a0,255
    80007b8c:	00813403          	ld	s0,8(sp)
    80007b90:	01010113          	addi	sp,sp,16
    80007b94:	00008067          	ret
    80007b98:	fff00513          	li	a0,-1
    80007b9c:	ff1ff06f          	j	80007b8c <uartgetc+0x24>

0000000080007ba0 <uartintr>:
    80007ba0:	100007b7          	lui	a5,0x10000
    80007ba4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ba8:	0017f793          	andi	a5,a5,1
    80007bac:	0a078463          	beqz	a5,80007c54 <uartintr+0xb4>
    80007bb0:	fe010113          	addi	sp,sp,-32
    80007bb4:	00813823          	sd	s0,16(sp)
    80007bb8:	00913423          	sd	s1,8(sp)
    80007bbc:	00113c23          	sd	ra,24(sp)
    80007bc0:	02010413          	addi	s0,sp,32
    80007bc4:	100004b7          	lui	s1,0x10000
    80007bc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bcc:	0ff57513          	andi	a0,a0,255
    80007bd0:	fffff097          	auipc	ra,0xfffff
    80007bd4:	534080e7          	jalr	1332(ra) # 80007104 <consoleintr>
    80007bd8:	0054c783          	lbu	a5,5(s1)
    80007bdc:	0017f793          	andi	a5,a5,1
    80007be0:	fe0794e3          	bnez	a5,80007bc8 <uartintr+0x28>
    80007be4:	00004617          	auipc	a2,0x4
    80007be8:	b8c60613          	addi	a2,a2,-1140 # 8000b770 <uart_tx_r>
    80007bec:	00004517          	auipc	a0,0x4
    80007bf0:	b8c50513          	addi	a0,a0,-1140 # 8000b778 <uart_tx_w>
    80007bf4:	00063783          	ld	a5,0(a2)
    80007bf8:	00053703          	ld	a4,0(a0)
    80007bfc:	04f70263          	beq	a4,a5,80007c40 <uartintr+0xa0>
    80007c00:	100005b7          	lui	a1,0x10000
    80007c04:	00005817          	auipc	a6,0x5
    80007c08:	e6c80813          	addi	a6,a6,-404 # 8000ca70 <uart_tx_buf>
    80007c0c:	01c0006f          	j	80007c28 <uartintr+0x88>
    80007c10:	0006c703          	lbu	a4,0(a3)
    80007c14:	00f63023          	sd	a5,0(a2)
    80007c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c1c:	00063783          	ld	a5,0(a2)
    80007c20:	00053703          	ld	a4,0(a0)
    80007c24:	00f70e63          	beq	a4,a5,80007c40 <uartintr+0xa0>
    80007c28:	01f7f713          	andi	a4,a5,31
    80007c2c:	00e806b3          	add	a3,a6,a4
    80007c30:	0055c703          	lbu	a4,5(a1)
    80007c34:	00178793          	addi	a5,a5,1
    80007c38:	02077713          	andi	a4,a4,32
    80007c3c:	fc071ae3          	bnez	a4,80007c10 <uartintr+0x70>
    80007c40:	01813083          	ld	ra,24(sp)
    80007c44:	01013403          	ld	s0,16(sp)
    80007c48:	00813483          	ld	s1,8(sp)
    80007c4c:	02010113          	addi	sp,sp,32
    80007c50:	00008067          	ret
    80007c54:	00004617          	auipc	a2,0x4
    80007c58:	b1c60613          	addi	a2,a2,-1252 # 8000b770 <uart_tx_r>
    80007c5c:	00004517          	auipc	a0,0x4
    80007c60:	b1c50513          	addi	a0,a0,-1252 # 8000b778 <uart_tx_w>
    80007c64:	00063783          	ld	a5,0(a2)
    80007c68:	00053703          	ld	a4,0(a0)
    80007c6c:	04f70263          	beq	a4,a5,80007cb0 <uartintr+0x110>
    80007c70:	100005b7          	lui	a1,0x10000
    80007c74:	00005817          	auipc	a6,0x5
    80007c78:	dfc80813          	addi	a6,a6,-516 # 8000ca70 <uart_tx_buf>
    80007c7c:	01c0006f          	j	80007c98 <uartintr+0xf8>
    80007c80:	0006c703          	lbu	a4,0(a3)
    80007c84:	00f63023          	sd	a5,0(a2)
    80007c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c8c:	00063783          	ld	a5,0(a2)
    80007c90:	00053703          	ld	a4,0(a0)
    80007c94:	02f70063          	beq	a4,a5,80007cb4 <uartintr+0x114>
    80007c98:	01f7f713          	andi	a4,a5,31
    80007c9c:	00e806b3          	add	a3,a6,a4
    80007ca0:	0055c703          	lbu	a4,5(a1)
    80007ca4:	00178793          	addi	a5,a5,1
    80007ca8:	02077713          	andi	a4,a4,32
    80007cac:	fc071ae3          	bnez	a4,80007c80 <uartintr+0xe0>
    80007cb0:	00008067          	ret
    80007cb4:	00008067          	ret

0000000080007cb8 <kinit>:
    80007cb8:	fc010113          	addi	sp,sp,-64
    80007cbc:	02913423          	sd	s1,40(sp)
    80007cc0:	fffff7b7          	lui	a5,0xfffff
    80007cc4:	00006497          	auipc	s1,0x6
    80007cc8:	dcb48493          	addi	s1,s1,-565 # 8000da8f <end+0xfff>
    80007ccc:	02813823          	sd	s0,48(sp)
    80007cd0:	01313c23          	sd	s3,24(sp)
    80007cd4:	00f4f4b3          	and	s1,s1,a5
    80007cd8:	02113c23          	sd	ra,56(sp)
    80007cdc:	03213023          	sd	s2,32(sp)
    80007ce0:	01413823          	sd	s4,16(sp)
    80007ce4:	01513423          	sd	s5,8(sp)
    80007ce8:	04010413          	addi	s0,sp,64
    80007cec:	000017b7          	lui	a5,0x1
    80007cf0:	01100993          	li	s3,17
    80007cf4:	00f487b3          	add	a5,s1,a5
    80007cf8:	01b99993          	slli	s3,s3,0x1b
    80007cfc:	06f9e063          	bltu	s3,a5,80007d5c <kinit+0xa4>
    80007d00:	00005a97          	auipc	s5,0x5
    80007d04:	d90a8a93          	addi	s5,s5,-624 # 8000ca90 <end>
    80007d08:	0754ec63          	bltu	s1,s5,80007d80 <kinit+0xc8>
    80007d0c:	0734fa63          	bgeu	s1,s3,80007d80 <kinit+0xc8>
    80007d10:	00088a37          	lui	s4,0x88
    80007d14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d18:	00004917          	auipc	s2,0x4
    80007d1c:	a6890913          	addi	s2,s2,-1432 # 8000b780 <kmem>
    80007d20:	00ca1a13          	slli	s4,s4,0xc
    80007d24:	0140006f          	j	80007d38 <kinit+0x80>
    80007d28:	000017b7          	lui	a5,0x1
    80007d2c:	00f484b3          	add	s1,s1,a5
    80007d30:	0554e863          	bltu	s1,s5,80007d80 <kinit+0xc8>
    80007d34:	0534f663          	bgeu	s1,s3,80007d80 <kinit+0xc8>
    80007d38:	00001637          	lui	a2,0x1
    80007d3c:	00100593          	li	a1,1
    80007d40:	00048513          	mv	a0,s1
    80007d44:	00000097          	auipc	ra,0x0
    80007d48:	5e4080e7          	jalr	1508(ra) # 80008328 <__memset>
    80007d4c:	00093783          	ld	a5,0(s2)
    80007d50:	00f4b023          	sd	a5,0(s1)
    80007d54:	00993023          	sd	s1,0(s2)
    80007d58:	fd4498e3          	bne	s1,s4,80007d28 <kinit+0x70>
    80007d5c:	03813083          	ld	ra,56(sp)
    80007d60:	03013403          	ld	s0,48(sp)
    80007d64:	02813483          	ld	s1,40(sp)
    80007d68:	02013903          	ld	s2,32(sp)
    80007d6c:	01813983          	ld	s3,24(sp)
    80007d70:	01013a03          	ld	s4,16(sp)
    80007d74:	00813a83          	ld	s5,8(sp)
    80007d78:	04010113          	addi	sp,sp,64
    80007d7c:	00008067          	ret
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	b0850513          	addi	a0,a0,-1272 # 80009888 <digits+0x18>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	4b4080e7          	jalr	1204(ra) # 8000723c <panic>

0000000080007d90 <freerange>:
    80007d90:	fc010113          	addi	sp,sp,-64
    80007d94:	000017b7          	lui	a5,0x1
    80007d98:	02913423          	sd	s1,40(sp)
    80007d9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007da0:	009504b3          	add	s1,a0,s1
    80007da4:	fffff537          	lui	a0,0xfffff
    80007da8:	02813823          	sd	s0,48(sp)
    80007dac:	02113c23          	sd	ra,56(sp)
    80007db0:	03213023          	sd	s2,32(sp)
    80007db4:	01313c23          	sd	s3,24(sp)
    80007db8:	01413823          	sd	s4,16(sp)
    80007dbc:	01513423          	sd	s5,8(sp)
    80007dc0:	01613023          	sd	s6,0(sp)
    80007dc4:	04010413          	addi	s0,sp,64
    80007dc8:	00a4f4b3          	and	s1,s1,a0
    80007dcc:	00f487b3          	add	a5,s1,a5
    80007dd0:	06f5e463          	bltu	a1,a5,80007e38 <freerange+0xa8>
    80007dd4:	00005a97          	auipc	s5,0x5
    80007dd8:	cbca8a93          	addi	s5,s5,-836 # 8000ca90 <end>
    80007ddc:	0954e263          	bltu	s1,s5,80007e60 <freerange+0xd0>
    80007de0:	01100993          	li	s3,17
    80007de4:	01b99993          	slli	s3,s3,0x1b
    80007de8:	0734fc63          	bgeu	s1,s3,80007e60 <freerange+0xd0>
    80007dec:	00058a13          	mv	s4,a1
    80007df0:	00004917          	auipc	s2,0x4
    80007df4:	99090913          	addi	s2,s2,-1648 # 8000b780 <kmem>
    80007df8:	00002b37          	lui	s6,0x2
    80007dfc:	0140006f          	j	80007e10 <freerange+0x80>
    80007e00:	000017b7          	lui	a5,0x1
    80007e04:	00f484b3          	add	s1,s1,a5
    80007e08:	0554ec63          	bltu	s1,s5,80007e60 <freerange+0xd0>
    80007e0c:	0534fa63          	bgeu	s1,s3,80007e60 <freerange+0xd0>
    80007e10:	00001637          	lui	a2,0x1
    80007e14:	00100593          	li	a1,1
    80007e18:	00048513          	mv	a0,s1
    80007e1c:	00000097          	auipc	ra,0x0
    80007e20:	50c080e7          	jalr	1292(ra) # 80008328 <__memset>
    80007e24:	00093703          	ld	a4,0(s2)
    80007e28:	016487b3          	add	a5,s1,s6
    80007e2c:	00e4b023          	sd	a4,0(s1)
    80007e30:	00993023          	sd	s1,0(s2)
    80007e34:	fcfa76e3          	bgeu	s4,a5,80007e00 <freerange+0x70>
    80007e38:	03813083          	ld	ra,56(sp)
    80007e3c:	03013403          	ld	s0,48(sp)
    80007e40:	02813483          	ld	s1,40(sp)
    80007e44:	02013903          	ld	s2,32(sp)
    80007e48:	01813983          	ld	s3,24(sp)
    80007e4c:	01013a03          	ld	s4,16(sp)
    80007e50:	00813a83          	ld	s5,8(sp)
    80007e54:	00013b03          	ld	s6,0(sp)
    80007e58:	04010113          	addi	sp,sp,64
    80007e5c:	00008067          	ret
    80007e60:	00002517          	auipc	a0,0x2
    80007e64:	a2850513          	addi	a0,a0,-1496 # 80009888 <digits+0x18>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	3d4080e7          	jalr	980(ra) # 8000723c <panic>

0000000080007e70 <kfree>:
    80007e70:	fe010113          	addi	sp,sp,-32
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00113c23          	sd	ra,24(sp)
    80007e7c:	00913423          	sd	s1,8(sp)
    80007e80:	02010413          	addi	s0,sp,32
    80007e84:	03451793          	slli	a5,a0,0x34
    80007e88:	04079c63          	bnez	a5,80007ee0 <kfree+0x70>
    80007e8c:	00005797          	auipc	a5,0x5
    80007e90:	c0478793          	addi	a5,a5,-1020 # 8000ca90 <end>
    80007e94:	00050493          	mv	s1,a0
    80007e98:	04f56463          	bltu	a0,a5,80007ee0 <kfree+0x70>
    80007e9c:	01100793          	li	a5,17
    80007ea0:	01b79793          	slli	a5,a5,0x1b
    80007ea4:	02f57e63          	bgeu	a0,a5,80007ee0 <kfree+0x70>
    80007ea8:	00001637          	lui	a2,0x1
    80007eac:	00100593          	li	a1,1
    80007eb0:	00000097          	auipc	ra,0x0
    80007eb4:	478080e7          	jalr	1144(ra) # 80008328 <__memset>
    80007eb8:	00004797          	auipc	a5,0x4
    80007ebc:	8c878793          	addi	a5,a5,-1848 # 8000b780 <kmem>
    80007ec0:	0007b703          	ld	a4,0(a5)
    80007ec4:	01813083          	ld	ra,24(sp)
    80007ec8:	01013403          	ld	s0,16(sp)
    80007ecc:	00e4b023          	sd	a4,0(s1)
    80007ed0:	0097b023          	sd	s1,0(a5)
    80007ed4:	00813483          	ld	s1,8(sp)
    80007ed8:	02010113          	addi	sp,sp,32
    80007edc:	00008067          	ret
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	9a850513          	addi	a0,a0,-1624 # 80009888 <digits+0x18>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	354080e7          	jalr	852(ra) # 8000723c <panic>

0000000080007ef0 <kalloc>:
    80007ef0:	fe010113          	addi	sp,sp,-32
    80007ef4:	00813823          	sd	s0,16(sp)
    80007ef8:	00913423          	sd	s1,8(sp)
    80007efc:	00113c23          	sd	ra,24(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	00004797          	auipc	a5,0x4
    80007f08:	87c78793          	addi	a5,a5,-1924 # 8000b780 <kmem>
    80007f0c:	0007b483          	ld	s1,0(a5)
    80007f10:	02048063          	beqz	s1,80007f30 <kalloc+0x40>
    80007f14:	0004b703          	ld	a4,0(s1)
    80007f18:	00001637          	lui	a2,0x1
    80007f1c:	00500593          	li	a1,5
    80007f20:	00048513          	mv	a0,s1
    80007f24:	00e7b023          	sd	a4,0(a5)
    80007f28:	00000097          	auipc	ra,0x0
    80007f2c:	400080e7          	jalr	1024(ra) # 80008328 <__memset>
    80007f30:	01813083          	ld	ra,24(sp)
    80007f34:	01013403          	ld	s0,16(sp)
    80007f38:	00048513          	mv	a0,s1
    80007f3c:	00813483          	ld	s1,8(sp)
    80007f40:	02010113          	addi	sp,sp,32
    80007f44:	00008067          	ret

0000000080007f48 <initlock>:
    80007f48:	ff010113          	addi	sp,sp,-16
    80007f4c:	00813423          	sd	s0,8(sp)
    80007f50:	01010413          	addi	s0,sp,16
    80007f54:	00813403          	ld	s0,8(sp)
    80007f58:	00b53423          	sd	a1,8(a0)
    80007f5c:	00052023          	sw	zero,0(a0)
    80007f60:	00053823          	sd	zero,16(a0)
    80007f64:	01010113          	addi	sp,sp,16
    80007f68:	00008067          	ret

0000000080007f6c <acquire>:
    80007f6c:	fe010113          	addi	sp,sp,-32
    80007f70:	00813823          	sd	s0,16(sp)
    80007f74:	00913423          	sd	s1,8(sp)
    80007f78:	00113c23          	sd	ra,24(sp)
    80007f7c:	01213023          	sd	s2,0(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	00050493          	mv	s1,a0
    80007f88:	10002973          	csrr	s2,sstatus
    80007f8c:	100027f3          	csrr	a5,sstatus
    80007f90:	ffd7f793          	andi	a5,a5,-3
    80007f94:	10079073          	csrw	sstatus,a5
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	8e0080e7          	jalr	-1824(ra) # 80006878 <mycpu>
    80007fa0:	07852783          	lw	a5,120(a0)
    80007fa4:	06078e63          	beqz	a5,80008020 <acquire+0xb4>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	8d0080e7          	jalr	-1840(ra) # 80006878 <mycpu>
    80007fb0:	07852783          	lw	a5,120(a0)
    80007fb4:	0004a703          	lw	a4,0(s1)
    80007fb8:	0017879b          	addiw	a5,a5,1
    80007fbc:	06f52c23          	sw	a5,120(a0)
    80007fc0:	04071063          	bnez	a4,80008000 <acquire+0x94>
    80007fc4:	00100713          	li	a4,1
    80007fc8:	00070793          	mv	a5,a4
    80007fcc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007fd0:	0007879b          	sext.w	a5,a5
    80007fd4:	fe079ae3          	bnez	a5,80007fc8 <acquire+0x5c>
    80007fd8:	0ff0000f          	fence
    80007fdc:	fffff097          	auipc	ra,0xfffff
    80007fe0:	89c080e7          	jalr	-1892(ra) # 80006878 <mycpu>
    80007fe4:	01813083          	ld	ra,24(sp)
    80007fe8:	01013403          	ld	s0,16(sp)
    80007fec:	00a4b823          	sd	a0,16(s1)
    80007ff0:	00013903          	ld	s2,0(sp)
    80007ff4:	00813483          	ld	s1,8(sp)
    80007ff8:	02010113          	addi	sp,sp,32
    80007ffc:	00008067          	ret
    80008000:	0104b903          	ld	s2,16(s1)
    80008004:	fffff097          	auipc	ra,0xfffff
    80008008:	874080e7          	jalr	-1932(ra) # 80006878 <mycpu>
    8000800c:	faa91ce3          	bne	s2,a0,80007fc4 <acquire+0x58>
    80008010:	00002517          	auipc	a0,0x2
    80008014:	88050513          	addi	a0,a0,-1920 # 80009890 <digits+0x20>
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	224080e7          	jalr	548(ra) # 8000723c <panic>
    80008020:	00195913          	srli	s2,s2,0x1
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	854080e7          	jalr	-1964(ra) # 80006878 <mycpu>
    8000802c:	00197913          	andi	s2,s2,1
    80008030:	07252e23          	sw	s2,124(a0)
    80008034:	f75ff06f          	j	80007fa8 <acquire+0x3c>

0000000080008038 <release>:
    80008038:	fe010113          	addi	sp,sp,-32
    8000803c:	00813823          	sd	s0,16(sp)
    80008040:	00113c23          	sd	ra,24(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	01213023          	sd	s2,0(sp)
    8000804c:	02010413          	addi	s0,sp,32
    80008050:	00052783          	lw	a5,0(a0)
    80008054:	00079a63          	bnez	a5,80008068 <release+0x30>
    80008058:	00002517          	auipc	a0,0x2
    8000805c:	84050513          	addi	a0,a0,-1984 # 80009898 <digits+0x28>
    80008060:	fffff097          	auipc	ra,0xfffff
    80008064:	1dc080e7          	jalr	476(ra) # 8000723c <panic>
    80008068:	01053903          	ld	s2,16(a0)
    8000806c:	00050493          	mv	s1,a0
    80008070:	fffff097          	auipc	ra,0xfffff
    80008074:	808080e7          	jalr	-2040(ra) # 80006878 <mycpu>
    80008078:	fea910e3          	bne	s2,a0,80008058 <release+0x20>
    8000807c:	0004b823          	sd	zero,16(s1)
    80008080:	0ff0000f          	fence
    80008084:	0f50000f          	fence	iorw,ow
    80008088:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000808c:	ffffe097          	auipc	ra,0xffffe
    80008090:	7ec080e7          	jalr	2028(ra) # 80006878 <mycpu>
    80008094:	100027f3          	csrr	a5,sstatus
    80008098:	0027f793          	andi	a5,a5,2
    8000809c:	04079a63          	bnez	a5,800080f0 <release+0xb8>
    800080a0:	07852783          	lw	a5,120(a0)
    800080a4:	02f05e63          	blez	a5,800080e0 <release+0xa8>
    800080a8:	fff7871b          	addiw	a4,a5,-1
    800080ac:	06e52c23          	sw	a4,120(a0)
    800080b0:	00071c63          	bnez	a4,800080c8 <release+0x90>
    800080b4:	07c52783          	lw	a5,124(a0)
    800080b8:	00078863          	beqz	a5,800080c8 <release+0x90>
    800080bc:	100027f3          	csrr	a5,sstatus
    800080c0:	0027e793          	ori	a5,a5,2
    800080c4:	10079073          	csrw	sstatus,a5
    800080c8:	01813083          	ld	ra,24(sp)
    800080cc:	01013403          	ld	s0,16(sp)
    800080d0:	00813483          	ld	s1,8(sp)
    800080d4:	00013903          	ld	s2,0(sp)
    800080d8:	02010113          	addi	sp,sp,32
    800080dc:	00008067          	ret
    800080e0:	00001517          	auipc	a0,0x1
    800080e4:	7d850513          	addi	a0,a0,2008 # 800098b8 <digits+0x48>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	154080e7          	jalr	340(ra) # 8000723c <panic>
    800080f0:	00001517          	auipc	a0,0x1
    800080f4:	7b050513          	addi	a0,a0,1968 # 800098a0 <digits+0x30>
    800080f8:	fffff097          	auipc	ra,0xfffff
    800080fc:	144080e7          	jalr	324(ra) # 8000723c <panic>

0000000080008100 <holding>:
    80008100:	00052783          	lw	a5,0(a0)
    80008104:	00079663          	bnez	a5,80008110 <holding+0x10>
    80008108:	00000513          	li	a0,0
    8000810c:	00008067          	ret
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	00113c23          	sd	ra,24(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	01053483          	ld	s1,16(a0)
    80008128:	ffffe097          	auipc	ra,0xffffe
    8000812c:	750080e7          	jalr	1872(ra) # 80006878 <mycpu>
    80008130:	01813083          	ld	ra,24(sp)
    80008134:	01013403          	ld	s0,16(sp)
    80008138:	40a48533          	sub	a0,s1,a0
    8000813c:	00153513          	seqz	a0,a0
    80008140:	00813483          	ld	s1,8(sp)
    80008144:	02010113          	addi	sp,sp,32
    80008148:	00008067          	ret

000000008000814c <push_off>:
    8000814c:	fe010113          	addi	sp,sp,-32
    80008150:	00813823          	sd	s0,16(sp)
    80008154:	00113c23          	sd	ra,24(sp)
    80008158:	00913423          	sd	s1,8(sp)
    8000815c:	02010413          	addi	s0,sp,32
    80008160:	100024f3          	csrr	s1,sstatus
    80008164:	100027f3          	csrr	a5,sstatus
    80008168:	ffd7f793          	andi	a5,a5,-3
    8000816c:	10079073          	csrw	sstatus,a5
    80008170:	ffffe097          	auipc	ra,0xffffe
    80008174:	708080e7          	jalr	1800(ra) # 80006878 <mycpu>
    80008178:	07852783          	lw	a5,120(a0)
    8000817c:	02078663          	beqz	a5,800081a8 <push_off+0x5c>
    80008180:	ffffe097          	auipc	ra,0xffffe
    80008184:	6f8080e7          	jalr	1784(ra) # 80006878 <mycpu>
    80008188:	07852783          	lw	a5,120(a0)
    8000818c:	01813083          	ld	ra,24(sp)
    80008190:	01013403          	ld	s0,16(sp)
    80008194:	0017879b          	addiw	a5,a5,1
    80008198:	06f52c23          	sw	a5,120(a0)
    8000819c:	00813483          	ld	s1,8(sp)
    800081a0:	02010113          	addi	sp,sp,32
    800081a4:	00008067          	ret
    800081a8:	0014d493          	srli	s1,s1,0x1
    800081ac:	ffffe097          	auipc	ra,0xffffe
    800081b0:	6cc080e7          	jalr	1740(ra) # 80006878 <mycpu>
    800081b4:	0014f493          	andi	s1,s1,1
    800081b8:	06952e23          	sw	s1,124(a0)
    800081bc:	fc5ff06f          	j	80008180 <push_off+0x34>

00000000800081c0 <pop_off>:
    800081c0:	ff010113          	addi	sp,sp,-16
    800081c4:	00813023          	sd	s0,0(sp)
    800081c8:	00113423          	sd	ra,8(sp)
    800081cc:	01010413          	addi	s0,sp,16
    800081d0:	ffffe097          	auipc	ra,0xffffe
    800081d4:	6a8080e7          	jalr	1704(ra) # 80006878 <mycpu>
    800081d8:	100027f3          	csrr	a5,sstatus
    800081dc:	0027f793          	andi	a5,a5,2
    800081e0:	04079663          	bnez	a5,8000822c <pop_off+0x6c>
    800081e4:	07852783          	lw	a5,120(a0)
    800081e8:	02f05a63          	blez	a5,8000821c <pop_off+0x5c>
    800081ec:	fff7871b          	addiw	a4,a5,-1
    800081f0:	06e52c23          	sw	a4,120(a0)
    800081f4:	00071c63          	bnez	a4,8000820c <pop_off+0x4c>
    800081f8:	07c52783          	lw	a5,124(a0)
    800081fc:	00078863          	beqz	a5,8000820c <pop_off+0x4c>
    80008200:	100027f3          	csrr	a5,sstatus
    80008204:	0027e793          	ori	a5,a5,2
    80008208:	10079073          	csrw	sstatus,a5
    8000820c:	00813083          	ld	ra,8(sp)
    80008210:	00013403          	ld	s0,0(sp)
    80008214:	01010113          	addi	sp,sp,16
    80008218:	00008067          	ret
    8000821c:	00001517          	auipc	a0,0x1
    80008220:	69c50513          	addi	a0,a0,1692 # 800098b8 <digits+0x48>
    80008224:	fffff097          	auipc	ra,0xfffff
    80008228:	018080e7          	jalr	24(ra) # 8000723c <panic>
    8000822c:	00001517          	auipc	a0,0x1
    80008230:	67450513          	addi	a0,a0,1652 # 800098a0 <digits+0x30>
    80008234:	fffff097          	auipc	ra,0xfffff
    80008238:	008080e7          	jalr	8(ra) # 8000723c <panic>

000000008000823c <push_on>:
    8000823c:	fe010113          	addi	sp,sp,-32
    80008240:	00813823          	sd	s0,16(sp)
    80008244:	00113c23          	sd	ra,24(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	02010413          	addi	s0,sp,32
    80008250:	100024f3          	csrr	s1,sstatus
    80008254:	100027f3          	csrr	a5,sstatus
    80008258:	0027e793          	ori	a5,a5,2
    8000825c:	10079073          	csrw	sstatus,a5
    80008260:	ffffe097          	auipc	ra,0xffffe
    80008264:	618080e7          	jalr	1560(ra) # 80006878 <mycpu>
    80008268:	07852783          	lw	a5,120(a0)
    8000826c:	02078663          	beqz	a5,80008298 <push_on+0x5c>
    80008270:	ffffe097          	auipc	ra,0xffffe
    80008274:	608080e7          	jalr	1544(ra) # 80006878 <mycpu>
    80008278:	07852783          	lw	a5,120(a0)
    8000827c:	01813083          	ld	ra,24(sp)
    80008280:	01013403          	ld	s0,16(sp)
    80008284:	0017879b          	addiw	a5,a5,1
    80008288:	06f52c23          	sw	a5,120(a0)
    8000828c:	00813483          	ld	s1,8(sp)
    80008290:	02010113          	addi	sp,sp,32
    80008294:	00008067          	ret
    80008298:	0014d493          	srli	s1,s1,0x1
    8000829c:	ffffe097          	auipc	ra,0xffffe
    800082a0:	5dc080e7          	jalr	1500(ra) # 80006878 <mycpu>
    800082a4:	0014f493          	andi	s1,s1,1
    800082a8:	06952e23          	sw	s1,124(a0)
    800082ac:	fc5ff06f          	j	80008270 <push_on+0x34>

00000000800082b0 <pop_on>:
    800082b0:	ff010113          	addi	sp,sp,-16
    800082b4:	00813023          	sd	s0,0(sp)
    800082b8:	00113423          	sd	ra,8(sp)
    800082bc:	01010413          	addi	s0,sp,16
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	5b8080e7          	jalr	1464(ra) # 80006878 <mycpu>
    800082c8:	100027f3          	csrr	a5,sstatus
    800082cc:	0027f793          	andi	a5,a5,2
    800082d0:	04078463          	beqz	a5,80008318 <pop_on+0x68>
    800082d4:	07852783          	lw	a5,120(a0)
    800082d8:	02f05863          	blez	a5,80008308 <pop_on+0x58>
    800082dc:	fff7879b          	addiw	a5,a5,-1
    800082e0:	06f52c23          	sw	a5,120(a0)
    800082e4:	07853783          	ld	a5,120(a0)
    800082e8:	00079863          	bnez	a5,800082f8 <pop_on+0x48>
    800082ec:	100027f3          	csrr	a5,sstatus
    800082f0:	ffd7f793          	andi	a5,a5,-3
    800082f4:	10079073          	csrw	sstatus,a5
    800082f8:	00813083          	ld	ra,8(sp)
    800082fc:	00013403          	ld	s0,0(sp)
    80008300:	01010113          	addi	sp,sp,16
    80008304:	00008067          	ret
    80008308:	00001517          	auipc	a0,0x1
    8000830c:	5d850513          	addi	a0,a0,1496 # 800098e0 <digits+0x70>
    80008310:	fffff097          	auipc	ra,0xfffff
    80008314:	f2c080e7          	jalr	-212(ra) # 8000723c <panic>
    80008318:	00001517          	auipc	a0,0x1
    8000831c:	5a850513          	addi	a0,a0,1448 # 800098c0 <digits+0x50>
    80008320:	fffff097          	auipc	ra,0xfffff
    80008324:	f1c080e7          	jalr	-228(ra) # 8000723c <panic>

0000000080008328 <__memset>:
    80008328:	ff010113          	addi	sp,sp,-16
    8000832c:	00813423          	sd	s0,8(sp)
    80008330:	01010413          	addi	s0,sp,16
    80008334:	1a060e63          	beqz	a2,800084f0 <__memset+0x1c8>
    80008338:	40a007b3          	neg	a5,a0
    8000833c:	0077f793          	andi	a5,a5,7
    80008340:	00778693          	addi	a3,a5,7
    80008344:	00b00813          	li	a6,11
    80008348:	0ff5f593          	andi	a1,a1,255
    8000834c:	fff6071b          	addiw	a4,a2,-1
    80008350:	1b06e663          	bltu	a3,a6,800084fc <__memset+0x1d4>
    80008354:	1cd76463          	bltu	a4,a3,8000851c <__memset+0x1f4>
    80008358:	1a078e63          	beqz	a5,80008514 <__memset+0x1ec>
    8000835c:	00b50023          	sb	a1,0(a0)
    80008360:	00100713          	li	a4,1
    80008364:	1ae78463          	beq	a5,a4,8000850c <__memset+0x1e4>
    80008368:	00b500a3          	sb	a1,1(a0)
    8000836c:	00200713          	li	a4,2
    80008370:	1ae78a63          	beq	a5,a4,80008524 <__memset+0x1fc>
    80008374:	00b50123          	sb	a1,2(a0)
    80008378:	00300713          	li	a4,3
    8000837c:	18e78463          	beq	a5,a4,80008504 <__memset+0x1dc>
    80008380:	00b501a3          	sb	a1,3(a0)
    80008384:	00400713          	li	a4,4
    80008388:	1ae78263          	beq	a5,a4,8000852c <__memset+0x204>
    8000838c:	00b50223          	sb	a1,4(a0)
    80008390:	00500713          	li	a4,5
    80008394:	1ae78063          	beq	a5,a4,80008534 <__memset+0x20c>
    80008398:	00b502a3          	sb	a1,5(a0)
    8000839c:	00700713          	li	a4,7
    800083a0:	18e79e63          	bne	a5,a4,8000853c <__memset+0x214>
    800083a4:	00b50323          	sb	a1,6(a0)
    800083a8:	00700e93          	li	t4,7
    800083ac:	00859713          	slli	a4,a1,0x8
    800083b0:	00e5e733          	or	a4,a1,a4
    800083b4:	01059e13          	slli	t3,a1,0x10
    800083b8:	01c76e33          	or	t3,a4,t3
    800083bc:	01859313          	slli	t1,a1,0x18
    800083c0:	006e6333          	or	t1,t3,t1
    800083c4:	02059893          	slli	a7,a1,0x20
    800083c8:	40f60e3b          	subw	t3,a2,a5
    800083cc:	011368b3          	or	a7,t1,a7
    800083d0:	02859813          	slli	a6,a1,0x28
    800083d4:	0108e833          	or	a6,a7,a6
    800083d8:	03059693          	slli	a3,a1,0x30
    800083dc:	003e589b          	srliw	a7,t3,0x3
    800083e0:	00d866b3          	or	a3,a6,a3
    800083e4:	03859713          	slli	a4,a1,0x38
    800083e8:	00389813          	slli	a6,a7,0x3
    800083ec:	00f507b3          	add	a5,a0,a5
    800083f0:	00e6e733          	or	a4,a3,a4
    800083f4:	000e089b          	sext.w	a7,t3
    800083f8:	00f806b3          	add	a3,a6,a5
    800083fc:	00e7b023          	sd	a4,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	fed79ce3          	bne	a5,a3,800083fc <__memset+0xd4>
    80008408:	ff8e7793          	andi	a5,t3,-8
    8000840c:	0007871b          	sext.w	a4,a5
    80008410:	01d787bb          	addw	a5,a5,t4
    80008414:	0ce88e63          	beq	a7,a4,800084f0 <__memset+0x1c8>
    80008418:	00f50733          	add	a4,a0,a5
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0017871b          	addiw	a4,a5,1
    80008424:	0cc77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	0027871b          	addiw	a4,a5,2
    80008434:	0ac77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0037871b          	addiw	a4,a5,3
    80008444:	0ac77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0047871b          	addiw	a4,a5,4
    80008454:	08c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0057871b          	addiw	a4,a5,5
    80008464:	08c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0067871b          	addiw	a4,a5,6
    80008474:	06c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0077871b          	addiw	a4,a5,7
    80008484:	06c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0087871b          	addiw	a4,a5,8
    80008494:	04c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0097871b          	addiw	a4,a5,9
    800084a4:	04c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	00a7871b          	addiw	a4,a5,10
    800084b4:	02c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	00b7871b          	addiw	a4,a5,11
    800084c4:	02c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	00c7871b          	addiw	a4,a5,12
    800084d4:	00c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	00d7879b          	addiw	a5,a5,13
    800084e4:	00c7f663          	bgeu	a5,a2,800084f0 <__memset+0x1c8>
    800084e8:	00f507b3          	add	a5,a0,a5
    800084ec:	00b78023          	sb	a1,0(a5)
    800084f0:	00813403          	ld	s0,8(sp)
    800084f4:	01010113          	addi	sp,sp,16
    800084f8:	00008067          	ret
    800084fc:	00b00693          	li	a3,11
    80008500:	e55ff06f          	j	80008354 <__memset+0x2c>
    80008504:	00300e93          	li	t4,3
    80008508:	ea5ff06f          	j	800083ac <__memset+0x84>
    8000850c:	00100e93          	li	t4,1
    80008510:	e9dff06f          	j	800083ac <__memset+0x84>
    80008514:	00000e93          	li	t4,0
    80008518:	e95ff06f          	j	800083ac <__memset+0x84>
    8000851c:	00000793          	li	a5,0
    80008520:	ef9ff06f          	j	80008418 <__memset+0xf0>
    80008524:	00200e93          	li	t4,2
    80008528:	e85ff06f          	j	800083ac <__memset+0x84>
    8000852c:	00400e93          	li	t4,4
    80008530:	e7dff06f          	j	800083ac <__memset+0x84>
    80008534:	00500e93          	li	t4,5
    80008538:	e75ff06f          	j	800083ac <__memset+0x84>
    8000853c:	00600e93          	li	t4,6
    80008540:	e6dff06f          	j	800083ac <__memset+0x84>

0000000080008544 <__memmove>:
    80008544:	ff010113          	addi	sp,sp,-16
    80008548:	00813423          	sd	s0,8(sp)
    8000854c:	01010413          	addi	s0,sp,16
    80008550:	0e060863          	beqz	a2,80008640 <__memmove+0xfc>
    80008554:	fff6069b          	addiw	a3,a2,-1
    80008558:	0006881b          	sext.w	a6,a3
    8000855c:	0ea5e863          	bltu	a1,a0,8000864c <__memmove+0x108>
    80008560:	00758713          	addi	a4,a1,7
    80008564:	00a5e7b3          	or	a5,a1,a0
    80008568:	40a70733          	sub	a4,a4,a0
    8000856c:	0077f793          	andi	a5,a5,7
    80008570:	00f73713          	sltiu	a4,a4,15
    80008574:	00174713          	xori	a4,a4,1
    80008578:	0017b793          	seqz	a5,a5
    8000857c:	00e7f7b3          	and	a5,a5,a4
    80008580:	10078863          	beqz	a5,80008690 <__memmove+0x14c>
    80008584:	00900793          	li	a5,9
    80008588:	1107f463          	bgeu	a5,a6,80008690 <__memmove+0x14c>
    8000858c:	0036581b          	srliw	a6,a2,0x3
    80008590:	fff8081b          	addiw	a6,a6,-1
    80008594:	02081813          	slli	a6,a6,0x20
    80008598:	01d85893          	srli	a7,a6,0x1d
    8000859c:	00858813          	addi	a6,a1,8
    800085a0:	00058793          	mv	a5,a1
    800085a4:	00050713          	mv	a4,a0
    800085a8:	01088833          	add	a6,a7,a6
    800085ac:	0007b883          	ld	a7,0(a5)
    800085b0:	00878793          	addi	a5,a5,8
    800085b4:	00870713          	addi	a4,a4,8
    800085b8:	ff173c23          	sd	a7,-8(a4)
    800085bc:	ff0798e3          	bne	a5,a6,800085ac <__memmove+0x68>
    800085c0:	ff867713          	andi	a4,a2,-8
    800085c4:	02071793          	slli	a5,a4,0x20
    800085c8:	0207d793          	srli	a5,a5,0x20
    800085cc:	00f585b3          	add	a1,a1,a5
    800085d0:	40e686bb          	subw	a3,a3,a4
    800085d4:	00f507b3          	add	a5,a0,a5
    800085d8:	06e60463          	beq	a2,a4,80008640 <__memmove+0xfc>
    800085dc:	0005c703          	lbu	a4,0(a1)
    800085e0:	00e78023          	sb	a4,0(a5)
    800085e4:	04068e63          	beqz	a3,80008640 <__memmove+0xfc>
    800085e8:	0015c603          	lbu	a2,1(a1)
    800085ec:	00100713          	li	a4,1
    800085f0:	00c780a3          	sb	a2,1(a5)
    800085f4:	04e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    800085f8:	0025c603          	lbu	a2,2(a1)
    800085fc:	00200713          	li	a4,2
    80008600:	00c78123          	sb	a2,2(a5)
    80008604:	02e68e63          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008608:	0035c603          	lbu	a2,3(a1)
    8000860c:	00300713          	li	a4,3
    80008610:	00c781a3          	sb	a2,3(a5)
    80008614:	02e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008618:	0045c603          	lbu	a2,4(a1)
    8000861c:	00400713          	li	a4,4
    80008620:	00c78223          	sb	a2,4(a5)
    80008624:	00e68e63          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008628:	0055c603          	lbu	a2,5(a1)
    8000862c:	00500713          	li	a4,5
    80008630:	00c782a3          	sb	a2,5(a5)
    80008634:	00e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008638:	0065c703          	lbu	a4,6(a1)
    8000863c:	00e78323          	sb	a4,6(a5)
    80008640:	00813403          	ld	s0,8(sp)
    80008644:	01010113          	addi	sp,sp,16
    80008648:	00008067          	ret
    8000864c:	02061713          	slli	a4,a2,0x20
    80008650:	02075713          	srli	a4,a4,0x20
    80008654:	00e587b3          	add	a5,a1,a4
    80008658:	f0f574e3          	bgeu	a0,a5,80008560 <__memmove+0x1c>
    8000865c:	02069613          	slli	a2,a3,0x20
    80008660:	02065613          	srli	a2,a2,0x20
    80008664:	fff64613          	not	a2,a2
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00c78633          	add	a2,a5,a2
    80008670:	fff7c683          	lbu	a3,-1(a5)
    80008674:	fff78793          	addi	a5,a5,-1
    80008678:	fff70713          	addi	a4,a4,-1
    8000867c:	00d70023          	sb	a3,0(a4)
    80008680:	fec798e3          	bne	a5,a2,80008670 <__memmove+0x12c>
    80008684:	00813403          	ld	s0,8(sp)
    80008688:	01010113          	addi	sp,sp,16
    8000868c:	00008067          	ret
    80008690:	02069713          	slli	a4,a3,0x20
    80008694:	02075713          	srli	a4,a4,0x20
    80008698:	00170713          	addi	a4,a4,1
    8000869c:	00e50733          	add	a4,a0,a4
    800086a0:	00050793          	mv	a5,a0
    800086a4:	0005c683          	lbu	a3,0(a1)
    800086a8:	00178793          	addi	a5,a5,1
    800086ac:	00158593          	addi	a1,a1,1
    800086b0:	fed78fa3          	sb	a3,-1(a5)
    800086b4:	fee798e3          	bne	a5,a4,800086a4 <__memmove+0x160>
    800086b8:	f89ff06f          	j	80008640 <__memmove+0xfc>

00000000800086bc <__putc>:
    800086bc:	fe010113          	addi	sp,sp,-32
    800086c0:	00813823          	sd	s0,16(sp)
    800086c4:	00113c23          	sd	ra,24(sp)
    800086c8:	02010413          	addi	s0,sp,32
    800086cc:	00050793          	mv	a5,a0
    800086d0:	fef40593          	addi	a1,s0,-17
    800086d4:	00100613          	li	a2,1
    800086d8:	00000513          	li	a0,0
    800086dc:	fef407a3          	sb	a5,-17(s0)
    800086e0:	fffff097          	auipc	ra,0xfffff
    800086e4:	b3c080e7          	jalr	-1220(ra) # 8000721c <console_write>
    800086e8:	01813083          	ld	ra,24(sp)
    800086ec:	01013403          	ld	s0,16(sp)
    800086f0:	02010113          	addi	sp,sp,32
    800086f4:	00008067          	ret

00000000800086f8 <__getc>:
    800086f8:	fe010113          	addi	sp,sp,-32
    800086fc:	00813823          	sd	s0,16(sp)
    80008700:	00113c23          	sd	ra,24(sp)
    80008704:	02010413          	addi	s0,sp,32
    80008708:	fe840593          	addi	a1,s0,-24
    8000870c:	00100613          	li	a2,1
    80008710:	00000513          	li	a0,0
    80008714:	fffff097          	auipc	ra,0xfffff
    80008718:	ae8080e7          	jalr	-1304(ra) # 800071fc <console_read>
    8000871c:	fe844503          	lbu	a0,-24(s0)
    80008720:	01813083          	ld	ra,24(sp)
    80008724:	01013403          	ld	s0,16(sp)
    80008728:	02010113          	addi	sp,sp,32
    8000872c:	00008067          	ret

0000000080008730 <console_handler>:
    80008730:	fe010113          	addi	sp,sp,-32
    80008734:	00813823          	sd	s0,16(sp)
    80008738:	00113c23          	sd	ra,24(sp)
    8000873c:	00913423          	sd	s1,8(sp)
    80008740:	02010413          	addi	s0,sp,32
    80008744:	14202773          	csrr	a4,scause
    80008748:	100027f3          	csrr	a5,sstatus
    8000874c:	0027f793          	andi	a5,a5,2
    80008750:	06079e63          	bnez	a5,800087cc <console_handler+0x9c>
    80008754:	00074c63          	bltz	a4,8000876c <console_handler+0x3c>
    80008758:	01813083          	ld	ra,24(sp)
    8000875c:	01013403          	ld	s0,16(sp)
    80008760:	00813483          	ld	s1,8(sp)
    80008764:	02010113          	addi	sp,sp,32
    80008768:	00008067          	ret
    8000876c:	0ff77713          	andi	a4,a4,255
    80008770:	00900793          	li	a5,9
    80008774:	fef712e3          	bne	a4,a5,80008758 <console_handler+0x28>
    80008778:	ffffe097          	auipc	ra,0xffffe
    8000877c:	6dc080e7          	jalr	1756(ra) # 80006e54 <plic_claim>
    80008780:	00a00793          	li	a5,10
    80008784:	00050493          	mv	s1,a0
    80008788:	02f50c63          	beq	a0,a5,800087c0 <console_handler+0x90>
    8000878c:	fc0506e3          	beqz	a0,80008758 <console_handler+0x28>
    80008790:	00050593          	mv	a1,a0
    80008794:	00001517          	auipc	a0,0x1
    80008798:	05450513          	addi	a0,a0,84 # 800097e8 <_ZZ12printIntegermE6digits+0x538>
    8000879c:	fffff097          	auipc	ra,0xfffff
    800087a0:	afc080e7          	jalr	-1284(ra) # 80007298 <__printf>
    800087a4:	01013403          	ld	s0,16(sp)
    800087a8:	01813083          	ld	ra,24(sp)
    800087ac:	00048513          	mv	a0,s1
    800087b0:	00813483          	ld	s1,8(sp)
    800087b4:	02010113          	addi	sp,sp,32
    800087b8:	ffffe317          	auipc	t1,0xffffe
    800087bc:	6d430067          	jr	1748(t1) # 80006e8c <plic_complete>
    800087c0:	fffff097          	auipc	ra,0xfffff
    800087c4:	3e0080e7          	jalr	992(ra) # 80007ba0 <uartintr>
    800087c8:	fddff06f          	j	800087a4 <console_handler+0x74>
    800087cc:	00001517          	auipc	a0,0x1
    800087d0:	11c50513          	addi	a0,a0,284 # 800098e8 <digits+0x78>
    800087d4:	fffff097          	auipc	ra,0xfffff
    800087d8:	a68080e7          	jalr	-1432(ra) # 8000723c <panic>
	...
