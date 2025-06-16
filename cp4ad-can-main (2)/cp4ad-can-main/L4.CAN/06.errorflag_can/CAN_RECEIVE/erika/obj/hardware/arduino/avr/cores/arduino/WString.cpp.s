	.file	"WString.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZNK6String14StringIfHelperEv,"axG",@progbits,_ZNK6String14StringIfHelperEv,comdat
	.weak	_ZNK6String14StringIfHelperEv
	.type	_ZNK6String14StringIfHelperEv, @function
_ZNK6String14StringIfHelperEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	_ZNK6String14StringIfHelperEv, .-_ZNK6String14StringIfHelperEv
	.section	.text._ZN6StringD2Ev,"ax",@progbits
.global	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, @function
_ZN6StringD2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L2
	jmp free
.L2:
/* epilogue start */
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
.global	_ZN6StringD1Ev
	.set	_ZN6StringD1Ev,_ZN6StringD2Ev
	.section	.text._ZN6String10invalidateEv,"ax",@progbits
.global	_ZN6String10invalidateEv
	.type	_ZN6String10invalidateEv, @function
_ZN6String10invalidateEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,0
	breq .L5
	call free
.L5:
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String10invalidateEv, .-_ZN6String10invalidateEv
	.section	.text._ZN6String12changeBufferEj,"ax",@progbits
.global	_ZN6String12changeBufferEj
	.type	_ZN6String12changeBufferEj, @function
_ZN6String12changeBufferEj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	subi r22,-1
	sbci r23,-1
	ld r24,Y
	ldd r25,Y+1
	call realloc
	sbiw r24,0
	breq .L11
	std Y+1,r25
	st Y,r24
	std Y+3,r17
	std Y+2,r16
	ldi r24,lo8(1)
.L9:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L11:
	ldi r24,0
	rjmp .L9
	.size	_ZN6String12changeBufferEj, .-_ZN6String12changeBufferEj
	.section	.text._ZN6String7reserveEj,"ax",@progbits
.global	_ZN6String7reserveEj
	.type	_ZN6String7reserveEj, @function
_ZN6String7reserveEj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L13
	ldd r24,Y+2
	ldd r25,Y+3
	cp r24,r22
	cpc r25,r23
	brlo .L13
.L22:
	ldi r24,lo8(1)
.L12:
/* epilogue start */
	pop r29
	pop r28
	ret
.L13:
	movw r24,r28
	call _ZN6String12changeBufferEj
	tst r24
	breq .L12
	ldd r24,Y+4
	ldd r25,Y+5
	or r24,r25
	brne .L22
	ld r30,Y
	ldd r31,Y+1
	st Z,__zero_reg__
	rjmp .L22
	.size	_ZN6String7reserveEj, .-_ZN6String7reserveEj
	.section	.text._ZN6String4copyEPKcj,"ax",@progbits
.global	_ZN6String4copyEPKcj
	.type	_ZN6String4copyEPKcj, @function
_ZN6String4copyEPKcj:
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
	movw r14,r22
	movw r16,r20
	movw r22,r20
	call _ZN6String7reserveEj
	cpse r24,__zero_reg__
	rjmp .L24
	movw r24,r28
	call _ZN6String10invalidateEv
.L25:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L24:
	std Y+5,r17
	std Y+4,r16
	movw r22,r14
	ld r24,Y
	ldd r25,Y+1
	call strcpy
	rjmp .L25
	.size	_ZN6String4copyEPKcj, .-_ZN6String4copyEPKcj
	.section	.text._ZN6StringC2EPKc,"ax",@progbits
.global	_ZN6StringC2EPKc
	.type	_ZN6StringC2EPKc, @function
_ZN6StringC2EPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L26
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	jmp _ZN6String4copyEPKcj
.L26:
/* epilogue start */
	ret
	.size	_ZN6StringC2EPKc, .-_ZN6StringC2EPKc
.global	_ZN6StringC1EPKc
	.set	_ZN6StringC1EPKc,_ZN6StringC2EPKc
	.section	.text._ZN6StringaSEPKc.part.3,"ax",@progbits
	.type	_ZN6StringaSEPKc.part.3, @function
_ZN6StringaSEPKc.part.3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	jmp _ZN6String4copyEPKcj
	.size	_ZN6StringaSEPKc.part.3, .-_ZN6StringaSEPKc.part.3
	.section	.text._ZN6StringC2Ec,"ax",@progbits
.global	_ZN6StringC2Ec
	.type	_ZN6StringC2Ec, @function
_ZN6StringC2Ec:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Y+1,r22
	std Y+2,__zero_reg__
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	_ZN6StringC2Ec, .-_ZN6StringC2Ec
.global	_ZN6StringC1Ec
	.set	_ZN6StringC1Ec,_ZN6StringC2Ec
	.section	.text._ZN6StringC2Ehh,"ax",@progbits
.global	_ZN6StringC2Ehh
	.type	_ZN6StringC2Ehh, @function
_ZN6StringC2Ehh:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r16,r24
	mov r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r25,0
	call __utoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	adiw r28,9
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
	.size	_ZN6StringC2Ehh, .-_ZN6StringC2Ehh
.global	_ZN6StringC1Ehh
	.set	_ZN6StringC1Ehh,_ZN6StringC2Ehh
	.section	.text._ZN6StringC2Eih,"ax",@progbits
.global	_ZN6StringC2Eih
	.type	_ZN6StringC2Eih, @function
_ZN6StringC2Eih:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call __itoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	adiw r28,18
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
	.size	_ZN6StringC2Eih, .-_ZN6StringC2Eih
.global	_ZN6StringC1Eih
	.set	_ZN6StringC1Eih,_ZN6StringC2Eih
	.section	.text._ZN6StringC2Ejh,"ax",@progbits
.global	_ZN6StringC2Ejh
	.type	_ZN6StringC2Ejh, @function
_ZN6StringC2Ejh:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call __utoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	adiw r28,17
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
	.size	_ZN6StringC2Ejh, .-_ZN6StringC2Ejh
.global	_ZN6StringC1Ejh
	.set	_ZN6StringC1Ejh,_ZN6StringC2Ejh
	.section	.text._ZN6StringC2Elh,"ax",@progbits
.global	_ZN6StringC2Elh
	.type	_ZN6StringC2Elh, @function
_ZN6StringC2Elh:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,34
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
/* stack size = 38 */
.L__stack_usage = 38
	movw r16,r24
	movw r24,r22
	movw r22,r20
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r19,0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call __ltoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	adiw r28,34
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
	.size	_ZN6StringC2Elh, .-_ZN6StringC2Elh
.global	_ZN6StringC1Elh
	.set	_ZN6StringC1Elh,_ZN6StringC2Elh
	.section	.text._ZN6StringC2Emh,"ax",@progbits
.global	_ZN6StringC2Emh
	.type	_ZN6StringC2Emh, @function
_ZN6StringC2Emh:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
/* stack size = 37 */
.L__stack_usage = 37
	movw r16,r24
	movw r24,r22
	movw r22,r20
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r19,0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call __ultoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc.part.3
/* epilogue start */
	adiw r28,33
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
	.size	_ZN6StringC2Emh, .-_ZN6StringC2Emh
.global	_ZN6StringC1Emh
	.set	_ZN6StringC1Emh,_ZN6StringC2Emh
	.section	.text._ZN6String4copyEPK19__FlashStringHelperj,"ax",@progbits
.global	_ZN6String4copyEPK19__FlashStringHelperj
	.type	_ZN6String4copyEPK19__FlashStringHelperj, @function
_ZN6String4copyEPK19__FlashStringHelperj:
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
	movw r14,r22
	movw r16,r20
	movw r22,r20
	call _ZN6String7reserveEj
	cpse r24,__zero_reg__
	rjmp .L36
	movw r24,r28
	call _ZN6String10invalidateEv
.L37:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L36:
	std Y+5,r17
	std Y+4,r16
	movw r22,r14
	ld r24,Y
	ldd r25,Y+1
	call strcpy_P
	rjmp .L37
	.size	_ZN6String4copyEPK19__FlashStringHelperj, .-_ZN6String4copyEPK19__FlashStringHelperj
	.section	.text._ZN6String4moveERS_,"ax",@progbits
.global	_ZN6String4moveERS_
	.type	_ZN6String4moveERS_, @function
_ZN6String4moveERS_:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r22
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L39
	ld r22,Y
	ldd r23,Y+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L40
	ldi r18,lo8(gs(_ZNK6String14StringIfHelperEv))
	ldi r19,hi8(gs(_ZNK6String14StringIfHelperEv))
	or r18,r19
	breq .L40
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r18,Y+4
	ldd r19,Y+5
	cp r20,r18
	cpc r21,r19
	brlo .L40
	call strcpy
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r16
	std Z+5,r25
	std Z+4,r24
.L51:
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L40:
	call free
.L39:
	ld r24,Y
	ldd r25,Y+1
	movw r30,r16
	std Z+1,r25
	st Z,r24
	ldd r24,Y+2
	ldd r25,Y+3
	std Z+3,r25
	std Z+2,r24
	ldd r24,Y+4
	ldd r25,Y+5
	std Z+5,r25
	std Z+4,r24
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	rjmp .L51
	.size	_ZN6String4moveERS_, .-_ZN6String4moveERS_
	.section	.text._ZN6StringC2EOS_,"ax",@progbits
.global	_ZN6StringC2EOS_
	.type	_ZN6StringC2EOS_, @function
_ZN6StringC2EOS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	jmp _ZN6String4moveERS_
	.size	_ZN6StringC2EOS_, .-_ZN6StringC2EOS_
.global	_ZN6StringC1EOS_
	.set	_ZN6StringC1EOS_,_ZN6StringC2EOS_
	.section	.text._ZN6StringC2EO15StringSumHelper,"ax",@progbits
.global	_ZN6StringC2EO15StringSumHelper
	.type	_ZN6StringC2EO15StringSumHelper, @function
_ZN6StringC2EO15StringSumHelper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	jmp _ZN6String4moveERS_
	.size	_ZN6StringC2EO15StringSumHelper, .-_ZN6StringC2EO15StringSumHelper
.global	_ZN6StringC1EO15StringSumHelper
	.set	_ZN6StringC1EO15StringSumHelper,_ZN6StringC2EO15StringSumHelper
	.section	.text._ZN6StringaSERKS_,"ax",@progbits
.global	_ZN6StringaSERKS_
	.type	_ZN6StringaSERKS_, @function
_ZN6StringaSERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r30,r22
	cp r24,r22
	cpc r25,r23
	breq .L55
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L56
	ldd r20,Z+4
	ldd r21,Z+5
	call _ZN6String4copyEPKcj
.L55:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
.L56:
	call _ZN6String10invalidateEv
	rjmp .L55
	.size	_ZN6StringaSERKS_, .-_ZN6StringaSERKS_
	.section	.text._ZN6StringC2ERKS_,"ax",@progbits
.global	_ZN6StringC2ERKS_
	.type	_ZN6StringC2ERKS_, @function
_ZN6StringC2ERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	jmp _ZN6StringaSERKS_
	.size	_ZN6StringC2ERKS_, .-_ZN6StringC2ERKS_
.global	_ZN6StringC1ERKS_
	.set	_ZN6StringC1ERKS_,_ZN6StringC2ERKS_
	.section	.text._ZN6StringaSEOS_,"ax",@progbits
.global	_ZN6StringaSEOS_
	.type	_ZN6StringaSEOS_, @function
_ZN6StringaSEOS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cp r24,r22
	cpc r25,r23
	breq .L59
	call _ZN6String4moveERS_
.L59:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringaSEOS_, .-_ZN6StringaSEOS_
	.section	.text._ZN6StringaSEO15StringSumHelper,"ax",@progbits
.global	_ZN6StringaSEO15StringSumHelper
	.type	_ZN6StringaSEO15StringSumHelper, @function
_ZN6StringaSEO15StringSumHelper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cp r22,r24
	cpc r23,r25
	breq .L61
	call _ZN6String4moveERS_
.L61:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringaSEO15StringSumHelper, .-_ZN6StringaSEO15StringSumHelper
	.section	.text._ZN6StringaSEPKc,"ax",@progbits
.global	_ZN6StringaSEPKc
	.type	_ZN6StringaSEPKc, @function
_ZN6StringaSEPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L63
	call _ZN6StringaSEPKc.part.3
.L64:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
.L63:
	call _ZN6String10invalidateEv
	rjmp .L64
	.size	_ZN6StringaSEPKc, .-_ZN6StringaSEPKc
	.section	.text._ZN6StringC2Efh,"ax",@progbits
.global	_ZN6StringC2Efh
	.type	_ZN6StringC2Efh, @function
_ZN6StringC2Efh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
/* stack size = 39 */
.L__stack_usage = 39
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r30,r14
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r20,lo8(2)
	add r20,r18
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	call dtostrf
	movw r22,r24
	movw r24,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,33
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
	.size	_ZN6StringC2Efh, .-_ZN6StringC2Efh
.global	_ZN6StringC1Efh
	.set	_ZN6StringC1Efh,_ZN6StringC2Efh
	.section	.text._ZN6StringC2Edh,"ax",@progbits
.global	_ZN6StringC2Edh
	.type	_ZN6StringC2Edh, @function
_ZN6StringC2Edh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
/* stack size = 39 */
.L__stack_usage = 39
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r30,r14
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	ldi r20,lo8(2)
	add r20,r18
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	call dtostrf
	movw r22,r24
	movw r24,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,33
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
	.size	_ZN6StringC2Edh, .-_ZN6StringC2Edh
.global	_ZN6StringC1Edh
	.set	_ZN6StringC1Edh,_ZN6StringC2Edh
	.section	.text._ZN6StringaSEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN6StringaSEPK19__FlashStringHelper
	.type	_ZN6StringaSEPK19__FlashStringHelper, @function
_ZN6StringaSEPK19__FlashStringHelper:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L68
	movw r24,r22
	call __strlen_P
	movw r20,r24
	movw r22,r16
	movw r24,r28
	call _ZN6String4copyEPK19__FlashStringHelperj
.L69:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L68:
	call _ZN6String10invalidateEv
	rjmp .L69
	.size	_ZN6StringaSEPK19__FlashStringHelper, .-_ZN6StringaSEPK19__FlashStringHelper
	.section	.text._ZN6StringC2EPK19__FlashStringHelper,"ax",@progbits
.global	_ZN6StringC2EPK19__FlashStringHelper
	.type	_ZN6StringC2EPK19__FlashStringHelper, @function
_ZN6StringC2EPK19__FlashStringHelper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	jmp _ZN6StringaSEPK19__FlashStringHelper
	.size	_ZN6StringC2EPK19__FlashStringHelper, .-_ZN6StringC2EPK19__FlashStringHelper
.global	_ZN6StringC1EPK19__FlashStringHelper
	.set	_ZN6StringC1EPK19__FlashStringHelper,_ZN6StringC2EPK19__FlashStringHelper
	.section	.text._ZN6String6concatEPKcj,"ax",@progbits
.global	_ZN6String6concatEPKcj
	.type	_ZN6String6concatEPKcj, @function
_ZN6String6concatEPKcj:
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
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L72
.L74:
	ldi r24,0
.L71:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L72:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L75
	movw r14,r22
	movw r28,r24
	ldd r16,Y+4
	ldd r17,Y+5
	add r16,r20
	adc r17,r21
	movw r22,r16
	call _ZN6String7reserveEj
	tst r24
	breq .L74
	ld r18,Y
	ldd r19,Y+1
	ldd r24,Y+4
	ldd r25,Y+5
	movw r22,r14
	add r24,r18
	adc r25,r19
	call strcpy
	std Y+5,r17
	std Y+4,r16
.L75:
	ldi r24,lo8(1)
	rjmp .L71
	.size	_ZN6String6concatEPKcj, .-_ZN6String6concatEPKcj
	.section	.text._ZN6String6concatERKS_,"ax",@progbits
.global	_ZN6String6concatERKS_
	.type	_ZN6String6concatERKS_, @function
_ZN6String6concatERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	ld r22,Z
	ldd r23,Z+1
	jmp _ZN6String6concatEPKcj
	.size	_ZN6String6concatERKS_, .-_ZN6String6concatERKS_
	.section	.text._ZN6String6concatEPKc,"ax",@progbits
.global	_ZN6String6concatEPKc
	.type	_ZN6String6concatEPKc, @function
_ZN6String6concatEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L81
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	jmp _ZN6String6concatEPKcj
.L81:
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZN6String6concatEPKc, .-_ZN6String6concatEPKc
	.section	.text._ZN6String6concatEc,"ax",@progbits
.global	_ZN6String6concatEc
	.type	_ZN6String6concatEc, @function
_ZN6String6concatEc:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+1,r22
	std Y+2,__zero_reg__
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6String6concatEPKcj
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	_ZN6String6concatEc, .-_ZN6String6concatEc
	.section	.text._ZN6String6concatEh,"ax",@progbits
.global	_ZN6String6concatEh
	.type	_ZN6String6concatEh, @function
_ZN6String6concatEh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	mov r24,r22
	ldi r20,lo8(10)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	ldi r25,0
	call __itoa_ncheck
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN6String6concatEh, .-_ZN6String6concatEh
	.section	.text._ZN6String6concatEi,"ax",@progbits
.global	_ZN6String6concatEi
	.type	_ZN6String6concatEi, @function
_ZN6String6concatEi:
	push r14
	push r15
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
/* stack size = 14 */
.L__stack_usage = 14
	movw r14,r24
	movw r24,r22
	ldi r20,lo8(10)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	call __itoa_ncheck
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
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
	pop r15
	pop r14
	ret
	.size	_ZN6String6concatEi, .-_ZN6String6concatEi
	.section	.text._ZN6String6concatEj,"ax",@progbits
.global	_ZN6String6concatEj
	.type	_ZN6String6concatEj, @function
_ZN6String6concatEj:
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
	movw r14,r24
	movw r24,r22
	ldi r20,lo8(10)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	call __utoa_ncheck
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
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
	.size	_ZN6String6concatEj, .-_ZN6String6concatEj
	.section	.text._ZN6String6concatEl,"ax",@progbits
.global	_ZN6String6concatEl
	.type	_ZN6String6concatEl, @function
_ZN6String6concatEl:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 20 */
.L__stack_usage = 20
	movw r14,r24
	movw r24,r22
	movw r22,r20
	ldi r18,lo8(10)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r20,r16
	call __ltoa_ncheck
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,14
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
	.size	_ZN6String6concatEl, .-_ZN6String6concatEl
	.section	.text._ZN6String6concatEm,"ax",@progbits
.global	_ZN6String6concatEm
	.type	_ZN6String6concatEm, @function
_ZN6String6concatEm:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 13 */
/* stack size = 19 */
.L__stack_usage = 19
	movw r14,r24
	movw r24,r22
	movw r22,r20
	ldi r18,lo8(10)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r20,r16
	call __ultoa_ncheck
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,13
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
	.size	_ZN6String6concatEm, .-_ZN6String6concatEm
	.section	.text._ZN6String6concatEf,"ax",@progbits
.global	_ZN6String6concatEf
	.type	_ZN6String6concatEf, @function
_ZN6String6concatEf:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ldi r18,lo8(2)
	ldi r20,lo8(4)
	call dtostrf
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r24
	sbc r21,r25
	movw r22,r24
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,20
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
	.size	_ZN6String6concatEf, .-_ZN6String6concatEf
	.section	.text._ZN6String6concatEd,"ax",@progbits
.global	_ZN6String6concatEd
	.type	_ZN6String6concatEd, @function
_ZN6String6concatEd:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ldi r18,lo8(2)
	ldi r20,lo8(4)
	call dtostrf
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r24
	sbc r21,r25
	movw r22,r24
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,20
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
	.size	_ZN6String6concatEd, .-_ZN6String6concatEd
	.section	.text._ZN6String6concatEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN6String6concatEPK19__FlashStringHelper
	.type	_ZN6String6concatEPK19__FlashStringHelper, @function
_ZN6String6concatEPK19__FlashStringHelper:
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
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L91
.L93:
	ldi r24,0
.L90:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L91:
	movw r14,r22
	movw r28,r24
	movw r24,r22
	call __strlen_P
	sbiw r24,0
	breq .L94
	ldd r16,Y+4
	ldd r17,Y+5
	add r16,r24
	adc r17,r25
	movw r22,r16
	movw r24,r28
	call _ZN6String7reserveEj
	tst r24
	breq .L93
	ld r18,Y
	ldd r19,Y+1
	ldd r24,Y+4
	ldd r25,Y+5
	movw r22,r14
	add r24,r18
	adc r25,r19
	call strcpy_P
	std Y+5,r17
	std Y+4,r16
.L94:
	ldi r24,lo8(1)
	rjmp .L90
	.size	_ZN6String6concatEPK19__FlashStringHelper, .-_ZN6String6concatEPK19__FlashStringHelper
	.section	.text._ZplRK15StringSumHelperRK6String,"ax",@progbits
.global	_ZplRK15StringSumHelperRK6String
	.type	_ZplRK15StringSumHelperRK6String, @function
_ZplRK15StringSumHelperRK6String:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	ld r22,Z
	ldd r23,Z+1
	call _ZN6String6concatEPKcj
	cpse r24,__zero_reg__
	rjmp .L99
	movw r24,r28
	call _ZN6String10invalidateEv
.L99:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperRK6String, .-_ZplRK15StringSumHelperRK6String
	.section	.text._ZplRK15StringSumHelperPKc,"ax",@progbits
.global	_ZplRK15StringSumHelperPKc
	.type	_ZplRK15StringSumHelperPKc, @function
_ZplRK15StringSumHelperPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L101
.L103:
	movw r24,r28
	call _ZN6String10invalidateEv
.L102:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
.L101:
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	call _ZN6String6concatEPKcj
	tst r24
	breq .L103
	rjmp .L102
	.size	_ZplRK15StringSumHelperPKc, .-_ZplRK15StringSumHelperPKc
	.section	.text._ZplRK15StringSumHelperc,"ax",@progbits
.global	_ZplRK15StringSumHelperc
	.type	_ZplRK15StringSumHelperc, @function
_ZplRK15StringSumHelperc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEc
	cpse r24,__zero_reg__
	rjmp .L108
	movw r24,r28
	call _ZN6String10invalidateEv
.L108:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperc, .-_ZplRK15StringSumHelperc
	.section	.text._ZplRK15StringSumHelperh,"ax",@progbits
.global	_ZplRK15StringSumHelperh
	.type	_ZplRK15StringSumHelperh, @function
_ZplRK15StringSumHelperh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEh
	cpse r24,__zero_reg__
	rjmp .L110
	movw r24,r28
	call _ZN6String10invalidateEv
.L110:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperh, .-_ZplRK15StringSumHelperh
	.section	.text._ZplRK15StringSumHelperi,"ax",@progbits
.global	_ZplRK15StringSumHelperi
	.type	_ZplRK15StringSumHelperi, @function
_ZplRK15StringSumHelperi:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEi
	cpse r24,__zero_reg__
	rjmp .L112
	movw r24,r28
	call _ZN6String10invalidateEv
.L112:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperi, .-_ZplRK15StringSumHelperi
	.section	.text._ZplRK15StringSumHelperj,"ax",@progbits
.global	_ZplRK15StringSumHelperj
	.type	_ZplRK15StringSumHelperj, @function
_ZplRK15StringSumHelperj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEj
	cpse r24,__zero_reg__
	rjmp .L114
	movw r24,r28
	call _ZN6String10invalidateEv
.L114:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperj, .-_ZplRK15StringSumHelperj
	.section	.text._ZplRK15StringSumHelperl,"ax",@progbits
.global	_ZplRK15StringSumHelperl
	.type	_ZplRK15StringSumHelperl, @function
_ZplRK15StringSumHelperl:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEl
	cpse r24,__zero_reg__
	rjmp .L116
	movw r24,r28
	call _ZN6String10invalidateEv
.L116:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperl, .-_ZplRK15StringSumHelperl
	.section	.text._ZplRK15StringSumHelperm,"ax",@progbits
.global	_ZplRK15StringSumHelperm
	.type	_ZplRK15StringSumHelperm, @function
_ZplRK15StringSumHelperm:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEm
	cpse r24,__zero_reg__
	rjmp .L118
	movw r24,r28
	call _ZN6String10invalidateEv
.L118:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperm, .-_ZplRK15StringSumHelperm
	.section	.text._ZplRK15StringSumHelperf,"ax",@progbits
.global	_ZplRK15StringSumHelperf
	.type	_ZplRK15StringSumHelperf, @function
_ZplRK15StringSumHelperf:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEf
	cpse r24,__zero_reg__
	rjmp .L120
	movw r24,r28
	call _ZN6String10invalidateEv
.L120:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperf, .-_ZplRK15StringSumHelperf
	.section	.text._ZplRK15StringSumHelperd,"ax",@progbits
.global	_ZplRK15StringSumHelperd
	.type	_ZplRK15StringSumHelperd, @function
_ZplRK15StringSumHelperd:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEd
	cpse r24,__zero_reg__
	rjmp .L122
	movw r24,r28
	call _ZN6String10invalidateEv
.L122:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperd, .-_ZplRK15StringSumHelperd
	.section	.text._ZplRK15StringSumHelperPK19__FlashStringHelper,"ax",@progbits
.global	_ZplRK15StringSumHelperPK19__FlashStringHelper
	.type	_ZplRK15StringSumHelperPK19__FlashStringHelper, @function
_ZplRK15StringSumHelperPK19__FlashStringHelper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call _ZN6String6concatEPK19__FlashStringHelper
	cpse r24,__zero_reg__
	rjmp .L124
	movw r24,r28
	call _ZN6String10invalidateEv
.L124:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperPK19__FlashStringHelper, .-_ZplRK15StringSumHelperPK19__FlashStringHelper
	.section	.text._ZNK6String9compareToERKS_,"ax",@progbits
.global	_ZNK6String9compareToERKS_
	.type	_ZNK6String9compareToERKS_, @function
_ZNK6String9compareToERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	movw r28,r22
	ld r30,Y
	ldd r31,Y+1
	sbiw r26,0
	breq .L126
	sbiw r30,0
	brne .L133
	movw r28,r24
	ldd r24,Y+4
	ldd r25,Y+5
	or r24,r25
	breq .L134
	ld r24,X
	ldi r25,0
	rjmp .L125
.L130:
	movw r26,r22
	adiw r26,4
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .L134
	ld r24,Z
	ldi r25,0
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L125:
/* epilogue start */
	pop r29
	pop r28
	ret
.L133:
	movw r22,r30
	movw r24,r26
/* epilogue start */
	pop r29
	pop r28
	jmp strcmp
.L126:
	sbiw r30,0
	brne .L130
.L134:
	ldi r25,0
	ldi r24,0
	rjmp .L125
	.size	_ZNK6String9compareToERKS_, .-_ZNK6String9compareToERKS_
	.section	.text._ZNK6String6equalsERKS_,"ax",@progbits
.global	_ZNK6String6equalsERKS_
	.type	_ZNK6String6equalsERKS_, @function
_ZNK6String6equalsERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brne .L138
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	or r24,r25
	breq .L136
.L138:
	ldi r18,0
.L136:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6String6equalsERKS_, .-_ZNK6String6equalsERKS_
	.section	.text._ZNK6String6equalsEPKc,"ax",@progbits
.global	_ZNK6String6equalsEPKc
	.type	_ZNK6String6equalsEPKc, @function
_ZNK6String6equalsEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	or r18,r19
	brne .L143
	ldi r18,lo8(1)
	movw r30,r22
	or r22,r23
	brne .L161
.L142:
	mov r24,r18
/* epilogue start */
	ret
.L143:
	ld r24,Z
	ldd r25,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L147
	ldi r18,lo8(1)
	movw r30,r24
.L161:
	ld r24,Z
	tst r24
	breq .L142
.L160:
	ldi r18,0
	rjmp .L142
.L147:
	call strcmp
	ldi r18,lo8(1)
	or r24,r25
	breq .L142
	rjmp .L160
	.size	_ZNK6String6equalsEPKc, .-_ZNK6String6equalsEPKc
	.section	.text._ZNK6StringltERKS_,"ax",@progbits
.global	_ZNK6StringltERKS_
	.type	_ZNK6StringltERKS_, @function
_ZNK6StringltERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	mov r24,r25
	rol r24
	clr r24
	rol r24
/* epilogue start */
	ret
	.size	_ZNK6StringltERKS_, .-_ZNK6StringltERKS_
	.section	.text._ZNK6StringgtERKS_,"ax",@progbits
.global	_ZNK6StringgtERKS_
	.type	_ZNK6StringgtERKS_, @function
_ZNK6StringgtERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L164
	ldi r18,0
.L164:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6StringgtERKS_, .-_ZNK6StringgtERKS_
	.section	.text._ZNK6StringleERKS_,"ax",@progbits
.global	_ZNK6StringleERKS_
	.type	_ZNK6StringleERKS_, @function
_ZNK6StringleERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L166
	ldi r18,0
.L166:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6StringleERKS_, .-_ZNK6StringleERKS_
	.section	.text._ZNK6StringgeERKS_,"ax",@progbits
.global	_ZNK6StringgeERKS_
	.type	_ZNK6StringgeERKS_, @function
_ZNK6StringgeERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	mov r24,r25
	com r24
	rol r24
	clr r24
	rol r24
/* epilogue start */
	ret
	.size	_ZNK6StringgeERKS_, .-_ZNK6StringgeERKS_
	.section	.text._ZNK6String16equalsIgnoreCaseERKS_,"ax",@progbits
.global	_ZNK6String16equalsIgnoreCaseERKS_
	.type	_ZNK6String16equalsIgnoreCaseERKS_, @function
_ZNK6String16equalsIgnoreCaseERKS_:
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
	cp r24,r22
	cpc r25,r23
	breq .L174
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	cp r18,r20
	cpc r19,r21
	brne .L172
	or r18,r19
	breq .L174
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	movw r30,r22
	ld r28,Z
	ldd r29,Z+1
.L170:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	tst r24
	breq .L174
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call tolower
	movw r14,r24
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call tolower
	cp r14,r24
	cpc r15,r25
	breq .L170
.L172:
	ldi r24,0
.L168:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L174:
	ldi r24,lo8(1)
	rjmp .L168
	.size	_ZNK6String16equalsIgnoreCaseERKS_, .-_ZNK6String16equalsIgnoreCaseERKS_
	.section	.text._ZNK6String10startsWithERKS_j,"ax",@progbits
.global	_ZNK6String10startsWithERKS_j
	.type	_ZNK6String10startsWithERKS_j, @function
_ZNK6String10startsWithERKS_j:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	sub r18,r30
	sbc r19,r31
	cp r18,r20
	cpc r19,r21
	brlo .L181
	ld r18,X+
	ld r19,X
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L181
	movw r26,r22
	ld r22,X+
	ld r23,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L181
	movw r24,r20
	movw r20,r30
	add r24,r18
	adc r25,r19
	call strncmp
	ldi r18,lo8(1)
	or r24,r25
	breq .L176
.L181:
	ldi r18,0
.L176:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6String10startsWithERKS_j, .-_ZNK6String10startsWithERKS_j
	.section	.text._ZNK6String10startsWithERKS_,"ax",@progbits
.global	_ZNK6String10startsWithERKS_
	.type	_ZNK6String10startsWithERKS_, @function
_ZNK6String10startsWithERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brlo .L186
	ldi r21,0
	ldi r20,0
	jmp _ZNK6String10startsWithERKS_j
.L186:
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZNK6String10startsWithERKS_, .-_ZNK6String10startsWithERKS_
	.section	.text._ZNK6String8endsWithERKS_,"ax",@progbits
.global	_ZNK6String8endsWithERKS_
	.type	_ZNK6String8endsWithERKS_, @function
_ZNK6String8endsWithERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	cp r18,r20
	cpc r19,r21
	brlo .L192
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L192
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L192
	sub r18,r20
	sbc r19,r21
	add r24,r18
	adc r25,r19
	call strcmp
	ldi r18,lo8(1)
	or r24,r25
	breq .L187
.L192:
	ldi r18,0
.L187:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6String8endsWithERKS_, .-_ZNK6String8endsWithERKS_
	.section	.text._ZN6String9setCharAtEjc,"ax",@progbits
.global	_ZN6String9setCharAtEjc
	.type	_ZN6String9setCharAtEjc, @function
_ZN6String9setCharAtEjc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	cp r22,r18
	cpc r23,r19
	brsh .L196
	ld r30,X+
	ld r31,X
	add r30,r22
	adc r31,r23
	st Z,r20
.L196:
/* epilogue start */
	ret
	.size	_ZN6String9setCharAtEjc, .-_ZN6String9setCharAtEjc
	.section	.text._ZN6StringixEj,"ax",@progbits
.global	_ZN6StringixEj
	.type	_ZN6StringixEj, @function
_ZN6StringixEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r22,r18
	cpc r23,r19
	brsh .L199
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L200
.L199:
	sts _ZZN6StringixEjE19dummy_writable_char,__zero_reg__
	ldi r24,lo8(_ZZN6StringixEjE19dummy_writable_char)
	ldi r25,hi8(_ZZN6StringixEjE19dummy_writable_char)
	ret
.L200:
	add r24,r22
	adc r25,r23
/* epilogue start */
	ret
	.size	_ZN6StringixEj, .-_ZN6StringixEj
	.section	.text._ZNK6StringixEj,"ax",@progbits
.global	_ZNK6StringixEj
	.type	_ZNK6StringixEj, @function
_ZNK6StringixEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r22,r18
	cpc r23,r19
	brsh .L205
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L205
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	ret
.L205:
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZNK6StringixEj, .-_ZNK6StringixEj
	.section	.text._ZNK6String6charAtEj,"ax",@progbits
.global	_ZNK6String6charAtEj
	.type	_ZNK6String6charAtEj, @function
_ZNK6String6charAtEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp _ZNK6StringixEj
	.size	_ZNK6String6charAtEj, .-_ZNK6String6charAtEj
	.section	.text._ZNK6String8getBytesEPhjj,"ax",@progbits
.global	_ZNK6String8getBytesEPhjj
	.type	_ZNK6String8getBytesEPhjj, @function
_ZNK6String8getBytesEPhjj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L207
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L207
	movw r30,r24
	ldd r16,Z+4
	ldd r17,Z+5
	cp r18,r16
	cpc r19,r17
	brlo .L209
	movw r30,r22
	st Z,__zero_reg__
.L207:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L209:
	subi r20,1
	sbc r21,__zero_reg__
	sub r16,r18
	sbc r17,r19
	cp r20,r16
	cpc r21,r17
	brsh .L210
	movw r16,r20
.L210:
	movw r28,r22
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	add r22,r18
	adc r23,r19
	movw r20,r16
	movw r24,r28
	call strncpy
	add r28,r16
	adc r29,r17
	st Y,__zero_reg__
	rjmp .L207
	.size	_ZNK6String8getBytesEPhjj, .-_ZNK6String8getBytesEPhjj
	.section	.text._ZNK6String7indexOfEcj,"ax",@progbits
.global	_ZNK6String7indexOfEcj
	.type	_ZNK6String7indexOfEcj, @function
_ZNK6String7indexOfEcj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brsh .L220
	ld r28,Z
	ldd r29,Z+1
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strchr
	sbiw r24,0
	breq .L220
	sub r24,r28
	sbc r25,r29
.L217:
/* epilogue start */
	pop r29
	pop r28
	ret
.L220:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L217
	.size	_ZNK6String7indexOfEcj, .-_ZNK6String7indexOfEcj
	.section	.text._ZNK6String7indexOfEc,"ax",@progbits
.global	_ZNK6String7indexOfEc
	.type	_ZNK6String7indexOfEc, @function
_ZNK6String7indexOfEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r21,0
	ldi r20,0
	jmp _ZNK6String7indexOfEcj
	.size	_ZNK6String7indexOfEc, .-_ZNK6String7indexOfEc
	.section	.text._ZNK6String7indexOfERKS_j,"ax",@progbits
.global	_ZNK6String7indexOfERKS_j
	.type	_ZNK6String7indexOfERKS_j, @function
_ZNK6String7indexOfERKS_j:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brsh .L225
	ld r28,Z
	ldd r29,Z+1
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strstr
	sbiw r24,0
	breq .L225
	sub r24,r28
	sbc r25,r29
.L222:
/* epilogue start */
	pop r29
	pop r28
	ret
.L225:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L222
	.size	_ZNK6String7indexOfERKS_j, .-_ZNK6String7indexOfERKS_j
	.section	.text._ZNK6String7indexOfERKS_,"ax",@progbits
.global	_ZNK6String7indexOfERKS_
	.type	_ZNK6String7indexOfERKS_, @function
_ZNK6String7indexOfERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r21,0
	ldi r20,0
	jmp _ZNK6String7indexOfERKS_j
	.size	_ZNK6String7indexOfERKS_, .-_ZNK6String7indexOfERKS_
	.section	.text._ZNK6String11lastIndexOfEcj,"ax",@progbits
.global	_ZNK6String11lastIndexOfEcj
	.type	_ZNK6String11lastIndexOfEcj, @function
_ZNK6String11lastIndexOfEcj:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	cp r20,r18
	cpc r21,r19
	brlo .L228
.L230:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L227:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
.L228:
	movw r16,r24
	movw r28,r20
	adiw r28,1
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	add r30,r28
	adc r31,r29
	ld r13,Z
	st Z,__zero_reg__
	ld r14,X+
	ld r15,X
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	movw r24,r14
	call strrchr
	add r28,r14
	adc r29,r15
	st Y,r13
	sbiw r24,0
	breq .L230
	movw r30,r16
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	rjmp .L227
	.size	_ZNK6String11lastIndexOfEcj, .-_ZNK6String11lastIndexOfEcj
	.section	.text._ZNK6String11lastIndexOfEc,"ax",@progbits
.global	_ZNK6String11lastIndexOfEc
	.type	_ZNK6String11lastIndexOfEc, @function
_ZNK6String11lastIndexOfEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	subi r20,1
	sbc r21,__zero_reg__
	jmp _ZNK6String11lastIndexOfEcj
	.size	_ZNK6String11lastIndexOfEc, .-_ZNK6String11lastIndexOfEc
	.section	.text._ZNK6String11lastIndexOfERKS_j,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_j
	.type	_ZNK6String11lastIndexOfERKS_j, @function
_ZNK6String11lastIndexOfERKS_j:
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
/* stack size = 10 */
.L__stack_usage = 10
	movw r12,r22
	movw r28,r20
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L242
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L242
	cp r18,r20
	cpc r19,r21
	brlo .L242
	cp r28,r18
	cpc r29,r19
	brlo .L237
	movw r28,r18
	sbiw r28,1
.L237:
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	movw r24,r16
	clr r10
	dec r10
	clr r11
	dec r11
	movw r14,r16
	add r14,r28
	adc r15,r29
.L239:
	cp r14,r24
	cpc r15,r25
	brlo .L235
	movw r30,r12
	ld r22,Z
	ldd r23,Z+1
	call strstr
	sbiw r24,0
	breq .L235
	movw r18,r24
	sub r18,r16
	sbc r19,r17
	cp r28,r18
	cpc r29,r19
	brlo .L238
	movw r10,r18
.L238:
	adiw r24,1
	rjmp .L239
.L242:
	clr r10
	dec r10
	clr r11
	dec r11
.L235:
	movw r24,r10
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
	ret
	.size	_ZNK6String11lastIndexOfERKS_j, .-_ZNK6String11lastIndexOfERKS_j
	.section	.text._ZNK6String11lastIndexOfERKS_,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_
	.type	_ZNK6String11lastIndexOfERKS_, @function
_ZNK6String11lastIndexOfERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	sub r20,r18
	sbc r21,r19
	jmp _ZNK6String11lastIndexOfERKS_j
	.size	_ZNK6String11lastIndexOfERKS_, .-_ZNK6String11lastIndexOfERKS_
	.section	.rodata._ZNK6String9substringEjj.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text._ZNK6String9substringEjj,"ax",@progbits
.global	_ZNK6String9substringEjj
	.type	_ZNK6String9substringEjj, @function
_ZNK6String9substringEjj:
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
/* stack size = 10 */
.L__stack_usage = 10
	movw r10,r24
	movw r12,r22
	movw r14,r20
	movw r16,r18
	cp r18,r20
	cpc r19,r21
	brsh .L248
	mov r24,r15
	movw r14,r18
	mov r16,r20
	mov r17,r24
.L248:
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	movw r24,r10
	call _ZN6StringC1EPKc
	movw r26,r12
	adiw r26,4
	ld r28,X+
	ld r29,X
	cp r14,r28
	cpc r15,r29
	brsh .L247
	cp r16,r28
	cpc r17,r29
	brsh .L250
	movw r28,r16
.L250:
	movw r26,r12
	ld r30,X+
	ld r31,X
	sbiw r26,1
	add r30,r28
	adc r31,r29
	ld r17,Z
	st Z,__zero_reg__
	ld r22,X+
	ld r23,X
	add r22,r14
	adc r23,r15
	movw r24,r10
	call _ZN6StringaSEPKc
	movw r30,r12
	ld r24,Z
	ldd r25,Z+1
	add r28,r24
	adc r29,r25
	st Y,r17
.L247:
	movw r24,r10
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
	ret
	.size	_ZNK6String9substringEjj, .-_ZNK6String9substringEjj
	.section	.text._ZN6String7replaceEcc,"ax",@progbits
.global	_ZN6String7replaceEcc
	.type	_ZN6String7replaceEcc, @function
_ZN6String7replaceEcc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r30,0
	breq .L251
.L254:
	ld r24,Z+
	tst r24
	breq .L251
	cpse r24,r22
	rjmp .L254
	movw r26,r30
	sbiw r26,1
	st X,r20
	rjmp .L254
.L251:
/* epilogue start */
	ret
	.size	_ZN6String7replaceEcc, .-_ZN6String7replaceEcc
	.section	.text._ZN6String7replaceERKS_S1_,"ax",@progbits
.global	_ZN6String7replaceERKS_S1_
	.type	_ZN6String7replaceERKS_S1_, @function
_ZN6String7replaceERKS_S1_:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
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
/* stack size = 18 */
.L__stack_usage = 18
	movw r30,r24
	ldd r4,Z+4
	ldd r5,Z+5
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .+2
	rjmp .L261
	movw r30,r22
	ldd r6,Z+4
	ldd r7,Z+5
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L261
	movw r14,r20
	movw r12,r22
	movw r16,r24
	movw r30,r20
	ldd r10,Z+4
	ldd r11,Z+5
	sub r10,r6
	sbc r11,r7
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L263
.L264:
	movw r30,r12
	ld r22,Z
	ldd r23,Z+1
	movw r24,r28
	call strstr
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L261
	movw r30,r14
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	call memcpy
	movw r30,r14
	ldd r24,Z+4
	ldd r25,Z+5
	add r28,r24
	adc r29,r25
	rjmp .L264
.L263:
	sbrc r11,7
	rjmp .L272
	movw r30,r22
	ld r2,Z
	ldd r3,Z+1
	movw r8,r4
.L266:
	movw r22,r2
	movw r24,r28
	call strstr
	sbiw r24,0
	brne .+2
	rjmp .L268
	movw r28,r24
	add r28,r6
	adc r29,r7
	add r8,r10
	adc r9,r11
	rjmp .L266
.L272:
	movw r6,r28
.L265:
	movw r30,r12
	ld r22,Z
	ldd r23,Z+1
	movw r24,r28
	call strstr
	movw r4,r24
	sbiw r24,0
	breq .L267
	movw r8,r24
	sub r8,r28
	sbc r9,r29
	movw r20,r8
	movw r22,r28
	movw r24,r6
	call memcpy
	add r6,r8
	adc r7,r9
	movw r30,r14
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	movw r24,r6
	call memcpy
	movw r30,r14
	ldd r8,Z+4
	ldd r9,Z+5
	add r6,r8
	adc r7,r9
	movw r30,r12
	ldd r28,Z+4
	ldd r29,Z+5
	add r28,r4
	adc r29,r5
	movw r30,r16
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r10
	adc r25,r11
	std Z+5,r25
	std Z+4,r24
	rjmp .L265
.L267:
	movw r22,r28
	movw r24,r6
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	jmp strcpy
.L268:
	cp r4,r8
	cpc r5,r9
	brne .+2
	rjmp .L261
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	cp r24,r8
	cpc r25,r9
	brlo .L269
.L271:
	movw r30,r16
	ldd r20,Z+4
	ldd r21,Z+5
.L285:
	subi r20,1
	sbc r21,__zero_reg__
	sbrc r21,7
	rjmp .L261
	movw r22,r12
	movw r24,r16
	call _ZNK6String11lastIndexOfERKS_j
	movw r28,r24
	sbrc r25,7
	rjmp .L261
	movw r30,r12
	ldd r18,Z+4
	ldd r19,Z+5
	add r18,r24
	adc r19,r25
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	ldd r20,Z+4
	ldd r21,Z+5
	sub r20,r18
	sbc r21,r19
	movw r22,r24
	add r24,r10
	adc r25,r11
	call memmove
	movw r30,r16
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r10
	adc r25,r11
	std Z+5,r25
	std Z+4,r24
	ld r18,Z
	ldd r19,Z+1
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,__zero_reg__
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	movw r30,r14
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	add r24,r28
	adc r25,r29
	call memcpy
	movw r20,r28
	rjmp .L285
.L269:
	movw r22,r8
	movw r24,r16
	call _ZN6String12changeBufferEj
	cpse r24,__zero_reg__
	rjmp .L271
.L261:
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	_ZN6String7replaceERKS_S1_, .-_ZN6String7replaceERKS_S1_
	.section	.text._ZN6String6removeEjj,"ax",@progbits
.global	_ZN6String6removeEjj
	.type	_ZN6String6removeEjj, @function
_ZN6String6removeEjj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	cp r22,r30
	cpc r23,r31
	brsh .L286
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L286
	movw r18,r30
	sub r18,r22
	sbc r19,r23
	cp r20,r18
	cpc r21,r19
	brsh .L288
	movw r18,r20
.L288:
	movw r26,r22
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	sub r30,r18
	sbc r31,r19
	std Y+5,r31
	std Y+4,r30
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	add r18,r22
	adc r19,r23
	movw r22,r24
	add r22,r18
	adc r23,r19
	add r24,r26
	adc r25,r27
	call strncpy
	ld r30,Y
	ldd r31,Y+1
	ldd r24,Y+4
	ldd r25,Y+5
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
.L286:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String6removeEjj, .-_ZN6String6removeEjj
	.section	.text._ZN6String6removeEj,"ax",@progbits
.global	_ZN6String6removeEj
	.type	_ZN6String6removeEj, @function
_ZN6String6removeEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(-1)
	ldi r21,lo8(-1)
	jmp _ZN6String6removeEjj
	.size	_ZN6String6removeEj, .-_ZN6String6removeEj
	.section	.text._ZN6String11toLowerCaseEv,"ax",@progbits
.global	_ZN6String11toLowerCaseEv
	.type	_ZN6String11toLowerCaseEv, @function
_ZN6String11toLowerCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	breq .L293
.L295:
	ld r24,Y+
	tst r24
	breq .L293
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call tolower
	movw r30,r28
	sbiw r30,1
	st Z,r24
	rjmp .L295
.L293:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toLowerCaseEv, .-_ZN6String11toLowerCaseEv
	.section	.text._ZN6String11toUpperCaseEv,"ax",@progbits
.global	_ZN6String11toUpperCaseEv
	.type	_ZN6String11toUpperCaseEv, @function
_ZN6String11toUpperCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	breq .L302
.L304:
	ld r24,Y+
	tst r24
	breq .L302
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call toupper
	movw r30,r28
	sbiw r30,1
	st Z,r24
	rjmp .L304
.L302:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toUpperCaseEv, .-_ZN6String11toUpperCaseEv
	.section	.text._ZN6String4trimEv,"ax",@progbits
.global	_ZN6String4trimEv
	.type	_ZN6String4trimEv, @function
_ZN6String4trimEv:
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
/* stack size = 10 */
.L__stack_usage = 10
	movw r26,r24
	ld r12,X+
	ld r13,X
	sbiw r26,1
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L311
	adiw r26,4
	ld r28,X+
	ld r29,X
	movw r16,r24
	movw r14,r12
	sbiw r28,0
	brne .L313
.L311:
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
	ret
.L317:
	movw r14,r10
.L313:
	movw r10,r14
	ldi r27,-1
	sub r10,r27
	sbc r11,r27
	movw r30,r14
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call isspace
	or r24,r25
	brne .L317
	sbiw r28,1
	add r28,r12
	adc r29,r13
.L315:
	ld r24,Y
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	call isspace
	or r24,r25
	breq .L314
	cp r28,r14
	cpc r29,r15
	brlo .L314
	sbiw r28,1
	rjmp .L315
.L314:
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	sub r20,r14
	sbc r21,r15
	movw r26,r16
	adiw r26,4+1
	st X,r21
	st -X,r20
	sbiw r26,4
	cp r12,r14
	cpc r13,r15
	brsh .L316
	movw r22,r14
	movw r24,r12
	call memcpy
.L316:
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	adiw r26,4
	ld r24,X+
	ld r25,X
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	rjmp .L311
	.size	_ZN6String4trimEv, .-_ZN6String4trimEv
	.section	.text._ZNK6String5toIntEv,"ax",@progbits
.global	_ZNK6String5toIntEv
	.type	_ZNK6String5toIntEv, @function
_ZNK6String5toIntEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L328
	jmp atol
.L328:
	ldi r22,0
	ldi r23,0
	movw r24,r22
/* epilogue start */
	ret
	.size	_ZNK6String5toIntEv, .-_ZNK6String5toIntEv
	.section	.text._ZNK6String8toDoubleEv,"ax",@progbits
.global	_ZNK6String8toDoubleEv
	.type	_ZNK6String8toDoubleEv, @function
_ZNK6String8toDoubleEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L330
	jmp atof
.L330:
	ldi r22,0
	ldi r23,0
	movw r24,r22
/* epilogue start */
	ret
	.size	_ZNK6String8toDoubleEv, .-_ZNK6String8toDoubleEv
	.section	.text._ZNK6String7toFloatEv,"ax",@progbits
.global	_ZNK6String7toFloatEv
	.type	_ZNK6String7toFloatEv, @function
_ZNK6String7toFloatEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp _ZNK6String8toDoubleEv
	.size	_ZNK6String7toFloatEv, .-_ZNK6String7toFloatEv
	.section	.bss._ZZN6StringixEjE19dummy_writable_char,"aw",@nobits
	.type	_ZZN6StringixEjE19dummy_writable_char, @object
	.size	_ZZN6StringixEjE19dummy_writable_char, 1
_ZZN6StringixEjE19dummy_writable_char:
	.zero	1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
