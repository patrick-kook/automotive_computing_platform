	.file	"Stream.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZN6Stream9timedReadEv,"ax",@progbits
.global	_ZN6Stream9timedReadEv
	.type	_ZN6Stream9timedReadEv, @function
_ZN6Stream9timedReadEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L3:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+10
	ldd r31,Z+11
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	sbrs r25,7
	rjmp .L1
	call millis
	ldd r16,Y+8
	ldd r17,Y+9
	ldd r18,Y+10
	ldd r19,Y+11
	sub r22,r16
	sbc r23,r17
	sbc r24,r18
	sbc r25,r19
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r18,Y+6
	ldd r19,Y+7
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brlo .L3
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9timedReadEv, .-_ZN6Stream9timedReadEv
	.section	.text._ZN6Stream9timedPeekEv,"ax",@progbits
.global	_ZN6Stream9timedPeekEv
	.type	_ZN6Stream9timedPeekEv, @function
_ZN6Stream9timedPeekEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L7:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+12
	ldd r31,Z+13
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	sbrs r25,7
	rjmp .L5
	call millis
	ldd r16,Y+8
	ldd r17,Y+9
	ldd r18,Y+10
	ldd r19,Y+11
	sub r22,r16
	sbc r23,r17
	sbc r24,r18
	sbc r25,r19
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r18,Y+6
	ldd r19,Y+7
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brlo .L7
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L5:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
	.section	.text._ZN6Stream13peekNextDigitE13LookaheadModeb,"ax",@progbits
.global	_ZN6Stream13peekNextDigitE13LookaheadModeb
	.type	_ZN6Stream13peekNextDigitE13LookaheadModeb, @function
_ZN6Stream13peekNextDigitE13LookaheadModeb:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r16,r22
	mov r15,r20
.L15:
	movw r24,r28
	call _ZN6Stream9timedPeekEv
	sbrc r25,7
	rjmp .L9
	cpi r24,45
	cpc r25,__zero_reg__
	breq .L9
	movw r18,r24
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L9
	tst r15
	breq .L11
	cpi r24,46
	cpc r25,__zero_reg__
	breq .L9
.L11:
	cpi r16,1
	cpc r17,__zero_reg__
	breq .L17
	cpi r16,2
	cpc r17,__zero_reg__
	brne .L12
	cpi r24,13
	cpc r25,__zero_reg__
	breq .L12
	brge .L14
	sbiw r24,9
	sbiw r24,2
	brlo .L12
.L17:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L9:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L14:
	sbiw r24,32
	brne .L17
.L12:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+10
	ldd r31,Z+11
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	rjmp .L15
	.size	_ZN6Stream13peekNextDigitE13LookaheadModeb, .-_ZN6Stream13peekNextDigitE13LookaheadModeb
	.section	.text._ZN6Stream10setTimeoutEm,"ax",@progbits
.global	_ZN6Stream10setTimeoutEm
	.type	_ZN6Stream10setTimeoutEm, @function
_ZN6Stream10setTimeoutEm:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+4,r20
	std Z+5,r21
	std Z+6,r22
	std Z+7,r23
/* epilogue start */
	ret
	.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
	.section	.text._ZN6Stream8parseIntE13LookaheadModec,"ax",@progbits
.global	_ZN6Stream8parseIntE13LookaheadModec
	.type	_ZN6Stream8parseIntE13LookaheadModec, @function
_ZN6Stream8parseIntE13LookaheadModec:
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
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r24
	mov r28,r20
	ldi r20,0
	call _ZN6Stream13peekNextDigitE13LookaheadModeb
	movw r30,r24
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	sbrc r25,7
	rjmp .L34
	mov r11,__zero_reg__
	mov __tmp_reg__,r28
	lsl r0
	sbc r29,r29
.L36:
	cp r28,r30
	cpc r29,r31
	breq .L37
	cpi r30,45
	cpc r31,__zero_reg__
	brne .+2
	rjmp .L40
	movw r24,r30
	sbiw r24,48
	sbiw r24,10
	brsh .L37
	ldi r26,lo8(10)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	movw r12,r30
	lsl r31
	sbc r14,r14
	sbc r15,r15
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	ldi r24,48
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.L37:
	movw r26,r16
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+10
	ldd r31,Z+11
	mov r30,__tmp_reg__
	movw r24,r16
	icall
	movw r24,r16
	call _ZN6Stream9timedPeekEv
	movw r30,r24
	sbiw r24,48
	sbiw r24,10
	brlo .L36
	cp r28,r30
	cpc r29,r31
	breq .L36
	tst r11
	breq .L34
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.L34:
	movw r24,r14
	movw r22,r12
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
	ret
.L40:
	clr r11
	inc r11
	rjmp .L37
	.size	_ZN6Stream8parseIntE13LookaheadModec, .-_ZN6Stream8parseIntE13LookaheadModec
.global	__mulsf3
.global	__floatsisf
	.section	.text._ZN6Stream10parseFloatE13LookaheadModec,"ax",@progbits
.global	_ZN6Stream10parseFloatE13LookaheadModec
	.type	_ZN6Stream10parseFloatE13LookaheadModec, @function
_ZN6Stream10parseFloatE13LookaheadModec:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r10,r24
	mov r16,r20
	ldi r20,lo8(1)
	call _ZN6Stream13peekNextDigitE13LookaheadModeb
	movw r30,r24
	ldi r22,0
	ldi r23,0
	movw r24,r22
	sbrc r31,7
	rjmp .L44
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	ldi r24,lo8(-128)
	mov r6,r24
	ldi r24,lo8(63)
	mov r7,r24
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	ldi r28,0
	ldi r29,0
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
.L46:
	cp r16,r30
	cpc r17,r31
	breq .L47
	cpi r30,45
	cpc r31,__zero_reg__
	brne .+2
	rjmp .L52
	cpi r30,46
	cpc r31,__zero_reg__
	brne .+2
	rjmp .L53
	movw r24,r30
	sbiw r24,48
	sbiw r24,10
	brsh .L47
	ldi r26,lo8(10)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	movw r12,r30
	lsl r31
	sbc r14,r14
	sbc r15,r15
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	ldi r24,48
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	tst r28
	breq .L47
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	movw r24,r6
	movw r22,r4
	call __mulsf3
	movw r4,r22
	movw r6,r24
.L47:
	movw r26,r10
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+10
	ldd r31,Z+11
	mov r30,__tmp_reg__
	movw r24,r10
	icall
	movw r24,r10
	call _ZN6Stream9timedPeekEv
	movw r30,r24
	sbiw r24,48
	sbiw r24,10
	brlo .L46
	cpi r30,46
	cpc r31,__zero_reg__
	brne .L49
	tst r28
	brne .+2
	rjmp .L46
.L49:
	cp r16,r30
	cpc r17,r31
	brne .+2
	rjmp .L46
	tst r29
	breq .L50
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.L50:
	movw r24,r14
	movw r22,r12
	call __floatsisf
	tst r28
	breq .L44
	movw r20,r6
	movw r18,r4
	call __mulsf3
.L44:
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
.L52:
	ldi r29,lo8(1)
	rjmp .L47
.L53:
	ldi r28,lo8(1)
	rjmp .L47
	.size	_ZN6Stream10parseFloatE13LookaheadModec, .-_ZN6Stream10parseFloatE13LookaheadModec
	.section	.text._ZN6Stream9readBytesEPcj,"ax",@progbits
.global	_ZN6Stream9readBytesEPcj
	.type	_ZN6Stream9readBytesEPcj, @function
_ZN6Stream9readBytesEPcj:
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
	movw r14,r22
	movw r16,r22
	add r16,r20
	adc r17,r21
	movw r28,r22
.L68:
	movw r12,r28
	sub r12,r14
	sbc r13,r15
	cp r28,r16
	cpc r29,r17
	breq .L66
	movw r24,r10
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L66
	st Y+,r24
	rjmp .L68
.L66:
	movw r24,r12
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
	.size	_ZN6Stream9readBytesEPcj, .-_ZN6Stream9readBytesEPcj
	.section	.text._ZN6Stream14readBytesUntilEcPcj,"ax",@progbits
.global	_ZN6Stream14readBytesUntilEcPcj
	.type	_ZN6Stream14readBytesUntilEcPcj, @function
_ZN6Stream14readBytesUntilEcPcj:
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
	movw r8,r24
	movw r14,r20
	movw r16,r20
	add r16,r18
	adc r17,r19
	movw r28,r20
	mov r12,r22
	lsl r22
	sbc r13,r13
.L71:
	movw r10,r28
	sub r10,r14
	sbc r11,r15
	cp r28,r16
	cpc r29,r17
	breq .L69
	movw r24,r8
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L69
	cp r12,r24
	cpc r13,r25
	breq .L69
	st Y+,r24
	rjmp .L71
.L69:
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
	pop r9
	pop r8
	ret
	.size	_ZN6Stream14readBytesUntilEcPcj, .-_ZN6Stream14readBytesUntilEcPcj
	.section	.rodata._ZN6Stream10readStringEv.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text._ZN6Stream10readStringEv,"ax",@progbits
.global	_ZN6Stream10readStringEv
	.type	_ZN6Stream10readStringEv, @function
_ZN6Stream10readStringEv:
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
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
.L75:
	movw r24,r16
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L72
	mov r22,r24
	movw r24,r28
	call _ZN6String6concatEc
	rjmp .L75
.L72:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream10readStringEv, .-_ZN6Stream10readStringEv
	.section	.text._ZN6Stream15readStringUntilEc,"ax",@progbits
.global	_ZN6Stream15readStringUntilEc
	.type	_ZN6Stream15readStringUntilEc, @function
_ZN6Stream15readStringUntilEc:
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
	mov r16,r20
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	movw r24,r14
	call _ZN6Stream9timedReadEv
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
.L78:
	sbrc r25,7
	rjmp .L76
	cp r16,r24
	cpc r17,r25
	breq .L76
	mov r22,r24
	movw r24,r28
	call _ZN6String6concatEc
	movw r24,r14
	call _ZN6Stream9timedReadEv
	rjmp .L78
.L76:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN6Stream15readStringUntilEc, .-_ZN6Stream15readStringUntilEc
	.section	.text._ZN6Stream9findMultiEPNS_11MultiTargetEi,"ax",@progbits
.global	_ZN6Stream9findMultiEPNS_11MultiTargetEi
	.type	_ZN6Stream9findMultiEPNS_11MultiTargetEi, @function
_ZN6Stream9findMultiEPNS_11MultiTargetEi:
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
	ldi r18,lo8(6)
	mul r18,r20
	movw r10,r0
	mul r18,r21
	add r11,r0
	clr __zero_reg__
	add r10,r22
	adc r11,r23
	movw r30,r22
.L83:
	cp r30,r10
	cpc r31,r11
	brlo .L105
	movw r2,r22
	movw r8,r24
	clr r6
	inc r6
	mov r7,__zero_reg__
.L80:
	movw r24,r8
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L94
	movw r30,r2
.L93:
	cp r30,r10
	cpc r31,r11
	brsh .L80
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	movw r26,r22
	add r26,r20
	adc r27,r21
	ld r18,X
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	cp r18,r24
	cpc r19,r25
	brne .L84
	subi r20,-1
	sbci r21,-1
	std Z+5,r21
	std Z+4,r20
	ldd r18,Z+2
	ldd r19,Z+3
	cp r20,r18
	cpc r21,r19
	breq .+2
	rjmp .L86
	sub r30,r2
	sbc r31,r3
	rjmp .L106
.L105:
	ldd r18,Z+2
	ldd r19,Z+3
	or r18,r19
	brne .L81
	sub r30,r22
	sbc r31,r23
.L106:
	asr r31
	ror r30
	ldi r18,lo8(-85)
	ldi r19,lo8(-86)
	mul r30,r18
	movw r24,r0
	mul r30,r19
	add r25,r0
	mul r31,r18
	add r25,r0
	clr r1
.L79:
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
.L81:
	adiw r30,6
	rjmp .L83
.L84:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L86
.L102:
	ldd r14,Z+4
	ldd r15,Z+5
	movw r18,r14
	subi r18,1
	sbc r19,__zero_reg__
	std Z+5,r19
	std Z+4,r18
	movw r26,r22
	add r26,r18
	adc r27,r19
	ld r26,X
	mov __tmp_reg__,r26
	lsl r0
	sbc r27,r27
	cp r26,r24
	cpc r27,r25
	brne .L88
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L89
	std Z+5,r7
	std Z+4,r6
.L86:
	adiw r30,6
	rjmp .L93
.L89:
	movw r12,r22
	movw r16,r20
	sub r16,r18
	sbc r17,r19
	add r16,r22
	adc r17,r23
	ldi r27,0
	ldi r26,0
.L91:
	movw r28,r12
	ld r4,Y+
	movw r12,r28
	movw r28,r16
	ld r5,Y+
	movw r16,r28
	cpse r4,r5
	rjmp .L90
	adiw r26,1
	cp r26,r18
	cpc r27,r19
	brlo .L91
.L90:
	cp r26,r18
	cpc r27,r19
	brne .L102
	std Z+5,r15
	std Z+4,r14
	rjmp .L86
.L88:
	or r18,r19
	brne .L102
	rjmp .L86
.L94:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L79
	.size	_ZN6Stream9findMultiEPNS_11MultiTargetEi, .-_ZN6Stream9findMultiEPNS_11MultiTargetEi
	.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",@progbits
.global	_ZN6Stream9findUntilEPcjS0_j
	.type	_ZN6Stream9findUntilEPcjS0_j, @function
_ZN6Stream9findUntilEPcjS0_j:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 18 */
.L__stack_usage = 18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L108
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	std Y+2,r23
	std Y+1,r22
	std Y+4,r21
	std Y+3,r20
	ldi r20,lo8(1)
	ldi r21,0
.L119:
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6Stream9findMultiEPNS_11MultiTargetEi
	ldi r18,lo8(1)
	or r24,r25
	breq .L107
	ldi r18,0
.L107:
	mov r24,r18
/* epilogue start */
	adiw r28,12
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
.L108:
	movw r14,r28
	ldi r30,5
	add r14,r30
	adc r15,__zero_reg__
	ldi r26,lo8(8)
	movw r30,r14
	0:
	st Z+,__zero_reg__
	dec r26
	brne 0b
	std Y+2,r23
	std Y+1,r22
	std Y+4,r21
	std Y+3,r20
	std Y+8,r19
	std Y+7,r18
	std Y+10,r17
	std Y+9,r16
	ldi r20,lo8(2)
	ldi r21,0
	rjmp .L119
	.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
	.section	.text._ZN6Stream9findUntilEPcS0_,"ax",@progbits
.global	_ZN6Stream9findUntilEPcS0_
	.type	_ZN6Stream9findUntilEPcS0_, @function
_ZN6Stream9findUntilEPcS0_:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r18,r20
	movw r30,r20
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r16,r30
	sub r16,r20
	sbc r17,r21
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r20,r30
	sub r20,r22
	sbc r21,r23
	call _ZN6Stream9findUntilEPcjS0_j
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
	.section	.text._ZN6Stream4findEPcj,"ax",@progbits
.global	_ZN6Stream4findEPcj
	.type	_ZN6Stream4findEPcj, @function
_ZN6Stream4findEPcj:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	std Y+2,r23
	std Y+1,r22
	std Y+4,r21
	std Y+3,r20
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6Stream9findMultiEPNS_11MultiTargetEi
	ldi r18,lo8(1)
	or r24,r25
	breq .L122
	ldi r18,0
.L122:
	mov r24,r18
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
	.section	.text._ZN6Stream4findEPc,"ax",@progbits
.global	_ZN6Stream4findEPc
	.type	_ZN6Stream4findEPc, @function
_ZN6Stream4findEPc:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	sub r30,r22
	sbc r31,r23
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	std Y+2,r23
	std Y+1,r22
	std Y+4,r31
	std Y+3,r30
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6Stream9findMultiEPNS_11MultiTargetEi
	ldi r18,lo8(1)
	or r24,r25
	breq .L127
	ldi r18,0
.L127:
	mov r24,r18
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
