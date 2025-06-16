	.file	"HardwareSerial0.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.__vector_18,"ax",@progbits
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r30,Serial+16
	lds r31,Serial+16+1
	ld r24,Z
	lds r30,Serial+22
	lds r31,Serial+22+1
	sbrc r24,2
	rjmp .L2
	ld r25,Z
	lds r24,Serial+25
	subi r24,lo8(-(1))
	andi r24,lo8(63)
	lds r18,Serial+26
	cp r24,r18
	breq .L1
	lds r30,Serial+25
	ldi r31,0
	subi r30,lo8(-(Serial))
	sbci r31,hi8(-(Serial))
	std Z+29,r25
	sts Serial+25,r24
.L1:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L2:
	ld r24,Z
	rjmp .L1
	.size	__vector_18, .-__vector_18
	.section	.text.__vector_19,"ax",@progbits
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
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
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial17_tx_udr_empty_irqEv
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
	.size	__vector_19, .-__vector_19
	.section	.text._Z17Serial0_availablev,"ax",@progbits
.global	_Z17Serial0_availablev
	.type	_Z17Serial0_availablev, @function
_Z17Serial0_availablev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial9availableEv
	ldi r18,lo8(1)
	or r24,r25
	brne .L6
	ldi r18,0
.L6:
	mov r24,r18
/* epilogue start */
	ret
	.size	_Z17Serial0_availablev, .-_Z17Serial0_availablev
	.section	.text.startup._GLOBAL__sub_I___vector_18,"ax",@progbits
	.type	_GLOBAL__sub_I___vector_18, @function
_GLOBAL__sub_I___vector_18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(Serial)
	ldi r31,hi8(Serial)
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	ldi r26,0
	ldi r27,0
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	ldi r24,lo8(-59)
	ldi r25,0
	std Z+13,r25
	std Z+12,r24
	ldi r24,lo8(-60)
	ldi r25,0
	std Z+15,r25
	std Z+14,r24
	ldi r24,lo8(-64)
	ldi r25,0
	std Z+17,r25
	std Z+16,r24
	ldi r24,lo8(-63)
	ldi r25,0
	std Z+19,r25
	std Z+18,r24
	ldi r24,lo8(-62)
	ldi r25,0
	std Z+21,r25
	std Z+20,r24
	ldi r24,lo8(-58)
	ldi r25,0
	std Z+23,r25
	std Z+22,r24
	std Z+25,__zero_reg__
	std Z+26,__zero_reg__
	std Z+27,__zero_reg__
	std Z+28,__zero_reg__
/* epilogue start */
	ret
	.size	_GLOBAL__sub_I___vector_18, .-_GLOBAL__sub_I___vector_18
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I___vector_18)
.global	Serial
	.section	.bss.Serial,"aw",@nobits
	.type	Serial, @object
	.size	Serial, 157
Serial:
	.zero	157
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
