	.file	"ps_main_v1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/course-lab_6/lab-wlos_baseline/testbench/lab6_uart" "ps_main_v1.c"
	.align	2
	.type	flush_cpu_icache, @function
flush_cpu_icache:
.LFB21:
	.file 1 "../../firmware/system.h"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	flush_cpu_icache, .-flush_cpu_icache
	.align	2
	.type	flush_cpu_dcache, @function
flush_cpu_dcache:
.LFB22:
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	flush_cpu_dcache, .-flush_cpu_dcache
	.align	2
	.type	csr_write_simple, @function
csr_write_simple:
.LFB23:
	.file 2 "../../firmware/hw/common.h"
	.loc 2 33 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 2 34 5
	lw	a5,-24(s0)
	.loc 2 34 32
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 35 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	csr_write_simple, .-csr_write_simple
	.align	2
	.type	user_irq_0_ev_enable_write, @function
user_irq_0_ev_enable_write:
.LFB209:
	.file 3 "../../firmware/csr.h"
	.loc 3 805 59
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 3 806 2
	li	a5,-268406784
	addi	a1,a5,-2028
	lw	a0,-20(s0)
	call	csr_write_simple
	.loc 3 807 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE209:
	.size	user_irq_0_ev_enable_write, .-user_irq_0_ev_enable_write
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB316:
	.file 4 "../../firmware/stub.c"
	.loc 4 19 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 20 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L8
	.loc 4 21 3
	li	a0,13
	call	putchar
.L8:
	.loc 4 22 11
	nop
.L7:
	.loc 4 22 13 discriminator 1
	li	a5,-268410880
	addi	a5,a5,-2044
	lw	a4,0(a5)
	.loc 4 22 60 discriminator 1
	li	a5,1
	beq	a4,a5,.L7
	.loc 4 23 3
	li	a5,-268410880
	addi	a5,a5,-2048
	.loc 4 23 50
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 4 24 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE316:
	.size	putchar, .-putchar
	.align	2
	.globl	print
	.type	print, @function
print:
.LFB317:
	.loc 4 27 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 4 28 8
	j	.L10
.L11:
	.loc 4 29 14
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 29 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	putchar
.L10:
	.loc 4 28 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
	.loc 4 30 1
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE317:
	.size	print, .-print
	.align	2
	.type	irq_getmask, @function
irq_getmask:
.LFB320:
	.file 5 "../../firmware/irq_vex.h"
	.loc 5 23 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 5 25 2
 #APP
# 25 "../../firmware/irq_vex.h" 1
	csrr a5, 3008
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 5 26 9
	lw	a5,-20(s0)
	.loc 5 27 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE320:
	.size	irq_getmask, .-irq_getmask
	.align	2
	.type	irq_setmask, @function
irq_setmask:
.LFB321:
	.loc 5 30 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 5 31 2
	lw	a5,-20(s0)
 #APP
# 31 "../../firmware/irq_vex.h" 1
	csrw 3008, a5
# 0 "" 2
	.loc 5 32 1
 #NO_APP
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	irq_setmask, .-irq_setmask
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB323:
	.file 6 "ps_main_v1.c"
	.loc 6 49 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	.loc 6 81 3
	li	a5,-268419072
	addi	a5,a5,-2048
	.loc 6 81 50
	li	a4,1
	sw	a4,0(a5)
	.loc 6 82 3
	li	a5,637534208
	addi	a5,a5,160
	.loc 6 82 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 83 3
	li	a5,637534208
	addi	a5,a5,156
	.loc 6 83 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 84 3
	li	a5,637534208
	addi	a5,a5,152
	.loc 6 84 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 85 3
	li	a5,637534208
	addi	a5,a5,148
	.loc 6 85 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 86 3
	li	a5,637534208
	addi	a5,a5,144
	.loc 6 86 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 87 3
	li	a5,637534208
	addi	a5,a5,140
	.loc 6 87 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 88 3
	li	a5,637534208
	addi	a5,a5,136
	.loc 6 88 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 89 3
	li	a5,637534208
	addi	a5,a5,132
	.loc 6 89 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 90 3
	li	a5,637534208
	addi	a5,a5,128
	.loc 6 90 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 91 3
	li	a5,637534208
	addi	a5,a5,124
	.loc 6 91 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 92 3
	li	a5,637534208
	addi	a5,a5,120
	.loc 6 92 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 93 3
	li	a5,637534208
	addi	a5,a5,116
	.loc 6 93 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 94 3
	li	a5,637534208
	addi	a5,a5,112
	.loc 6 94 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 95 3
	li	a5,637534208
	addi	a5,a5,108
	.loc 6 95 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 96 3
	li	a5,637534208
	addi	a5,a5,104
	.loc 6 96 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 97 3
	li	a5,637534208
	addi	a5,a5,100
	.loc 6 97 36
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 99 3
	li	a5,637534208
	addi	a5,a5,96
	.loc 6 99 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 100 3
	li	a5,637534208
	addi	a5,a5,92
	.loc 6 100 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 101 3
	li	a5,637534208
	addi	a5,a5,88
	.loc 6 101 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 102 3
	li	a5,637534208
	addi	a5,a5,84
	.loc 6 102 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 103 3
	li	a5,637534208
	addi	a5,a5,80
	.loc 6 103 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 104 3
	li	a5,637534208
	addi	a5,a5,76
	.loc 6 104 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 105 3
	li	a5,637534208
	addi	a5,a5,72
	.loc 6 105 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 106 3
	li	a5,637534208
	addi	a5,a5,68
	.loc 6 106 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 107 3
	li	a5,637534208
	addi	a5,a5,64
	.loc 6 107 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 109 3
	li	a5,637534208
	addi	a5,a5,52
	.loc 6 109 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 110 3
	li	a5,637534208
	addi	a5,a5,48
	.loc 6 110 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 111 3
	li	a5,637534208
	addi	a5,a5,44
	.loc 6 111 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 112 3
	li	a5,637534208
	addi	a5,a5,40
	.loc 6 112 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 113 3
	li	a5,637534208
	addi	a5,a5,36
	.loc 6 113 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 115 3
	li	a5,637534208
	addi	a5,a5,60
	.loc 6 115 36
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 116 3
	li	a5,637534208
	addi	a5,a5,56
	.loc 6 116 36
	li	a4,1026
	sw	a4,0(a5)
	.loc 6 120 3
	li	a5,-268410880
	.loc 6 120 50
	li	a4,1
	sw	a4,0(a5)
	.loc 6 123 3
	li	a5,637534208
	.loc 6 123 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 124 8
	nop
.L16:
	.loc 6 124 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 124 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L16
	.loc 6 128 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 128 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 128 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 128 57
	sw	a5,0(a4)
	.loc 6 129 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 129 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 129 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 129 56
	sw	a5,0(a4)
	.loc 6 130 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 130 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 130 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 130 56
	sw	a5,0(a4)
	.loc 6 131 53
	li	a4,-268423168
	.loc 6 131 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 131 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 131 50
	sw	a5,0(a4)
	.loc 6 134 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 134 36
	li	a4,-1419771904
	sw	a4,0(a5)
	.loc 6 137 3
	li	a5,-268423168
	addi	a5,a5,56
	.loc 6 137 56
	sw	zero,0(a5)
	.loc 6 140 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 140 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 140 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 140 56
	sw	a5,0(a4)
	.loc 6 145 10
	call	irq_getmask
	mv	a5,a0
	.loc 6 145 8
	sw	a5,-168(s0)
	.loc 6 146 8
	lw	a5,-168(s0)
	ori	a5,a5,4
	sw	a5,-168(s0)
	.loc 6 147 3
	lw	a5,-168(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 149 3
	li	a0,1
	call	user_irq_0_ev_enable_write
.LBB2:
	.loc 6 155 10
	sw	zero,-20(s0)
	.loc 6 155 2
	j	.L17
.L18:
	.loc 6 155 23 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 6 155 15 discriminator 1
	lw	a4,-20(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L18
.LBE2:
	.loc 6 157 8
	call	fir
	sw	a0,-172(s0)
.LBB3:
	.loc 6 158 10
	sw	zero,-24(s0)
	.loc 6 158 2
	j	.L19
.L20:
	.loc 6 158 23 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	.loc 6 158 15 discriminator 1
	lw	a4,-24(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L20
.LBE3:
	.loc 6 160 38
	lw	a5,-172(s0)
	lw	a5,0(a5)
	.loc 6 160 43
	slli	a4,a5,16
	.loc 6 160 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 160 36
	sw	a4,0(a5)
.LBB4:
	.loc 6 161 10
	sw	zero,-28(s0)
	.loc 6 161 2
	j	.L21
.L22:
	.loc 6 161 23 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L21:
	.loc 6 161 15 discriminator 1
	lw	a4,-28(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L22
.LBE4:
	.loc 6 163 43
	lw	a5,-172(s0)
	addi	a5,a5,4
	.loc 6 163 38
	lw	a5,0(a5)
	.loc 6 163 47
	slli	a4,a5,16
	.loc 6 163 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 163 36
	sw	a4,0(a5)
.LBB5:
	.loc 6 164 10
	sw	zero,-32(s0)
	.loc 6 164 2
	j	.L23
.L24:
	.loc 6 164 23 discriminator 3
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L23:
	.loc 6 164 15 discriminator 1
	lw	a4,-32(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L24
.LBE5:
	.loc 6 166 43
	lw	a5,-172(s0)
	addi	a5,a5,8
	.loc 6 166 38
	lw	a5,0(a5)
	.loc 6 166 47
	slli	a4,a5,16
	.loc 6 166 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 166 36
	sw	a4,0(a5)
.LBB6:
	.loc 6 167 10
	sw	zero,-36(s0)
	.loc 6 167 2
	j	.L25
.L26:
	.loc 6 167 23 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L25:
	.loc 6 167 15 discriminator 1
	lw	a4,-36(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L26
.LBE6:
	.loc 6 169 43
	lw	a5,-172(s0)
	addi	a5,a5,12
	.loc 6 169 38
	lw	a5,0(a5)
	.loc 6 169 47
	slli	a4,a5,16
	.loc 6 169 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 169 36
	sw	a4,0(a5)
.LBB7:
	.loc 6 170 10
	sw	zero,-40(s0)
	.loc 6 170 2
	j	.L27
.L28:
	.loc 6 170 23 discriminator 3
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L27:
	.loc 6 170 15 discriminator 1
	lw	a4,-40(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L28
.LBE7:
	.loc 6 172 43
	lw	a5,-172(s0)
	addi	a5,a5,16
	.loc 6 172 38
	lw	a5,0(a5)
	.loc 6 172 47
	slli	a4,a5,16
	.loc 6 172 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 172 36
	sw	a4,0(a5)
.LBB8:
	.loc 6 173 10
	sw	zero,-44(s0)
	.loc 6 173 2
	j	.L29
.L30:
	.loc 6 173 23 discriminator 3
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L29:
	.loc 6 173 15 discriminator 1
	lw	a4,-44(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L30
.LBE8:
	.loc 6 175 43
	lw	a5,-172(s0)
	addi	a5,a5,20
	.loc 6 175 38
	lw	a5,0(a5)
	.loc 6 175 47
	slli	a4,a5,16
	.loc 6 175 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 175 36
	sw	a4,0(a5)
.LBB9:
	.loc 6 176 10
	sw	zero,-48(s0)
	.loc 6 176 2
	j	.L31
.L32:
	.loc 6 176 23 discriminator 3
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L31:
	.loc 6 176 15 discriminator 1
	lw	a4,-48(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L32
.LBE9:
	.loc 6 178 43
	lw	a5,-172(s0)
	addi	a5,a5,24
	.loc 6 178 38
	lw	a5,0(a5)
	.loc 6 178 47
	slli	a4,a5,16
	.loc 6 178 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 178 36
	sw	a4,0(a5)
.LBB10:
	.loc 6 179 10
	sw	zero,-52(s0)
	.loc 6 179 2
	j	.L33
.L34:
	.loc 6 179 23 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L33:
	.loc 6 179 15 discriminator 1
	lw	a4,-52(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L34
.LBE10:
	.loc 6 181 43
	lw	a5,-172(s0)
	addi	a5,a5,28
	.loc 6 181 38
	lw	a5,0(a5)
	.loc 6 181 47
	slli	a4,a5,16
	.loc 6 181 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 181 36
	sw	a4,0(a5)
.LBB11:
	.loc 6 182 10
	sw	zero,-56(s0)
	.loc 6 182 2
	j	.L35
.L36:
	.loc 6 182 23 discriminator 3
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L35:
	.loc 6 182 15 discriminator 1
	lw	a4,-56(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L36
.LBE11:
	.loc 6 184 43
	lw	a5,-172(s0)
	addi	a5,a5,32
	.loc 6 184 38
	lw	a5,0(a5)
	.loc 6 184 47
	slli	a4,a5,16
	.loc 6 184 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 184 36
	sw	a4,0(a5)
.LBB12:
	.loc 6 185 10
	sw	zero,-60(s0)
	.loc 6 185 2
	j	.L37
.L38:
	.loc 6 185 23 discriminator 3
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L37:
	.loc 6 185 15 discriminator 1
	lw	a4,-60(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L38
.LBE12:
	.loc 6 187 43
	lw	a5,-172(s0)
	addi	a5,a5,36
	.loc 6 187 38
	lw	a5,0(a5)
	.loc 6 187 47
	slli	a4,a5,16
	.loc 6 187 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 187 36
	sw	a4,0(a5)
.LBB13:
	.loc 6 188 10
	sw	zero,-64(s0)
	.loc 6 188 2
	j	.L39
.L40:
	.loc 6 188 23 discriminator 3
	lw	a5,-64(s0)
	addi	a5,a5,1
	sw	a5,-64(s0)
.L39:
	.loc 6 188 15 discriminator 1
	lw	a4,-64(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L40
.LBE13:
	.loc 6 190 43
	lw	a5,-172(s0)
	addi	a5,a5,40
	.loc 6 190 38
	lw	a5,0(a5)
	.loc 6 190 48
	slli	a4,a5,16
	.loc 6 190 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 190 36
	sw	a4,0(a5)
.LBB14:
	.loc 6 191 10
	sw	zero,-68(s0)
	.loc 6 191 2
	j	.L41
.L42:
	.loc 6 191 23 discriminator 3
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L41:
	.loc 6 191 15 discriminator 1
	lw	a4,-68(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L42
.LBE14:
	.loc 6 193 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 193 36
	li	a4,-1419706368
	sw	a4,0(a5)
.LBB15:
	.loc 6 194 10
	sw	zero,-72(s0)
	.loc 6 194 2
	j	.L43
.L44:
	.loc 6 194 23 discriminator 3
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L43:
	.loc 6 194 15 discriminator 1
	lw	a4,-72(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L44
.LBE15:
	.loc 6 198 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 198 36
	li	a4,-1419771904
	sw	a4,0(a5)
.LBB16:
	.loc 6 199 10
	sw	zero,-76(s0)
	.loc 6 199 2
	j	.L45
.L46:
	.loc 6 199 22 discriminator 3
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L45:
	.loc 6 199 15 discriminator 1
	lw	a4,-76(s0)
	li	a5,999
	ble	a4,a5,.L46
.LBE16:
	.loc 6 201 8
	call	matmul
	sw	a0,-172(s0)
.LBB17:
	.loc 6 202 10
	sw	zero,-80(s0)
	.loc 6 202 2
	j	.L47
.L48:
	.loc 6 202 23 discriminator 3
	lw	a5,-80(s0)
	addi	a5,a5,1
	sw	a5,-80(s0)
.L47:
	.loc 6 202 15 discriminator 1
	lw	a4,-80(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L48
.LBE17:
	.loc 6 204 38
	lw	a5,-172(s0)
	lw	a5,0(a5)
	.loc 6 204 43
	slli	a4,a5,16
	.loc 6 204 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 204 36
	sw	a4,0(a5)
.LBB18:
	.loc 6 205 10
	sw	zero,-84(s0)
	.loc 6 205 2
	j	.L49
.L50:
	.loc 6 205 23 discriminator 3
	lw	a5,-84(s0)
	addi	a5,a5,1
	sw	a5,-84(s0)
.L49:
	.loc 6 205 15 discriminator 1
	lw	a4,-84(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L50
.LBE18:
	.loc 6 207 43
	lw	a5,-172(s0)
	addi	a5,a5,4
	.loc 6 207 38
	lw	a5,0(a5)
	.loc 6 207 47
	slli	a4,a5,16
	.loc 6 207 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 207 36
	sw	a4,0(a5)
.LBB19:
	.loc 6 208 10
	sw	zero,-88(s0)
	.loc 6 208 2
	j	.L51
.L52:
	.loc 6 208 23 discriminator 3
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
.L51:
	.loc 6 208 15 discriminator 1
	lw	a4,-88(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L52
.LBE19:
	.loc 6 210 43
	lw	a5,-172(s0)
	addi	a5,a5,8
	.loc 6 210 38
	lw	a5,0(a5)
	.loc 6 210 47
	slli	a4,a5,16
	.loc 6 210 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 210 36
	sw	a4,0(a5)
.LBB20:
	.loc 6 211 10
	sw	zero,-92(s0)
	.loc 6 211 2
	j	.L53
.L54:
	.loc 6 211 23 discriminator 3
	lw	a5,-92(s0)
	addi	a5,a5,1
	sw	a5,-92(s0)
.L53:
	.loc 6 211 15 discriminator 1
	lw	a4,-92(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L54
.LBE20:
	.loc 6 213 43
	lw	a5,-172(s0)
	addi	a5,a5,12
	.loc 6 213 38
	lw	a5,0(a5)
	.loc 6 213 47
	slli	a4,a5,16
	.loc 6 213 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 213 36
	sw	a4,0(a5)
.LBB21:
	.loc 6 214 10
	sw	zero,-96(s0)
	.loc 6 214 2
	j	.L55
.L56:
	.loc 6 214 23 discriminator 3
	lw	a5,-96(s0)
	addi	a5,a5,1
	sw	a5,-96(s0)
.L55:
	.loc 6 214 15 discriminator 1
	lw	a4,-96(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L56
.LBE21:
	.loc 6 216 43
	lw	a5,-172(s0)
	addi	a5,a5,36
	.loc 6 216 38
	lw	a5,0(a5)
	.loc 6 216 47
	slli	a4,a5,16
	.loc 6 216 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 216 36
	sw	a4,0(a5)
.LBB22:
	.loc 6 217 10
	sw	zero,-100(s0)
	.loc 6 217 2
	j	.L57
.L58:
	.loc 6 217 23 discriminator 3
	lw	a5,-100(s0)
	addi	a5,a5,1
	sw	a5,-100(s0)
.L57:
	.loc 6 217 15 discriminator 1
	lw	a4,-100(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L58
.LBE22:
	.loc 6 219 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 219 36
	li	a4,-1419706368
	sw	a4,0(a5)
.LBB23:
	.loc 6 220 10
	sw	zero,-104(s0)
	.loc 6 220 2
	j	.L59
.L60:
	.loc 6 220 23 discriminator 3
	lw	a5,-104(s0)
	addi	a5,a5,1
	sw	a5,-104(s0)
.L59:
	.loc 6 220 15 discriminator 1
	lw	a4,-104(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L60
.LBE23:
	.loc 6 224 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 224 36
	li	a4,-1419771904
	sw	a4,0(a5)
.LBB24:
	.loc 6 225 10
	sw	zero,-108(s0)
	.loc 6 225 2
	j	.L61
.L62:
	.loc 6 225 23 discriminator 3
	lw	a5,-108(s0)
	addi	a5,a5,1
	sw	a5,-108(s0)
.L61:
	.loc 6 225 15 discriminator 1
	lw	a4,-108(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L62
.LBE24:
	.loc 6 227 8
	call	qsort
	sw	a0,-172(s0)
.LBB25:
	.loc 6 228 10
	sw	zero,-112(s0)
	.loc 6 228 2
	j	.L63
.L64:
	.loc 6 228 23 discriminator 3
	lw	a5,-112(s0)
	addi	a5,a5,1
	sw	a5,-112(s0)
.L63:
	.loc 6 228 15 discriminator 1
	lw	a4,-112(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L64
.LBE25:
	.loc 6 230 38
	lw	a5,-172(s0)
	lw	a5,0(a5)
	.loc 6 230 43
	slli	a4,a5,16
	.loc 6 230 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 230 36
	sw	a4,0(a5)
.LBB26:
	.loc 6 231 10
	sw	zero,-116(s0)
	.loc 6 231 2
	j	.L65
.L66:
	.loc 6 231 23 discriminator 3
	lw	a5,-116(s0)
	addi	a5,a5,1
	sw	a5,-116(s0)
.L65:
	.loc 6 231 15 discriminator 1
	lw	a4,-116(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L66
.LBE26:
	.loc 6 233 43
	lw	a5,-172(s0)
	addi	a5,a5,4
	.loc 6 233 38
	lw	a5,0(a5)
	.loc 6 233 47
	slli	a4,a5,16
	.loc 6 233 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 233 36
	sw	a4,0(a5)
.LBB27:
	.loc 6 234 10
	sw	zero,-120(s0)
	.loc 6 234 2
	j	.L67
.L68:
	.loc 6 234 23 discriminator 3
	lw	a5,-120(s0)
	addi	a5,a5,1
	sw	a5,-120(s0)
.L67:
	.loc 6 234 15 discriminator 1
	lw	a4,-120(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L68
.LBE27:
	.loc 6 236 43
	lw	a5,-172(s0)
	addi	a5,a5,8
	.loc 6 236 38
	lw	a5,0(a5)
	.loc 6 236 47
	slli	a4,a5,16
	.loc 6 236 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 236 36
	sw	a4,0(a5)
.LBB28:
	.loc 6 237 10
	sw	zero,-124(s0)
	.loc 6 237 2
	j	.L69
.L70:
	.loc 6 237 23 discriminator 3
	lw	a5,-124(s0)
	addi	a5,a5,1
	sw	a5,-124(s0)
.L69:
	.loc 6 237 15 discriminator 1
	lw	a4,-124(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L70
.LBE28:
	.loc 6 239 43
	lw	a5,-172(s0)
	addi	a5,a5,12
	.loc 6 239 38
	lw	a5,0(a5)
	.loc 6 239 47
	slli	a4,a5,16
	.loc 6 239 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 239 36
	sw	a4,0(a5)
.LBB29:
	.loc 6 240 10
	sw	zero,-128(s0)
	.loc 6 240 2
	j	.L71
.L72:
	.loc 6 240 23 discriminator 3
	lw	a5,-128(s0)
	addi	a5,a5,1
	sw	a5,-128(s0)
.L71:
	.loc 6 240 15 discriminator 1
	lw	a4,-128(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L72
.LBE29:
	.loc 6 242 43
	lw	a5,-172(s0)
	addi	a5,a5,16
	.loc 6 242 38
	lw	a5,0(a5)
	.loc 6 242 47
	slli	a4,a5,16
	.loc 6 242 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 242 36
	sw	a4,0(a5)
.LBB30:
	.loc 6 243 10
	sw	zero,-132(s0)
	.loc 6 243 2
	j	.L73
.L74:
	.loc 6 243 23 discriminator 3
	lw	a5,-132(s0)
	addi	a5,a5,1
	sw	a5,-132(s0)
.L73:
	.loc 6 243 15 discriminator 1
	lw	a4,-132(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L74
.LBE30:
	.loc 6 245 43
	lw	a5,-172(s0)
	addi	a5,a5,20
	.loc 6 245 38
	lw	a5,0(a5)
	.loc 6 245 47
	slli	a4,a5,16
	.loc 6 245 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 245 36
	sw	a4,0(a5)
.LBB31:
	.loc 6 246 10
	sw	zero,-136(s0)
	.loc 6 246 2
	j	.L75
.L76:
	.loc 6 246 23 discriminator 3
	lw	a5,-136(s0)
	addi	a5,a5,1
	sw	a5,-136(s0)
.L75:
	.loc 6 246 15 discriminator 1
	lw	a4,-136(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L76
.LBE31:
	.loc 6 248 43
	lw	a5,-172(s0)
	addi	a5,a5,24
	.loc 6 248 38
	lw	a5,0(a5)
	.loc 6 248 47
	slli	a4,a5,16
	.loc 6 248 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 248 36
	sw	a4,0(a5)
.LBB32:
	.loc 6 249 10
	sw	zero,-140(s0)
	.loc 6 249 2
	j	.L77
.L78:
	.loc 6 249 23 discriminator 3
	lw	a5,-140(s0)
	addi	a5,a5,1
	sw	a5,-140(s0)
.L77:
	.loc 6 249 15 discriminator 1
	lw	a4,-140(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L78
.LBE32:
	.loc 6 251 43
	lw	a5,-172(s0)
	addi	a5,a5,28
	.loc 6 251 38
	lw	a5,0(a5)
	.loc 6 251 47
	slli	a4,a5,16
	.loc 6 251 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 251 36
	sw	a4,0(a5)
.LBB33:
	.loc 6 252 10
	sw	zero,-144(s0)
	.loc 6 252 2
	j	.L79
.L80:
	.loc 6 252 23 discriminator 3
	lw	a5,-144(s0)
	addi	a5,a5,1
	sw	a5,-144(s0)
.L79:
	.loc 6 252 15 discriminator 1
	lw	a4,-144(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L80
.LBE33:
	.loc 6 254 43
	lw	a5,-172(s0)
	addi	a5,a5,32
	.loc 6 254 38
	lw	a5,0(a5)
	.loc 6 254 47
	slli	a4,a5,16
	.loc 6 254 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 254 36
	sw	a4,0(a5)
.LBB34:
	.loc 6 255 10
	sw	zero,-148(s0)
	.loc 6 255 2
	j	.L81
.L82:
	.loc 6 255 23 discriminator 3
	lw	a5,-148(s0)
	addi	a5,a5,1
	sw	a5,-148(s0)
.L81:
	.loc 6 255 15 discriminator 1
	lw	a4,-148(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L82
.LBE34:
	.loc 6 257 43
	lw	a5,-172(s0)
	addi	a5,a5,36
	.loc 6 257 38
	lw	a5,0(a5)
	.loc 6 257 47
	slli	a4,a5,16
	.loc 6 257 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 257 36
	sw	a4,0(a5)
.LBB35:
	.loc 6 258 10
	sw	zero,-152(s0)
	.loc 6 258 2
	j	.L83
.L84:
	.loc 6 258 23 discriminator 3
	lw	a5,-152(s0)
	addi	a5,a5,1
	sw	a5,-152(s0)
.L83:
	.loc 6 258 15 discriminator 1
	lw	a4,-152(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L84
.LBE35:
	.loc 6 260 38
	lw	a5,-172(s0)
	lw	a5,0(a5)
	.loc 6 260 43
	slli	a4,a5,16
	.loc 6 260 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 260 36
	sw	a4,0(a5)
.LBB36:
	.loc 6 261 10
	sw	zero,-156(s0)
	.loc 6 261 2
	j	.L85
.L86:
	.loc 6 261 23 discriminator 3
	lw	a5,-156(s0)
	addi	a5,a5,1
	sw	a5,-156(s0)
.L85:
	.loc 6 261 15 discriminator 1
	lw	a4,-156(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L86
.LBE36:
	.loc 6 263 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 263 36
	li	a4,-1419706368
	sw	a4,0(a5)
.LBB37:
	.loc 6 264 10
	sw	zero,-160(s0)
	.loc 6 264 2
	j	.L87
.L88:
	.loc 6 264 23 discriminator 3
	lw	a5,-160(s0)
	addi	a5,a5,1
	sw	a5,-160(s0)
.L87:
	.loc 6 264 15 discriminator 1
	lw	a4,-160(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L88
.LBE37:
	.loc 6 266 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 266 36
	li	a4,-1419706368
	sw	a4,0(a5)
.LBB38:
	.loc 6 267 10
	sw	zero,-164(s0)
	.loc 6 267 2
	j	.L89
.L90:
	.loc 6 267 23 discriminator 3
	lw	a5,-164(s0)
	addi	a5,a5,1
	sw	a5,-164(s0)
.L89:
	.loc 6 267 15 discriminator 1
	lw	a4,-164(s0)
	li	a5,49152
	addi	a5,a5,847
	ble	a4,a5,.L90
.LBE38:
	.loc 6 271 1
	nop
	nop
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	main, .-main
.Letext0:
	.file 7 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5d3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0xe
	.4byte	.LASF23
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1d
	.4byte	0x88
	.4byte	0x88
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	0x6a
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1c
	.4byte	0x88
	.4byte	0x9d
	.byte	0x6
	.byte	0
	.byte	0x10
	.string	"fir"
	.byte	0x6
	.byte	0x1b
	.byte	0xd
	.4byte	0x88
	.4byte	0xaf
	.byte	0x6
	.byte	0
	.byte	0x11
	.4byte	.LASF24
	.byte	0x6
	.byte	0x30
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x4bc
	.byte	0x9
	.4byte	.LASF13
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x2
	.string	"tmp"
	.byte	0x98
	.byte	0x7
	.4byte	0x88
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x1
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xfe
	.byte	0x2
	.string	"i"
	.byte	0x9b
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x118
	.byte	0x2
	.string	"i"
	.byte	0x9e
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x132
	.byte	0x2
	.string	"i"
	.byte	0xa1
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x14c
	.byte	0x2
	.string	"i"
	.byte	0xa4
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x1
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x166
	.byte	0x2
	.string	"i"
	.byte	0xa7
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x180
	.byte	0x2
	.string	"i"
	.byte	0xaa
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x1
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x19a
	.byte	0x2
	.string	"i"
	.byte	0xad
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x1
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1b4
	.byte	0x2
	.string	"i"
	.byte	0xb0
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x1
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x1ce
	.byte	0x2
	.string	"i"
	.byte	0xb3
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1e8
	.byte	0x2
	.string	"i"
	.byte	0xb6
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x202
	.byte	0x2
	.string	"i"
	.byte	0xb9
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0x1
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x21c
	.byte	0x2
	.string	"i"
	.byte	0xbc
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x1
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x237
	.byte	0x2
	.string	"i"
	.byte	0xbf
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x252
	.byte	0x2
	.string	"i"
	.byte	0xc2
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x26d
	.byte	0x2
	.string	"i"
	.byte	0xc7
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x288
	.byte	0x2
	.string	"i"
	.byte	0xca
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x2a3
	.byte	0x2
	.string	"i"
	.byte	0xcd
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x2be
	.byte	0x2
	.string	"i"
	.byte	0xd0
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x2d9
	.byte	0x2
	.string	"i"
	.byte	0xd3
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x2f4
	.byte	0x2
	.string	"i"
	.byte	0xd6
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x30f
	.byte	0x2
	.string	"i"
	.byte	0xd9
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x32a
	.byte	0x2
	.string	"i"
	.byte	0xdc
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x345
	.byte	0x2
	.string	"i"
	.byte	0xe1
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x360
	.byte	0x2
	.string	"i"
	.byte	0xe4
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x37b
	.byte	0x2
	.string	"i"
	.byte	0xe7
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x396
	.byte	0x2
	.string	"i"
	.byte	0xea
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x3b1
	.byte	0x2
	.string	"i"
	.byte	0xed
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x3cc
	.byte	0x2
	.string	"i"
	.byte	0xf0
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x3e7
	.byte	0x2
	.string	"i"
	.byte	0xf3
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x402
	.byte	0x2
	.string	"i"
	.byte	0xf6
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x41d
	.byte	0x2
	.string	"i"
	.byte	0xf9
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x438
	.byte	0x2
	.string	"i"
	.byte	0xfc
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x453
	.byte	0x2
	.string	"i"
	.byte	0xff
	.byte	0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x46e
	.byte	0x4
	.string	"i"
	.2byte	0x102
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0x489
	.byte	0x4
	.string	"i"
	.2byte	0x105
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x1
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x4a4
	.byte	0x4
	.string	"i"
	.2byte	0x108
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x12
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x4
	.string	"i"
	.2byte	0x10b
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e1
	.byte	0x13
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1d
	.byte	0x2d
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x14
	.4byte	.LASF25
	.byte	0x5
	.byte	0x16
	.byte	0x1c
	.4byte	0x71
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.byte	0x1
	.byte	0x9c
	.4byte	0x50b
	.byte	0x9
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0xf
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1a
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x52d
	.byte	0x5
	.string	"p"
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0x52d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x8
	.4byte	0x539
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x15
	.4byte	0x532
	.byte	0xb
	.4byte	.LASF16
	.byte	0x12
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.4byte	0x560
	.byte	0x5
	.string	"c"
	.byte	0x4
	.byte	0x12
	.byte	0x13
	.4byte	0x532
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x16
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x325
	.byte	0x14
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.byte	0x1
	.byte	0x9c
	.4byte	0x586
	.byte	0x17
	.string	"v"
	.byte	0x3
	.2byte	0x325
	.byte	0x38
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0x20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b6
	.byte	0x5
	.string	"v"
	.byte	0x2
	.byte	0x20
	.byte	0x33
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"a"
	.byte	0x2
	.byte	0x20
	.byte	0x44
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF21
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0x21
	.byte	0xa
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x14
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x4
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x25
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"flush_cpu_dcache"
.LASF19:
	.string	"csr_write_simple"
.LASF12:
	.string	"matmul"
.LASF11:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF16:
	.string	"putchar"
.LASF22:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF24:
	.string	"main"
.LASF25:
	.string	"irq_getmask"
.LASF17:
	.string	"irq_setmask"
.LASF10:
	.string	"unsigned int"
.LASF18:
	.string	"user_irq_0_ev_enable_write"
.LASF9:
	.string	"long long unsigned int"
.LASF21:
	.string	"flush_cpu_icache"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"mask"
.LASF15:
	.string	"print"
.LASF3:
	.string	"short int"
.LASF23:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/SoCLab/course-lab_6/lab-wlos_baseline/testbench/lab6_uart"
.LASF0:
	.string	"ps_main_v1.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
