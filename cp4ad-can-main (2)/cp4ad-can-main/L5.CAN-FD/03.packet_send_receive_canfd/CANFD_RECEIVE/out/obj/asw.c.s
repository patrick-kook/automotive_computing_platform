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
	.string	"zero_count : %d\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
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
/* stack size = 11 */
.L__stack_usage = 11
	call CAN_checkMsg
	tst r24
	breq .L4
	movw r24,r28
	adiw r24,1
	call CAN_readMsg
	tst r24
	breq .L4
	movw r24,r28
	adiw r24,1
	call handle_simple_tlv
	ldd r18,Y+1
	ldi r19,0
	ldd r24,Y+6
	ldd r25,Y+7
	movw r30,r24
	adiw r30,2
	ldi r17,0
	ldi r16,0
.L6:
	movw r20,r30
	sub r20,r24
	sbc r21,r25
	cp r20,r18
	cpc r21,r19
	brlt .L8
	call free
	push r17
	push r16
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
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
	ret
.L8:
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L6
	subi r16,-1
	sbci r17,-1
	rjmp .L6
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
