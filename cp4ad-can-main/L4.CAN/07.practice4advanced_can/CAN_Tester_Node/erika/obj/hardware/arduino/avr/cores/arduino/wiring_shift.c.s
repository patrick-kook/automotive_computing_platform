	.file	"wiring_shift.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.shiftIn,"ax",@progbits
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r15,r24
	mov r29,r22
	mov r14,r20
	ldi r17,0
	ldi r16,0
	ldi r28,0
	ldi r24,lo8(7)
	mov r12,r24
	mov r13,__zero_reg__
.L4:
	ldi r22,lo8(1)
	mov r24,r29
	call digitalWrite
	mov r24,r15
	cpse r14,__zero_reg__
	rjmp .L2
	call digitalRead
	mov r0,r16
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
.L6:
	or r28,r24
	ldi r22,0
	mov r24,r29
	call digitalWrite
	subi r16,-1
	sbci r17,-1
	cpi r16,8
	cpc r17,__zero_reg__
	brne .L4
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L2:
	call digitalRead
	movw r18,r12
	sub r18,r16
	sbc r19,r17
	rjmp 2f
	1:
	lsl r24
	2:
	dec r18
	brpl 1b
	rjmp .L6
	.size	shiftIn, .-shiftIn
	.section	.text.shiftOut,"ax",@progbits
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r16,r24
	mov r17,r22
	mov r15,r20
	mov r28,r18
	ldi r29,lo8(8)
.L10:
	mov r22,r28
	cpse r15,__zero_reg__
	rjmp .L8
	andi r22,lo8(1)
	mov r24,r16
	call digitalWrite
	lsr r28
.L9:
	ldi r22,lo8(1)
	mov r24,r17
	call digitalWrite
	ldi r22,0
	mov r24,r17
	call digitalWrite
	subi r29,lo8(-(-1))
	brne .L10
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L8:
	rol r22
	clr r22
	rol r22
	mov r24,r16
	call digitalWrite
	lsl r28
	rjmp .L9
	.size	shiftOut, .-shiftOut
	.ident	"GCC: (GNU) 7.3.0"
