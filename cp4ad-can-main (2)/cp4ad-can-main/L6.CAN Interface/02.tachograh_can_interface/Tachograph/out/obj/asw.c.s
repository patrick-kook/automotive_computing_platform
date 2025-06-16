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
	.string	"Receive Status(1 or 0) : %d\n"
.LC2:
	.string	"Receive data ID : 0x%02x "
.LC3:
	.string	"Length : %d\n"
.LC4:
	.string	"Throttle Percent  : %lu"
.LC5:
	.string	".%02d%% "
.LC6:
	.string	"Meter Total  : %lu"
.LC7:
	.string	".%02lu Km"
.LC8:
	.string	"\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
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
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 17 */
.L__stack_usage = 17
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
	cpi r24,lo8(1)
	breq .+2
	rjmp .L3
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	movw r24,r16
	call CAN_readMsg
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
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
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+1
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldd r30,Y+6
	ldd r31,Y+7
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	call __bswapsi2
	movw r16,r22
	movw r18,r24
	ldd r22,Z+4
	ldd r23,Z+5
	ldd r24,Z+6
	ldd r25,Z+7
	call __bswapsi2
	movw r12,r22
	movw r14,r24
	movw r24,r18
	movw r22,r16
	ldi r18,lo8(100)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	mov r17,r22
	mov r16,r23
	mov r11,r24
	mov r10,r25
	push r21
	push r20
	push r19
	push r18
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	push r10
	push r11
	push r16
	push r17
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	movw r24,r14
	movw r22,r12
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	mov r17,r22
	mov r16,r23
	mov r15,r24
	mov r14,r25
	push r21
	push r20
	push r19
	push r18
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	push r14
	push r15
	push r16
	push r17
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.L3:
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
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
