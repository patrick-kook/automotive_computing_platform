	.file	"Print.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZN5Print17availableForWriteEv,"axG",@progbits,_ZN5Print17availableForWriteEv,comdat
	.weak	_ZN5Print17availableForWriteEv
	.type	_ZN5Print17availableForWriteEv, @function
_ZN5Print17availableForWriteEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZN5Print17availableForWriteEv, .-_ZN5Print17availableForWriteEv
	.section	.text._ZN5Print5flushEv,"axG",@progbits,_ZN5Print5flushEv,comdat
	.weak	_ZN5Print5flushEv
	.type	_ZN5Print5flushEv, @function
_ZN5Print5flushEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	_ZN5Print5flushEv, .-_ZN5Print5flushEv
	.section	.text._ZN5Print5writeEPKhj,"ax",@progbits
.global	_ZN5Print5writeEPKhj
	.type	_ZN5Print5writeEPKhj, @function
_ZN5Print5writeEPKhj:
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
	movw r12,r24
	movw r14,r22
	movw r16,r22
	add r16,r20
	adc r17,r21
	movw r28,r22
.L5:
	movw r10,r28
	sub r10,r14
	sbc r11,r15
	cp r28,r16
	cpc r29,r17
	breq .L3
	ld r22,Y+
	movw r26,r12
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r12
	icall
	or r24,r25
	brne .L5
.L3:
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
	.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
	.section	.text._ZN5Print5writeEPKc.part.2,"ax",@progbits
	.type	_ZN5Print5writeEPKc.part.2, @function
_ZN5Print5writeEPKc.part.2:
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
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	ijmp
	.size	_ZN5Print5writeEPKc.part.2, .-_ZN5Print5writeEPKc.part.2
	.section	.text._ZN5Print5printEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print5printEPK19__FlashStringHelper
	.type	_ZN5Print5printEPK19__FlashStringHelper, @function
_ZN5Print5printEPK19__FlashStringHelper:
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
	movw r16,r24
	movw r14,r22
	ldi r29,0
	ldi r28,0
.L10:
	movw r30,r14
	add r30,r28
	adc r31,r29
/* #APP */
 ;  49 "C:\Arduino\hardware\arduino\avr\cores\arduino\Print.cpp" 1
	lpm r22, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	breq .L8
	movw r26,r16
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r16
	icall
	or r24,r25
	breq .L8
	adiw r28,1
	rjmp .L10
.L8:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print5printEPK19__FlashStringHelper, .-_ZN5Print5printEPK19__FlashStringHelper
	.section	.text._ZN5Print5printERK6String,"ax",@progbits
.global	_ZN5Print5printERK6String
	.type	_ZN5Print5printERK6String, @function
_ZN5Print5printERK6String:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	ld r22,X+
	ld r23,X
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	ijmp
	.size	_ZN5Print5printERK6String, .-_ZN5Print5printERK6String
	.section	.text._ZN5Print5printEPKc,"ax",@progbits
.global	_ZN5Print5printEPKc
	.type	_ZN5Print5printEPKc, @function
_ZN5Print5printEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L19
	jmp _ZN5Print5writeEPKc.part.2
.L19:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
	.section	.text._ZN5Print5printEc,"ax",@progbits
.global	_ZN5Print5printEc
	.type	_ZN5Print5printEc, @function
_ZN5Print5printEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ijmp
	.size	_ZN5Print5printEc, .-_ZN5Print5printEc
	.section	.text._ZN5Print5printERK9Printable,"ax",@progbits
.global	_ZN5Print5printERK9Printable
	.type	_ZN5Print5printERK9Printable, @function
_ZN5Print5printERK9Printable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r24
	movw r24,r26
	ijmp
	.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
	.section	.rodata._ZN5Print7printlnEv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\r\n"
	.section	.text._ZN5Print7printlnEv,"ax",@progbits
.global	_ZN5Print7printlnEv
	.type	_ZN5Print7printlnEv, @function
_ZN5Print7printlnEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	jmp _ZN5Print5writeEPKc.part.2
	.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
	.section	.text._ZN5Print7printlnEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print7printlnEPK19__FlashStringHelper
	.type	_ZN5Print7printlnEPK19__FlashStringHelper, @function
_ZN5Print7printlnEPK19__FlashStringHelper:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEPK19__FlashStringHelper
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEPK19__FlashStringHelper, .-_ZN5Print7printlnEPK19__FlashStringHelper
	.section	.text._ZN5Print7printlnERK6String,"ax",@progbits
.global	_ZN5Print7printlnERK6String
	.type	_ZN5Print7printlnERK6String, @function
_ZN5Print7printlnERK6String:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printERK6String
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnERK6String, .-_ZN5Print7printlnERK6String
	.section	.text._ZN5Print7printlnEPKc,"ax",@progbits
.global	_ZN5Print7printlnEPKc
	.type	_ZN5Print7printlnEPKc, @function
_ZN5Print7printlnEPKc:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	ldi r29,0
	ldi r28,0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L26
	call _ZN5Print5writeEPKc.part.2
	movw r28,r24
.L26:
	movw r24,r16
	call _ZN5Print7printlnEv
	add r24,r28
	adc r25,r29
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
	.section	.text._ZN5Print7printlnEc,"ax",@progbits
.global	_ZN5Print7printlnEc
	.type	_ZN5Print7printlnEc, @function
_ZN5Print7printlnEc:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEc
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
	.section	.text._ZN5Print7printlnERK9Printable,"ax",@progbits
.global	_ZN5Print7printlnERK9Printable
	.type	_ZN5Print7printlnERK9Printable, @function
_ZN5Print7printlnERK9Printable:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printERK9Printable
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
	.section	.text._ZN5Print11printNumberEmh,"ax",@progbits
.global	_ZN5Print11printNumberEmh
	.type	_ZN5Print11printNumberEmh, @function
_ZN5Print11printNumberEmh:
	push r8
	push r9
	push r10
	push r11
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
/* stack size = 43 */
.L__stack_usage = 43
	movw r14,r24
	movw r30,r20
	movw r24,r22
	std Y+33,__zero_reg__
	cpi r18,lo8(2)
	brsh .L31
	ldi r18,lo8(10)
.L31:
	movw r16,r28
	subi r16,-33
	sbci r17,-1
	mov r8,r18
	mov r9,__zero_reg__
	mov r11,__zero_reg__
	mov r10,__zero_reg__
.L34:
	movw r22,r30
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r30,r18
	movw r24,r20
	cpi r22,lo8(10)
	brge .L32
	subi r22,lo8(-(48))
.L33:
	movw r26,r16
	st -X,r22
	movw r16,r26
	or r18,r19
	or r18,r20
	or r18,r21
	brne .L34
	ldi r25,0
	ldi r24,0
	sbiw r26,0
	breq .L30
	movw r22,r26
	movw r24,r14
	call _ZN5Print5writeEPKc.part.2
.L30:
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L32:
	subi r22,lo8(-(55))
	rjmp .L33
	.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
	.section	.text._ZN5Print5printEli,"ax",@progbits
.global	_ZN5Print5printEli
	.type	_ZN5Print5printEli, @function
_ZN5Print5printEli:
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L40
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ijmp
.L40:
	cpi r18,10
	cpc r19,__zero_reg__
	brne .L41
	ldi r18,lo8(10)
	sbrs r23,7
	rjmp .L41
	movw r12,r20
	movw r14,r22
	movw r28,r24
	ldi r22,lo8(45)
	call _ZN5Print5printEc
	movw r16,r24
	clr r20
	clr r21
	movw r22,r20
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	ldi r18,lo8(10)
	movw r24,r28
	call _ZN5Print11printNumberEmh
	add r24,r16
	adc r25,r17
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
.L41:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	jmp _ZN5Print11printNumberEmh
	.size	_ZN5Print5printEli, .-_ZN5Print5printEli
	.section	.text._ZN5Print5printEii,"ax",@progbits
.global	_ZN5Print5printEii
	.type	_ZN5Print5printEii, @function
_ZN5Print5printEii:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	movw r20,r22
	lsl r23
	sbc r22,r22
	sbc r23,r23
	jmp _ZN5Print5printEli
	.size	_ZN5Print5printEii, .-_ZN5Print5printEii
	.section	.text._ZN5Print7printlnEii,"ax",@progbits
.global	_ZN5Print7printlnEii
	.type	_ZN5Print7printlnEii, @function
_ZN5Print7printlnEii:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEii
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
	.section	.text._ZN5Print7printlnEli,"ax",@progbits
.global	_ZN5Print7printlnEli
	.type	_ZN5Print7printlnEli, @function
_ZN5Print7printlnEli:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEli
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
	.section	.text._ZN5Print5printEmi,"ax",@progbits
.global	_ZN5Print5printEmi
	.type	_ZN5Print5printEmi, @function
_ZN5Print5printEmi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L49
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
	ijmp
.L49:
	jmp _ZN5Print11printNumberEmh
	.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
	.section	.text._ZN5Print5printEhi,"ax",@progbits
.global	_ZN5Print5printEhi
	.type	_ZN5Print5printEhi, @function
_ZN5Print5printEhi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	mov r20,r22
	ldi r21,0
	ldi r23,0
	ldi r22,0
	jmp _ZN5Print5printEmi
	.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
	.section	.text._ZN5Print7printlnEhi,"ax",@progbits
.global	_ZN5Print7printlnEhi
	.type	_ZN5Print7printlnEhi, @function
_ZN5Print7printlnEhi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEhi
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
	.section	.text._ZN5Print5printEji,"ax",@progbits
.global	_ZN5Print5printEji
	.type	_ZN5Print5printEji, @function
_ZN5Print5printEji:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	movw r20,r22
	ldi r23,0
	ldi r22,0
	jmp _ZN5Print5printEmi
	.size	_ZN5Print5printEji, .-_ZN5Print5printEji
	.section	.text._ZN5Print7printlnEji,"ax",@progbits
.global	_ZN5Print7printlnEji
	.type	_ZN5Print7printlnEji, @function
_ZN5Print7printlnEji:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEji
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
	.section	.text._ZN5Print7printlnEmi,"ax",@progbits
.global	_ZN5Print7printlnEmi
	.type	_ZN5Print7printlnEmi, @function
_ZN5Print7printlnEmi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
.global	__unordsf2
	.section	.rodata._ZN5Print10printFloatEdh.str1.1,"aMS",@progbits,1
.LC1:
	.string	"nan"
.global	__lesf2
.LC2:
	.string	"inf"
.global	__gtsf2
.LC3:
	.string	"ovf"
.global	__ltsf2
.global	__divsf3
.global	__addsf3
.global	__fixunssfsi
.global	__floatunsisf
.global	__subsf3
.global	__mulsf3
	.section	.text._ZN5Print10printFloatEdh,"ax",@progbits
.global	_ZN5Print10printFloatEdh
	.type	_ZN5Print10printFloatEdh, @function
_ZN5Print10printFloatEdh:
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
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 17 */
.L__stack_usage = 17
	movw r28,r24
	movw r12,r20
	movw r14,r22
	mov r7,r18
	movw r20,r22
	movw r18,r12
	movw r24,r22
	movw r22,r12
	call __unordsf2
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	cpse r24,__zero_reg__
	rjmp .L80
	movw r8,r12
	movw r10,r14
	clt
	bld r11,7
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	movw r24,r10
	movw r22,r8
	call __unordsf2
	cpse r24,__zero_reg__
	rjmp .L58
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	movw r24,r10
	movw r22,r8
	call __lesf2
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	cp __zero_reg__,r24
	brlt .L80
.L58:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(79)
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .L78
.L61:
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
.L80:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
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
	jmp _ZN5Print5writeEPKc.part.2
.L78:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-49)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrc r24,7
	rjmp .L61
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __ltsf2
	mov r3,__zero_reg__
	mov r2,__zero_reg__
	sbrs r24,7
	rjmp .L62
	ldi r22,lo8(45)
	movw r24,r28
	call _ZN5Print5printEc
	movw r2,r24
	bst r15,7
	com r15
	bld r15,7
	com r15
.L62:
	ldi r17,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,lo8(63)
.L65:
	cp r7,r17
	breq .L64
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	call __divsf3
	subi r17,lo8(-(1))
	rjmp .L65
.L64:
	movw r20,r14
	movw r18,r12
	call __addsf3
	movw r4,r22
	movw r6,r24
	call __fixunssfsi
	movw r8,r22
	movw r10,r24
	ldi r18,lo8(10)
	movw r22,r24
	movw r20,r8
	movw r24,r28
	call _ZN5Print11printNumberEmh
	movw r14,r24
	add r14,r2
	adc r15,r3
	tst r17
	breq .L55
	movw r24,r10
	movw r22,r8
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	movw r24,r6
	movw r22,r4
	call __subsf3
	movw r8,r22
	movw r10,r24
	ldi r22,lo8(46)
	movw r24,r28
	call _ZN5Print5printEc
	add r14,r24
	adc r15,r25
.L67:
	subi r17,1
	brcs .L55
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	movw r24,r10
	movw r22,r8
	call __mulsf3
	movw r4,r22
	movw r6,r24
	call __fixunssfsi
	movw r8,r22
	ldi r20,lo8(10)
	ldi r21,0
	movw r24,r28
	call _ZN5Print5printEji
	add r14,r24
	adc r15,r25
	movw r22,r8
	ldi r25,0
	ldi r24,0
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	movw r24,r6
	movw r22,r4
	call __subsf3
	movw r8,r22
	movw r10,r24
	rjmp .L67
.L55:
	movw r24,r14
/* epilogue start */
	pop r29
	pop r28
	pop r17
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
	.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
	.section	.text._ZN5Print5printEdi,"ax",@progbits
.global	_ZN5Print5printEdi
	.type	_ZN5Print5printEdi, @function
_ZN5Print5printEdi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp _ZN5Print10printFloatEdh
	.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
	.section	.text._ZN5Print7printlnEdi,"ax",@progbits
.global	_ZN5Print7printlnEdi
	.type	_ZN5Print7printlnEdi, @function
_ZN5Print7printlnEdi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print10printFloatEdh
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
	.weak	_ZTV5Print
	.section	.rodata._ZTV5Print,"aG",@progbits,_ZTV5Print,comdat
	.type	_ZTV5Print, @object
	.size	_ZTV5Print, 12
_ZTV5Print:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(_ZN5Print17availableForWriteEv)
	.word	gs(_ZN5Print5flushEv)
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
