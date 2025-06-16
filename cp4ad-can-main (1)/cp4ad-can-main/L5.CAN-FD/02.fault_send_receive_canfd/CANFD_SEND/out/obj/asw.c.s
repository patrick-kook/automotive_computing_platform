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
.LC1:
	.string	"--------------------------------------------------\n"
.LC2:
	.string	"Send Status: %d\n"
.LC3:
	.string	"Frame ID: 0x%03X "
.LC4:
	.string	"Length: %d \nSend_Message\n"
.LC5:
	.string	"0x%02x "
.LC6:
	.string	"\n"
	.section	.rodata
.LC0:
	.byte	23
	.byte	22
	.byte	18
	.byte	37
	.byte	35
	.byte	0
	.byte	68
	.byte	17
	.byte	1
	.byte	21
	.byte	68
	.byte	20
	.byte	0
	.byte	0
	.byte	69
	.byte	2
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	18
	.byte	18
	.byte	20
	.byte	37
	.byte	37
	.byte	19
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r14
	push r15
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
/* stack size = 38 */
.L__stack_usage = 38
	ldi r24,lo8(26)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	ldi r24,lo8(64)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+28,r24
	std Y+29,r25
	std Y+30,r26
	std Y+31,r27
	ldi r17,lo8(26)
	std Y+27,r17
	ldi r24,lo8(26)
	ldi r25,0
	call malloc
	std Y+33,r25
	std Y+32,r24
	movw r30,r28
	adiw r30,1
	movw r26,r24
	mov r24,r17
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r24,r28
	adiw r24,27
	call pad
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r20,Y+29
	ldd r21,Y+30
	ldd r22,Y+31
	ldd r23,Y+32
	ldd r24,Y+33
	call CAN_sendMsg
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+31
	push r24
	ldd r24,Y+30
	push r24
	ldd r24,Y+29
	push r24
	ldd r24,Y+28
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	push r17
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r17,0
	ldi r24,lo8(.LC5)
	mov r14,r24
	ldi r24,hi8(.LC5)
	mov r15,r24
.L3:
	ldd r24,Y+27
	cp r17,r24
	brlo .L4
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+32
	ldd r25,Y+33
	call free
	call TerminateTask
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	adiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L4:
	ldd r30,Y+32
	ldd r31,Y+33
	add r30,r17
	adc r31,__zero_reg__
	ld r24,Z
	push __zero_reg__
	push r24
	push r15
	push r14
	call printfSerial
	subi r17,lo8(-(1))
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L3
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
