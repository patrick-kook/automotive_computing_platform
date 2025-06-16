	.file	"WInterrupts.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.nothing,"ax",@progbits
	.type	nothing, @function
nothing:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	nothing, .-nothing
	.section	.text.attachInterrupt,"ax",@progbits
.global	attachInterrupt
	.type	attachInterrupt, @function
attachInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(2)
	brsh .L2
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,r23
	st Z,r22
	cpi r24,lo8(1)
	breq .L5
	lds r24,105
	andi r24,lo8(-4)
	or r20,r24
	sts 105,r20
	sbi 0x1d,0
	ret
.L5:
	lds r24,105
	andi r24,lo8(-13)
	lsl r20
	rol r21
	lsl r20
	rol r21
	or r20,r24
	sts 105,r20
	sbi 0x1d,1
.L2:
/* epilogue start */
	ret
	.size	attachInterrupt, .-attachInterrupt
	.section	.text.detachInterrupt,"ax",@progbits
.global	detachInterrupt
	.type	detachInterrupt, @function
detachInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(2)
	brsh .L6
	mov r30,r24
	ldi r31,0
	cpi r24,lo8(1)
	breq .L9
	cbi 0x1d,0
.L10:
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	ldi r24,lo8(gs(nothing))
	ldi r25,hi8(gs(nothing))
	std Z+1,r25
	st Z,r24
.L6:
/* epilogue start */
	ret
.L9:
	cbi 0x1d,1
	rjmp .L10
	.size	detachInterrupt, .-detachInterrupt
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r30,intFunc
	lds r31,intFunc+1
	icall
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r30,intFunc+2
	lds r31,intFunc+2+1
	icall
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_2, .-__vector_2
	.section	.data.intFunc,"aw",@progbits
	.type	intFunc, @object
	.size	intFunc, 4
intFunc:
	.word	gs(nothing)
	.word	gs(nothing)
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
