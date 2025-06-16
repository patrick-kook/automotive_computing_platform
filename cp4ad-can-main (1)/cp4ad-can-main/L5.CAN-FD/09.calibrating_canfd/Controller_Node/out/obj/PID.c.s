	.file	"PID.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__subsf3
.global	__addsf3
.global	__mulsf3
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 24 */
.L__stack_usage = 24
	movw r4,r22
	movw r6,r24
	movw r24,r20
	movw r22,r18
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
	std Y+5,r10
	std Y+6,r11
	std Y+7,r12
	std Y+8,r13
	ldd r16,Y+31
	ldd r17,Y+32
	movw r20,r6
	movw r18,r4
	call __subsf3
	movw r12,r22
	movw r14,r24
	movw r30,r16
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	call __addsf3
	movw r8,r22
	movw r10,r24
	movw r30,r16
	st Z,r8
	std Z+1,r9
	std Z+2,r10
	std Z+3,r11
	ldd r18,Z+4
	ldd r19,Z+5
	ldd r20,Z+6
	ldd r21,Z+7
	movw r24,r14
	movw r22,r12
	call __subsf3
	movw r4,r22
	movw r6,r24
	movw r30,r16
	std Z+4,r12
	std Z+5,r13
	std Z+6,r14
	std Z+7,r15
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	movw r24,r14
	movw r22,r12
	call __mulsf3
	movw r12,r22
	movw r14,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	movw r24,r10
	movw r22,r8
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __addsf3
	movw r12,r22
	movw r14,r24
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r20,Y+29
	ldd r21,Y+30
	movw r24,r6
	movw r22,r4
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __addsf3
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	.size	pid_controller, .-pid_controller
.global	rpm_pid
	.section	.bss.rpm_pid,"aw",@nobits
	.type	rpm_pid, @object
	.size	rpm_pid, 8
rpm_pid:
	.zero	8
.global	temp_pid
	.section	.bss.temp_pid,"aw",@nobits
	.type	temp_pid, @object
	.size	temp_pid, 8
temp_pid:
	.zero	8
.global	yaw_pid
	.section	.bss.yaw_pid,"aw",@nobits
	.type	yaw_pid, @object
	.size	yaw_pid, 8
yaw_pid:
	.zero	8
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
