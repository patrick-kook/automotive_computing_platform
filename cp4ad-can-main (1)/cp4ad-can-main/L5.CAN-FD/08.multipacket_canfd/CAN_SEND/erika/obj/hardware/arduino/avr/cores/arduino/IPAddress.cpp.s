	.file	"IPAddress.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZNK9IPAddress7printToER5Print,"ax",@progbits
.global	_ZNK9IPAddress7printToER5Print
	.type	_ZNK9IPAddress7printToER5Print, @function
_ZNK9IPAddress7printToER5Print:
	push r8
	push r9
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r14,r24
	movw r16,r22
	movw r8,r24
	ldi r24,2
	add r8,r24
	adc r9,__zero_reg__
	movw r10,r14
	ldi r30,5
	add r10,r30
	adc r11,__zero_reg__
	ldi r29,0
	ldi r28,0
.L2:
	movw r30,r8
	ld r22,Z+
	movw r8,r30
	ldi r20,lo8(10)
	ldi r21,0
	movw r24,r16
	call _ZN5Print5printEhi
	movw r12,r24
	ldi r22,lo8(46)
	movw r24,r16
	call _ZN5Print5printEc
	add r24,r12
	adc r25,r13
	add r28,r24
	adc r29,r25
	cp r8,r10
	cpc r9,r11
	brne .L2
	ldi r20,lo8(10)
	ldi r21,0
	movw r30,r14
	ldd r22,Z+5
	movw r24,r16
	call _ZN5Print5printEhi
	add r24,r28
	adc r25,r29
/* epilogue start */
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
	pop r9
	pop r8
	ret
	.size	_ZNK9IPAddress7printToER5Print, .-_ZNK9IPAddress7printToER5Print
	.section	.text._ZN9IPAddressC2Ev,"ax",@progbits
.global	_ZN9IPAddressC2Ev
	.type	_ZN9IPAddressC2Ev, @function
_ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(_ZTV9IPAddress+4)
	ldi r19,hi8(_ZTV9IPAddress+4)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
/* epilogue start */
	ret
	.size	_ZN9IPAddressC2Ev, .-_ZN9IPAddressC2Ev
.global	_ZN9IPAddressC1Ev
	.set	_ZN9IPAddressC1Ev,_ZN9IPAddressC2Ev
	.section	.text._ZN9IPAddressC2Ehhhh,"ax",@progbits
.global	_ZN9IPAddressC2Ehhhh
	.type	_ZN9IPAddressC2Ehhhh, @function
_ZN9IPAddressC2Ehhhh:
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r22
	std Z+3,r20
	std Z+4,r18
	std Z+5,r16
/* epilogue start */
	pop r16
	ret
	.size	_ZN9IPAddressC2Ehhhh, .-_ZN9IPAddressC2Ehhhh
.global	_ZN9IPAddressC1Ehhhh
	.set	_ZN9IPAddressC1Ehhhh,_ZN9IPAddressC2Ehhhh
	.section	.text._ZN9IPAddressC2Em,"ax",@progbits
.global	_ZN9IPAddressC2Em
	.type	_ZN9IPAddressC2Em, @function
_ZN9IPAddressC2Em:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(_ZTV9IPAddress+4)
	ldi r19,hi8(_ZTV9IPAddress+4)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
/* epilogue start */
	ret
	.size	_ZN9IPAddressC2Em, .-_ZN9IPAddressC2Em
.global	_ZN9IPAddressC1Em
	.set	_ZN9IPAddressC1Em,_ZN9IPAddressC2Em
	.section	.text._ZN9IPAddressC2EPKh,"ax",@progbits
.global	_ZN9IPAddressC2EPKh
	.type	_ZN9IPAddressC2EPKh, @function
_ZN9IPAddressC2EPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	st X+,r24
	st X+,r25
	ldi r24,lo8(4)
	movw r30,r22
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
/* epilogue start */
	ret
	.size	_ZN9IPAddressC2EPKh, .-_ZN9IPAddressC2EPKh
.global	_ZN9IPAddressC1EPKh
	.set	_ZN9IPAddressC1EPKh,_ZN9IPAddressC2EPKh
	.section	.text._ZN9IPAddress10fromStringEPKc,"ax",@progbits
.global	_ZN9IPAddress10fromStringEPKc
	.type	_ZN9IPAddress10fromStringEPKc, @function
_ZN9IPAddress10fromStringEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ldi r25,0
	ldi r19,0
	ldi r18,0
	ldi r24,lo8(10)
.L9:
	movw r30,r22
	ld r20,Z+
	movw r22,r30
	tst r20
	breq .L10
	ldi r21,lo8(-48)
	add r21,r20
	cpi r21,lo8(10)
	brsh .L11
	mul r24,r18
	movw r30,r0
	mul r24,r19
	add r31,r0
	clr __zero_reg__
	movw r18,r30
	subi r18,48
	sbc r19,__zero_reg__
	add r18,r20
	adc r19,__zero_reg__
	sbrc r20,7
	dec r19
	cpi r18,-1
	cpc r19,__zero_reg__
	breq .L9
	brlo .L9
.L17:
	ldi r24,0
/* epilogue start */
	ret
.L11:
	cpi r20,lo8(46)
	brne .L17
	cpi r25,lo8(3)
	breq .L17
	movw r30,r26
	add r30,r25
	adc r31,__zero_reg__
	std Z+2,r18
	subi r25,lo8(-(1))
	ldi r19,0
	ldi r18,0
	rjmp .L9
.L10:
	cpi r25,lo8(3)
	brne .L17
	adiw r26,5
	st X,r18
	ldi r24,lo8(1)
	ret
	.size	_ZN9IPAddress10fromStringEPKc, .-_ZN9IPAddress10fromStringEPKc
	.section	.text._ZN9IPAddressaSEPKh,"ax",@progbits
.global	_ZN9IPAddressaSEPKh
	.type	_ZN9IPAddressaSEPKh, @function
_ZN9IPAddressaSEPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,2
	ldi r18,lo8(4)
	movw r30,r22
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
/* epilogue start */
	ret
	.size	_ZN9IPAddressaSEPKh, .-_ZN9IPAddressaSEPKh
	.section	.text._ZN9IPAddressaSEm,"ax",@progbits
.global	_ZN9IPAddressaSEm
	.type	_ZN9IPAddressaSEm, @function
_ZN9IPAddressaSEm:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
/* epilogue start */
	ret
	.size	_ZN9IPAddressaSEm, .-_ZN9IPAddressaSEm
	.section	.text._ZNK9IPAddresseqEPKh,"ax",@progbits
.global	_ZNK9IPAddresseqEPKh
	.type	_ZNK9IPAddresseqEPKh, @function
_ZNK9IPAddresseqEPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r22
	movw r22,r24
	subi r22,-2
	sbci r23,-1
	ldi r20,lo8(4)
	ldi r21,0
	movw r24,r18
	call memcmp
	ldi r18,lo8(1)
	or r24,r25
	breq .L21
	ldi r18,0
.L21:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK9IPAddresseqEPKh, .-_ZNK9IPAddresseqEPKh
	.section	.text.startup._GLOBAL__sub_I__ZN9IPAddressC2Ev,"ax",@progbits
	.type	_GLOBAL__sub_I__ZN9IPAddressC2Ev, @function
_GLOBAL__sub_I__ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	_GLOBAL__sub_I__ZN9IPAddressC2Ev, .-_GLOBAL__sub_I__ZN9IPAddressC2Ev
	.weak	_ZTV9IPAddress
	.section	.rodata._ZTV9IPAddress,"aG",@progbits,_ZTV9IPAddress,comdat
	.type	_ZTV9IPAddress, @object
	.size	_ZTV9IPAddress, 6
_ZTV9IPAddress:
	.word	0
	.word	0
	.word	gs(_ZNK9IPAddress7printToER5Print)
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
