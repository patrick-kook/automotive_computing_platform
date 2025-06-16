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
	.string	"Receive data ID : 0x%03x \n"
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
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r14,r22
	ldi r24,lo8(7)
	movw r30,r22
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	lds r16,error
	lds r17,error+1
	call CAN_checkMsg
	cpi r24,lo8(1)
	brne .L3
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	movw r24,r14
	call CAN_readMsg
	ldd r24,Y+1
	ldi r25,0
	ldd r18,Y+6
	ldd r19,Y+7
	pop __tmp_reg__
	pop __tmp_reg__
	movw r30,r18
.L4:
	movw r20,r30
	sub r20,r18
	sbc r21,r19
	cp r20,r24
	cpc r21,r25
	brlt .L5
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
	movw r24,r16
	call printErrorFlags
	ldd r24,Y+6
	ldd r25,Y+7
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	ret
.L5:
	ld r20,Z+
	mov r22,r20
	mov r23,r16
	movw r16,r22
	rjmp .L4
	.size	FuncTask1, .-FuncTask1
.global	error
	.section	.bss.error,"aw",@nobits
	.type	error, @object
	.size	error, 2
error:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
