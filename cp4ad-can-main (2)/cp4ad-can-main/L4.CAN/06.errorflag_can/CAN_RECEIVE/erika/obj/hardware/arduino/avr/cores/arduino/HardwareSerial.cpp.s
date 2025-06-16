	.file	"HardwareSerial.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZN14HardwareSerial9availableEv,"ax",@progbits
.global	_ZN14HardwareSerial9availableEv
	.type	_ZN14HardwareSerial9availableEv, @function
_ZN14HardwareSerial9availableEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r25,Z+25
	ldd r18,Z+26
	mov r24,r25
	ldi r25,0
	subi r24,-64
	sbci r25,-1
	sub r24,r18
	sbc r25,__zero_reg__
	andi r24,63
	clr r25
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial9availableEv, .-_ZN14HardwareSerial9availableEv
	.section	.text._ZN14HardwareSerial4peekEv,"ax",@progbits
.global	_ZN14HardwareSerial4peekEv
	.type	_ZN14HardwareSerial4peekEv, @function
_ZN14HardwareSerial4peekEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r25,Z+25
	ldd r24,Z+26
	cp r25,r24
	breq .L4
	ldd r24,Z+26
	add r30,r24
	adc r31,__zero_reg__
	ldd r24,Z+29
	ldi r25,0
	ret
.L4:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4peekEv, .-_ZN14HardwareSerial4peekEv
	.section	.text._ZN14HardwareSerial4readEv,"ax",@progbits
.global	_ZN14HardwareSerial4readEv
	.type	_ZN14HardwareSerial4readEv, @function
_ZN14HardwareSerial4readEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r25,Z+25
	ldd r24,Z+26
	cp r25,r24
	breq .L7
	ldd r26,Z+26
	add r26,r30
	mov r27,r31
	adc r27,__zero_reg__
	adiw r26,29
	ld r24,X
	ldd r25,Z+26
	subi r25,lo8(-(1))
	andi r25,lo8(63)
	std Z+26,r25
	ldi r25,0
	ret
.L7:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4readEv, .-_ZN14HardwareSerial4readEv
	.section	.text._ZN14HardwareSerial17availableForWriteEv,"ax",@progbits
.global	_ZN14HardwareSerial17availableForWriteEv
	.type	_ZN14HardwareSerial17availableForWriteEv, @function
_ZN14HardwareSerial17availableForWriteEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r21,Z+27
	ldd r20,Z+28
	mov r18,r21
	ldi r19,0
	mov r24,r20
	ldi r25,0
	sub r24,r18
	sbc r25,r19
	cp r21,r20
	brlo .L9
	adiw r24,63
	ret
.L9:
	sbiw r24,1
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial17availableForWriteEv, .-_ZN14HardwareSerial17availableForWriteEv
	.section	.text._Z14serialEventRunv,"ax",@progbits
	.weak	_Z14serialEventRunv
	.type	_Z14serialEventRunv, @function
_Z14serialEventRunv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(gs(_Z17Serial0_availablev))
	ldi r25,hi8(gs(_Z17Serial0_availablev))
	or r24,r25
	breq .L11
	ldi r24,lo8(gs(_Z11serialEventv))
	ldi r25,hi8(gs(_Z11serialEventv))
	or r24,r25
	breq .L11
	call _Z17Serial0_availablev
	cpse r24,__zero_reg__
	jmp _Z11serialEventv
.L11:
/* epilogue start */
	ret
	.size	_Z14serialEventRunv, .-_Z14serialEventRunv
	.section	.text._ZN14HardwareSerial17_tx_udr_empty_irqEv,"ax",@progbits
.global	_ZN14HardwareSerial17_tx_udr_empty_irqEv
	.type	_ZN14HardwareSerial17_tx_udr_empty_irqEv, @function
_ZN14HardwareSerial17_tx_udr_empty_irqEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r26,Z+28
	add r26,r24
	mov r27,r25
	adc r27,__zero_reg__
	subi r26,-93
	sbci r27,-1
	ld r18,X
	ldd r24,Z+28
	ldi r25,0
	adiw r24,1
	andi r24,63
	clr r25
	std Z+28,r24
	ldd r26,Z+22
	ldd r27,Z+23
	st X,r18
	ldd r26,Z+16
	ldd r27,Z+17
	ld r24,X
	andi r24,lo8(3)
	ori r24,lo8(64)
	st X,r24
	ldd r25,Z+27
	ldd r24,Z+28
	cpse r25,r24
	rjmp .L21
	ldd __tmp_reg__,Z+18
	ldd r31,Z+19
	mov r30,__tmp_reg__
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L21:
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial17_tx_udr_empty_irqEv, .-_ZN14HardwareSerial17_tx_udr_empty_irqEv
	.section	.text._ZN14HardwareSerial5flushEv,"ax",@progbits
.global	_ZN14HardwareSerial5flushEv
	.type	_ZN14HardwareSerial5flushEv, @function
_ZN14HardwareSerial5flushEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+24
	tst r24
	breq .L23
.L28:
	ldd r26,Y+18
	ldd r27,Y+19
.L27:
	ldd r30,Y+16
	ldd r31,Y+17
.L26:
	ld r24,X
	sbrc r24,5
	rjmp .L25
	ld r24,Z
	sbrc r24,6
	rjmp .L23
.L25:
	in __tmp_reg__,__SREG__
	sbrc __tmp_reg__,7
	rjmp .L26
	ld r24,X
	sbrs r24,5
	rjmp .L27
	ld r24,Z
	sbrs r24,5
	rjmp .L28
	movw r24,r28
	call _ZN14HardwareSerial17_tx_udr_empty_irqEv
	rjmp .L28
.L23:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial5flushEv, .-_ZN14HardwareSerial5flushEv
	.section	.text._ZN14HardwareSerial5writeEh,"ax",@progbits
.global	_ZN14HardwareSerial5writeEh
	.type	_ZN14HardwareSerial5writeEh, @function
_ZN14HardwareSerial5writeEh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	ldi r24,lo8(1)
	std Y+24,r24
	ldd r25,Y+27
	ldd r24,Y+28
	cpse r25,r24
	rjmp .L39
	ldd r30,Y+16
	ldd r31,Y+17
	ld r24,Z
	sbrs r24,5
	rjmp .L39
	in r25,__SREG__
/* #APP */
 ;  50 "c:\arduino\hardware\tools\avr\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r30,Y+22
	ldd r31,Y+23
	st Z,r22
	ldd r30,Y+16
	ldd r31,Y+17
	ld r24,Z
	andi r24,lo8(3)
	ori r24,lo8(64)
.L51:
	st Z,r24
	out __SREG__,r25
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L39:
	mov r15,r22
	ldd r16,Y+27
	ldi r17,0
	subi r16,-1
	sbci r17,-1
	andi r16,63
	clr r17
	mov r14,r16
.L42:
	ldd r24,Y+28
	cpse r24,r14
	rjmp .L41
	in __tmp_reg__,__SREG__
	sbrc __tmp_reg__,7
	rjmp .L42
	ldd r30,Y+16
	ldd r31,Y+17
	ld r24,Z
	sbrs r24,5
	rjmp .L42
	movw r24,r28
	call _ZN14HardwareSerial17_tx_udr_empty_irqEv
	rjmp .L42
.L41:
	ldd r30,Y+27
	add r30,r28
	mov r31,r29
	adc r31,__zero_reg__
	subi r30,-93
	sbci r31,-1
	st Z,r15
	in r25,__SREG__
/* #APP */
 ;  50 "c:\arduino\hardware\tools\avr\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	std Y+27,r16
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	ori r24,lo8(32)
	rjmp .L51
	.size	_ZN14HardwareSerial5writeEh, .-_ZN14HardwareSerial5writeEh
	.section	.text._ZN14HardwareSerial5beginEmh,"ax",@progbits
.global	_ZN14HardwareSerial5beginEmh
	.type	_ZN14HardwareSerial5beginEmh, @function
_ZN14HardwareSerial5beginEmh:
	push r12
	push r13
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	movw r12,r20
	movw r14,r22
	mov r17,r18
	ldd r30,Y+16
	ldd r31,Y+17
	ldi r24,lo8(2)
	st Z,r24
	cp r12,__zero_reg__
	ldi r24,-31
	cpc r13,r24
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L53
	ldi r22,0
	ldi r23,lo8(9)
	ldi r24,lo8(61)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
	cp r18,__zero_reg__
	ldi r24,16
	cpc r19,r24
	brlo .L54
.L53:
	ldd r30,Y+16
	ldd r31,Y+17
	st Z,__zero_reg__
	ldi r22,lo8(-128)
	ldi r23,lo8(-124)
	ldi r24,lo8(30)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
.L54:
	ldd r30,Y+12
	ldd r31,Y+13
	st Z,r19
	ldd r30,Y+14
	ldd r31,Y+15
	st Z,r18
	std Y+24,__zero_reg__
	ldd r30,Y+20
	ldd r31,Y+21
	st Z,r17
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN14HardwareSerial5beginEmh, .-_ZN14HardwareSerial5beginEmh
	.section	.text._ZN14HardwareSerial3endEv,"ax",@progbits
.global	_ZN14HardwareSerial3endEv
	.type	_ZN14HardwareSerial3endEv, @function
_ZN14HardwareSerial3endEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	icall
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	andi r24,lo8(-17)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	andi r24,lo8(-9)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	andi r24,lo8(127)
	st Z,r24
	ldd r30,Y+18
	ldd r31,Y+19
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
	ldd r24,Y+26
	std Y+25,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial3endEv, .-_ZN14HardwareSerial3endEv
	.weak	_ZTV14HardwareSerial
	.section	.rodata._ZTV14HardwareSerial,"aG",@progbits,_ZTV14HardwareSerial,comdat
	.type	_ZTV14HardwareSerial, @object
	.size	_ZTV14HardwareSerial, 18
_ZTV14HardwareSerial:
	.word	0
	.word	0
	.word	gs(_ZN14HardwareSerial5writeEh)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(_ZN14HardwareSerial17availableForWriteEv)
	.word	gs(_ZN14HardwareSerial5flushEv)
	.word	gs(_ZN14HardwareSerial9availableEv)
	.word	gs(_ZN14HardwareSerial4readEv)
	.word	gs(_ZN14HardwareSerial4peekEv)
	.weak	_Z11serialEventv
	.weak	_Z17Serial0_availablev
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
