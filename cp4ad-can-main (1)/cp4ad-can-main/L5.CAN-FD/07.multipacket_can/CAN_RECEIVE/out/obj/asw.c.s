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
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
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
/* stack size = 12 */
.L__stack_usage = 12
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ldi r24,lo8(8)
	movw r30,r16
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	call CAN_checkMsg
	cpi r24,lo8(1)
	brne .L4
	movw r24,r16
	call CAN_readMsg
	tst r24
	breq .L4
	ldd r24,Y+2
	ldd r25,Y+3
	ldd r26,Y+4
	ldd r27,Y+5
	cpi r24,64
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L4
	ldd r22,Y+1
	ldi r23,0
	ldd r24,Y+6
	ldd r25,Y+7
	call CAN_receive_handler
	ldd r24,Y+6
	ldd r25,Y+7
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
.L4:
	call TerminateTask
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
	ret
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
