	.file	"PID.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__floatsisf
.global	__mulsf3
.global	__floatunsisf
.global	__addsf3
.global	__gtsf2
.global	__ltsf2
.global	__fixunssfsi
	.section	.text.pid_controller,"ax",@progbits
.global	pid_controller
	.type	pid_controller, @function
pid_controller:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 20 */
.L__stack_usage = 20
	movw r4,r18
	movw r6,r20
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
	movw r30,r8
	sub r22,r24
	sbc r23,r25
	ld r16,Z
	ldd r17,Z+1
	add r16,r22
	adc r17,r23
	std Z+1,r17
	st Z,r16
	ldd r24,Z+2
	ldd r25,Z+3
	movw r14,r22
	sub r14,r24
	sbc r15,r25
	std Z+3,r23
	std Z+2,r22
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	movw r20,r6
	movw r18,r4
	call __mulsf3
	movw r4,r22
	movw r6,r24
	movw r22,r16
	ldi r25,0
	ldi r24,0
	call __floatunsisf
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r6
	movw r22,r4
	call __addsf3
	movw r4,r22
	movw r6,r24
	movw r22,r14
	lsl r15
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	movw r20,r12
	movw r18,r10
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r6
	movw r22,r4
	call __addsf3
	movw r12,r22
	movw r14,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	call __gtsf2
	cp __zero_reg__,r24
	brlt .L4
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L2
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L2:
	movw r24,r14
	movw r22,r12
	call __fixunssfsi
	mov r24,r22
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L4:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	ldi r24,lo8(-56)
	mov r14,r24
	ldi r24,lo8(66)
	mov r15,r24
	rjmp .L2
	.size	pid_controller, .-pid_controller
.global	rpm_pid
	.section	.bss.rpm_pid,"aw",@nobits
	.type	rpm_pid, @object
	.size	rpm_pid, 4
rpm_pid:
	.zero	4
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
