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
	.string	"Send Status(0 or 1): %d\n"
.LC2:
	.string	"Frame ID: 0x%03x Length: %d \nRemoteFrame Send \n"
.LC3:
	.string	"\n"
.LC4:
	.string	"Respond data ID : 0x%03x "
.LC5:
	.string	"Length : %d\n"
.LC6:
	.string	"%d "
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 20 */
.L__stack_usage = 20
	ldi r25,lo8(7)
	mov r15,r25
	movw r30,r28
	adiw r30,8
	movw r26,r30
	mov r18,r15
	0:
	st X+,__zero_reg__
	dec r18
	brne 0b
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(-1)
	mov r19,r24
	std Y+9,r24
	std Y+10,__zero_reg__
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	ldd r18,Y+8
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldd r23,Y+13
	ldd r24,Y+14
	call sendRemote
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(-1)
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r26,r16
	0:
	st X+,__zero_reg__
	dec r15
	brne 0b
	call CAN_checkMsg
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	cpi r24,lo8(1)
	brne .L3
	movw r24,r16
	call CAN_readMsg
	ldd r24,Y+5
	push r24
	ldd r24,Y+4
	push r24
	ldd r24,Y+3
	push r24
	ldd r24,Y+2
	push r24
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+1
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r17,0
	ldi r16,0
	ldi r24,lo8(.LC6)
	mov r14,r24
	ldi r24,hi8(.LC6)
	mov r15,r24
.L4:
	ldd r24,Y+6
	ldd r25,Y+7
	ldd r18,Y+1
	cp r18,r16
	cpc __zero_reg__,r17
	breq .+2
	brge .L5
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
.L3:
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	call TerminateTask
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	adiw r28,14
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
	ret
.L5:
	add r24,r16
	adc r25,r17
	movw r26,r24
	ld r24,X
	push __zero_reg__
	push r24
	push r15
	push r14
	call printfSerial
	subi r16,-1
	sbci r17,-1
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L4
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
