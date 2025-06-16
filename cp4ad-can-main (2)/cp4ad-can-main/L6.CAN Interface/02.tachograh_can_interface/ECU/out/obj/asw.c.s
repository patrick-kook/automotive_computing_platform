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
	sbiw r28,15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 15 */
/* stack size = 23 */
.L__stack_usage = 23
	lds r24,counter
	lds r25,counter+1
	ldi r22,lo8(20)
	ldi r23,0
	call __udivmodhi4
	call compute
	movw r12,r24
	lsl r25
	sbc r14,r14
	sbc r15,r15
	movw r24,r14
	movw r22,r12
	ldi r18,lo8(100)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	ldi r26,lo8(6)
	ldi r27,0
	call __muluhisi3
	lds r16,meter
	lds r17,meter+1
	lds r18,meter+2
	lds r19,meter+3
	add r16,r22
	adc r17,r23
	adc r18,r24
	adc r19,r25
	sts meter,r16
	sts meter+1,r17
	sts meter+2,r18
	sts meter+3,r19
	std Y+1,r15
	std Y+2,r14
	std Y+3,r13
	std Y+4,r12
	std Y+5,r19
	std Y+6,r18
	std Y+7,r17
	std Y+8,r16
	movw r24,r28
	adiw r24,1
	std Y+15,r25
	std Y+14,r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(35)
	mov r19,r24
	std Y+10,r24
	ldi r24,lo8(1)
	std Y+11,r24
	std Y+12,__zero_reg__
	std Y+13,__zero_reg__
	ldi r18,lo8(8)
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldd r23,Y+14
	ldd r24,Y+15
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
	ldi r24,lo8(8)
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
	adiw r28,15
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
	ret
	.size	FuncTask1, .-FuncTask1
.global	meter
	.section	.bss.meter,"aw",@nobits
	.type	meter, @object
	.size	meter, 4
meter:
	.zero	4
.global	counter
	.section	.bss.counter,"aw",@nobits
	.type	counter, @object
	.size	counter, 2
counter:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
