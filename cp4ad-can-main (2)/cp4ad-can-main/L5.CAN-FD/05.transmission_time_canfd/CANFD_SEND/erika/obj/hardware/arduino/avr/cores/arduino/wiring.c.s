	.file	"wiring.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r26
	push r27
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	lds r24,timer0_millis
	lds r25,timer0_millis+1
	lds r26,timer0_millis+2
	lds r27,timer0_millis+3
	lds r19,timer0_fract
	ldi r18,lo8(3)
	add r18,r19
	cpi r18,lo8(125)
	brsh .L2
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L3:
	sts timer0_fract,r18
	sts timer0_millis,r24
	sts timer0_millis+1,r25
	sts timer0_millis+2,r26
	sts timer0_millis+3,r27
	lds r24,timer0_overflow_count
	lds r25,timer0_overflow_count+1
	lds r26,timer0_overflow_count+2
	lds r27,timer0_overflow_count+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts timer0_overflow_count,r24
	sts timer0_overflow_count+1,r25
	sts timer0_overflow_count+2,r26
	sts timer0_overflow_count+3,r27
/* epilogue start */
	pop r27
	pop r26
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L2:
	ldi r18,lo8(-122)
	add r18,r19
	adiw r24,2
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	rjmp .L3
	.size	__vector_16, .-__vector_16
	.section	.text.millis,"ax",@progbits
.global	millis
	.type	millis, @function
millis:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r18,__SREG__
/* #APP */
 ;  72 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r22,timer0_millis
	lds r23,timer0_millis+1
	lds r24,timer0_millis+2
	lds r25,timer0_millis+3
	out __SREG__,r18
/* epilogue start */
	ret
	.size	millis, .-millis
	.section	.text.micros,"ax",@progbits
.global	micros
	.type	micros, @function
micros:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r19,__SREG__
/* #APP */
 ;  83 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,timer0_overflow_count+1
	lds r26,timer0_overflow_count+2
	lds r27,timer0_overflow_count+3
	in r18,0x26
	sbis 0x15,0
	rjmp .L6
	cpi r18,lo8(-1)
	breq .L6
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L6:
	out __SREG__,r19
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	movw r22,r24
	movw r24,r26
	add r22,r18
	adc r23,__zero_reg__
	adc r24,__zero_reg__
	adc r25,__zero_reg__
	ldi r20,2
	1:
	lsl r22
	rol r23
	rol r24
	rol r25
	dec r20
	brne 1b
/* epilogue start */
	ret
	.size	micros, .-micros
	.section	.text.delay,"ax",@progbits
.global	delay
	.type	delay, @function
delay:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r22
	movw r14,r24
	call micros
	movw r8,r22
	movw r10,r24
.L14:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L13
	call yield
.L15:
	call micros
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,-24
	sbci r23,3
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L14
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,-24
	add r8,r24
	ldi r24,3
	adc r9,r24
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L15
.L13:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	delay, .-delay
	.section	.text.delayMicroseconds,"ax",@progbits
.global	delayMicroseconds
	.type	delayMicroseconds, @function
delayMicroseconds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L22
	lsl r24
	rol r25
	lsl r24
	rol r25
	sbiw r24,5
/* #APP */
 ;  234 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring.c" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.L22:
/* epilogue start */
	ret
	.size	delayMicroseconds, .-delayMicroseconds
	.section	.text.init,"ax",@progbits
.global	init
	.type	init, @function
init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  245 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	in r24,0x24
	ori r24,lo8(2)
	out 0x24,r24
	in r24,0x24
	ori r24,lo8(1)
	out 0x24,r24
	in r24,0x25
	ori r24,lo8(2)
	out 0x25,r24
	in r24,0x25
	ori r24,lo8(1)
	out 0x25,r24
	ldi r30,lo8(110)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-127)
	ldi r31,0
	st Z,__zero_reg__
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-79)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	sts 193,__zero_reg__
/* epilogue start */
	ret
	.size	init, .-init
	.section	.bss.timer0_fract,"aw",@nobits
	.type	timer0_fract, @object
	.size	timer0_fract, 1
timer0_fract:
	.zero	1
.global	timer0_millis
	.section	.bss.timer0_millis,"aw",@nobits
	.type	timer0_millis, @object
	.size	timer0_millis, 4
timer0_millis:
	.zero	4
.global	timer0_overflow_count
	.section	.bss.timer0_overflow_count,"aw",@nobits
	.type	timer0_overflow_count, @object
	.size	timer0_overflow_count, 4
timer0_overflow_count:
	.zero	4
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
