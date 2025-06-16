	.file	"WMath.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._Z10randomSeedm,"ax",@progbits
.global	_Z10randomSeedm
	.type	_Z10randomSeedm, @function
_Z10randomSeedm:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L1
	jmp srandom
.L1:
/* epilogue start */
	ret
	.size	_Z10randomSeedm, .-_Z10randomSeedm
	.section	.text._Z6randoml,"ax",@progbits
.global	_Z6randoml
	.type	_Z6randoml, @function
_Z6randoml:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L4
	call random
	movw r20,r14
	movw r18,r12
	call __divmodsi4
	movw r12,r22
	movw r14,r24
.L4:
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z6randoml, .-_Z6randoml
	.section	.text._Z6randomll,"ax",@progbits
.global	_Z6randomll
	.type	_Z6randomll, @function
_Z6randomll:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	cp r12,r18
	cpc r13,r19
	cpc r14,r20
	cpc r15,r21
	brge .L9
	movw r24,r20
	movw r22,r18
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	call _Z6randoml
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.L9:
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z6randomll, .-_Z6randomll
	.section	.text._Z3maplllll,"ax",@progbits
.global	_Z3maplllll
	.type	_Z3maplllll, @function
_Z3maplllll:
	push r4
	push r5
	push r6
	push r7
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r18
	movw r6,r20
	movw r18,r22
	movw r20,r24
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	movw r22,r24
	movw r24,r26
	sub r22,r10
	sbc r23,r11
	sbc r24,r12
	sbc r25,r13
	call __mulsi3
	movw r20,r16
	movw r18,r14
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	call __divmodsi4
	movw r24,r20
	movw r22,r18
	add r22,r10
	adc r23,r11
	adc r24,r12
	adc r25,r13
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	_Z3maplllll, .-_Z3maplllll
	.section	.text._Z8makeWordj,"ax",@progbits
.global	_Z8makeWordj
	.type	_Z8makeWordj, @function
_Z8makeWordj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	_Z8makeWordj, .-_Z8makeWordj
	.section	.text._Z8makeWordhh,"ax",@progbits
.global	_Z8makeWordhh
	.type	_Z8makeWordhh, @function
_Z8makeWordhh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r24
	mov r24,r22
/* epilogue start */
	ret
	.size	_Z8makeWordhh, .-_Z8makeWordhh
	.ident	"GCC: (GNU) 7.3.0"
