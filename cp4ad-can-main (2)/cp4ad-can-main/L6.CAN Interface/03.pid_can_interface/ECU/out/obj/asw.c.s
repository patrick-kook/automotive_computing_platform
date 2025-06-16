	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	jmp IncrementCounter
	.size	TimerISR, .-TimerISR
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC0:
	.string	"--------------------------------------------------\n"
.LC1:
	.string	"Send Status(1 or 0) : %d\n"
.LC2:
	.string	"Send data ID : 0x%02x "
.LC3:
	.string	"Length : %d\n"
.LC4:
	.string	"\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
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
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 24 */
.L__stack_usage = 24
	ldi r24,lo8(7)
	movw r30,r28
	adiw r30,1
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	lds r24,isFirst
	tst r24
	breq .L3
	lds r24,throttle_position
	call control_rpm
	sts current_rpm+1,r25
	sts current_rpm,r24
	sts isFirst,__zero_reg__
.L3:
	lds r22,target_rpm
	lds r23,target_rpm+1
	ldi r24,lo8(rpm_pid)
	mov r8,r24
	ldi r24,hi8(rpm_pid)
	mov r9,r24
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	movw r12,r10
	movw r16,r12
	movw r14,r10
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(62)
	lds r24,current_rpm
	lds r25,current_rpm+1
	call pid_controller
	sts throttle_position,r24
	call control_rpm
	sts current_rpm,r24
	sts current_rpm+1,r25
	lds r18,throttle_position
	std Y+8,r18
	std Y+9,r25
	std Y+10,r24
	lds r24,target_rpm
	lds r25,target_rpm+1
	std Y+11,r25
	std Y+12,r24
	movw r24,r28
	adiw r24,8
	std Y+7,r25
	std Y+6,r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(35)
	mov r19,r24
	std Y+2,r24
	ldi r24,lo8(1)
	std Y+3,r24
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	ldi r18,lo8(5)
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldd r23,Y+6
	ldd r24,Y+7
	call CAN_sendMsg
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(1)
	push r24
	ldi r24,lo8(35)
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	ldi r24,lo8(5)
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	lds r24,counter
	lds r25,counter+1
	adiw r24,1
	sts counter+1,r25
	sts counter,r24
	call TerminateTask
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* epilogue start */
	adiw r28,12
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
	ret
	.size	FuncTask1, .-FuncTask1
.global	isFirst
	.section	.data.isFirst,"aw",@progbits
	.type	isFirst, @object
	.size	isFirst, 1
isFirst:
	.byte	1
	.comm	current_rpm,2,1
.global	throttle_position
	.section	.bss.throttle_position,"aw",@nobits
	.type	throttle_position, @object
	.size	throttle_position, 1
throttle_position:
	.zero	1
.global	counter
	.section	.bss.counter,"aw",@nobits
	.type	counter, @object
	.size	counter, 2
counter:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
