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
	.string	"Frame ID: 0x%03X "
.LC2:
	.string	"Length: %d \nReceive_Message \n"
.LC3:
	.string	"%c"
.LC4:
	.string	"\n"
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
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ldi r24,lo8(7)
	movw r30,r16
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	call CAN_checkMsg
	tst r24
	breq .L4
	movw r24,r16
	call CAN_readMsg
	tst r24
	breq .L4
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+5
	push r24
	ldd r24,Y+4
	push r24
	ldd r24,Y+3
	push r24
	ldd r24,Y+2
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+1
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
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
	ldi r24,lo8(.LC3)
	mov r14,r24
	ldi r24,hi8(.LC3)
	mov r15,r24
.L6:
	ldd r24,Y+1
	cp r24,r16
	cpc __zero_reg__,r17
	breq .+2
	brge .L7
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+6
	ldd r25,Y+7
	call free
	pop __tmp_reg__
	pop __tmp_reg__
.L4:
	call TerminateTask
/* epilogue start */
	adiw r28,7
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
.L7:
	ldd r30,Y+6
	ldd r31,Y+7
	add r30,r16
	adc r31,r17
	ld r24,Z
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
	rjmp .L6
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
