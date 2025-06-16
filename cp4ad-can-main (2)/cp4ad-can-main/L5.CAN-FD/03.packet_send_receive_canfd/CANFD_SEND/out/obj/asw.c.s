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
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 30 */
.L__stack_usage = 30
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
	ldi r16,lo8(26)
	ldi r17,0
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	ldi r20,lo8(80)
	ldi r22,lo8(64)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call send_simple_tlv
	call TerminateTask
/* epilogue start */
	adiw r28,26
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
.global __do_copy_data
