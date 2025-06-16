	.file	"ACAN2517FDSettings.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE,"ax",@progbits
.global	_ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE
	.type	_ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE, @function
_ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(8)
	brsh .L3
	ldi r25,lo8(4)
	mul r24,r25
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(CSWTCH.7))
	sbci r31,hi8(-(CSWTCH.7))
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	ret
.L3:
	ldi r22,0
	ldi r23,lo8(90)
	ldi r24,lo8(98)
	ldi r25,lo8(2)
/* epilogue start */
	ret
	.size	_ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE, .-_ZN18ACAN2517FDSettings8sysClockENS_10OscillatorE
.global	__muldi3
	.section	.text._ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm,"ax",@progbits
.global	_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm
	.type	_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm, @function
_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm:
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,42
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 42 */
/* stack size = 60 */
.L__stack_usage = 60
	std Y+42,r25
	std Y+41,r24
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+33,r12
	std Y+34,r13
	std Y+35,r14
	std Y+36,r15
	movw r26,r24
	st X,r22
	mov r12,__zero_reg__
	ldi r18,lo8(90)
	mov r13,r18
	ldi r18,lo8(98)
	mov r14,r18
	ldi r18,lo8(2)
	mov r15,r18
	cpi r22,lo8(8)
	brsh .L47
	ldi r27,lo8(4)
	mul r22,r27
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(CSWTCH.7))
	sbci r31,hi8(-(CSWTCH.7))
	ld r12,Z
	ldd r13,Z+1
	ldd r14,Z+2
	ldd r15,Z+3
.L47:
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	ldd r26,Y+41
	ldd r27,Y+42
	adiw r26,1
	st X+,r12
	st X+,r13
	st X+,r14
	st X,r15
	sbiw r26,1+3
	ldd r12,Y+17
	ldd r13,Y+18
	ldd r14,Y+19
	ldd r15,Y+20
	adiw r26,5
	st X+,r12
	st X+,r13
	st X+,r14
	st X,r15
	sbiw r26,5+3
	adiw r26,9
	st X,r16
	sbiw r26,9
	adiw r26,10
	st X,__zero_reg__
	sbiw r26,10
	adiw r26,11
	st X,__zero_reg__
	sbiw r26,11
	adiw r26,12
	st X,__zero_reg__
	sbiw r26,12
	adiw r26,13+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,13
	adiw r26,15+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,15
	adiw r26,17
	st X,__zero_reg__
	sbiw r26,17
	adiw r26,18
	st X,__zero_reg__
	sbiw r26,18
	adiw r26,19
	st X,__zero_reg__
	sbiw r26,19
	adiw r26,20
	st X,__zero_reg__
	sbiw r26,20
	adiw r26,21
	st X,__zero_reg__
	sbiw r26,21
	adiw r26,22
	st X,__zero_reg__
	sbiw r26,22
	ldi r24,lo8(1)
	adiw r26,23
	st X,r24
	sbiw r26,23
	ldi r25,lo8(3)
	adiw r26,24
	st X,r25
	sbiw r26,24
	adiw r26,25
	st X,__zero_reg__
	sbiw r26,25
	ldi r18,lo8(16)
	ldi r19,0
	adiw r26,26+1
	st X,r19
	st -X,r18
	sbiw r26,26
	adiw r26,28
	st X,r24
	sbiw r26,28
	ldi r24,lo8(7)
	adiw r26,29
	st X,r24
	sbiw r26,29
	adiw r26,30
	st X,__zero_reg__
	sbiw r26,30
	ldi r25,lo8(2)
	adiw r26,31
	st X,r25
	sbiw r26,31
	adiw r26,32
	st X,__zero_reg__
	sbiw r26,32
	adiw r26,33
	st X,r24
	sbiw r26,33
	ldi r18,lo8(31)
	adiw r26,34
	st X,r18
	sbiw r26,34
	adiw r26,35
	st X,r25
	sbiw r26,35
	ldi r18,lo8(32)
	ldi r19,0
	adiw r26,36+1
	st X,r19
	st -X,r18
	sbiw r26,36
	adiw r26,38
	st X,r24
	sbiw r26,38
	ldi r24,lo8(27)
	adiw r26,39
	st X,r24
	cpi r16,lo8(1)
	breq .+2
	rjmp .L6
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	std Y+21,r18
	std Y+22,r19
	std Y+23,r20
	std Y+24,r21
	mov r8,r19
	mov r9,r20
	mov r10,r21
	clr r11
	mov r15,r14
	mov r14,r13
	mov r13,r12
	clr r12
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	ldi r27,lo8(4)
	mov r4,r27
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	ldi r17,0
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	clr r12
	dec r12
	mov r13,r12
	movw r14,r12
	std Y+9,r12
	std Y+10,r13
	std Y+11,r14
	std Y+12,r15
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r13
.L7:
	ldi r23,-126
	cp r8,r23
	ldi r23,1
	cpc r9,r23
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brlo .+2
	rjmp .L8
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L8
	movw r26,r10
	movw r24,r8
	sbiw r24,4
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	cpi r24,126
	sbci r25,1
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brsh .L9
	movw r20,r14
	movw r18,r12
	movw r24,r10
	movw r22,r8
	call __mulsi3
	movw r18,r22
	movw r20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	call __mulsi3
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	sub r18,r22
	sbc r19,r23
	sbc r20,r24
	sbc r21,r25
	movw r26,r20
	movw r24,r18
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L9
	movw r4,r8
	movw r6,r10
	movw r16,r12
	movw r2,r14
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L9:
	movw r26,r10
	movw r24,r8
	sbiw r24,3
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	cpi r24,126
	sbci r25,1
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brsh .L10
	ldi r22,-1
	sub r8,r22
	sbc r9,r22
	sbc r10,r22
	sbc r11,r22
	movw r20,r10
	movw r18,r8
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call __mulsi3
	movw r26,r24
	movw r24,r22
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	sub r24,r18
	sbc r25,r19
	sbc r26,r20
	sbc r27,r21
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L10
	movw r4,r8
	movw r6,r10
	movw r16,r12
	movw r2,r14
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L10:
	ldi r21,1
	sub r12,r21
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r30,lo8(-126)
	mov r8,r30
	clr r9
	inc r9
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L11
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	movw r8,r18
	movw r10,r20
.L11:
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	sub r18,r22
	sbc r19,r23
	sbc r20,r24
	sbc r21,r25
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	rjmp .L7
.L8:
	movw r24,r6
	movw r22,r4
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L12
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
.L12:
	movw r14,r6
	movw r12,r4
	ldi r22,1
	sub r12,r22
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sub r12,r18
	sbc r13,r19
	sbc r14,r20
	sbc r15,r21
	ldi r23,1
	cp r12,r23
	cpc r13,r23
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brlo .L13
	subi r19,1
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	add r18,r12
	adc r19,r13
	adc r20,r14
	adc r21,r15
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r13
.L13:
	ldd r26,Y+41
	ldd r27,Y+42
	adiw r26,13+1
	st X,r17
	st -X,r16
	sbiw r26,13
	adiw r26,15+1
	st X,r13
	st -X,r12
	sbiw r26,15
	adiw r26,17
	st X,r18
	sbiw r26,17
	adiw r26,18
	st X,r18
	movw r18,r16
	movw r20,r2
	movw r24,r6
	movw r22,r4
	call __mulsi3
	movw r18,r22
	movw r20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
.L51:
	call __mulsi3
	movw r4,r22
	movw r6,r24
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	cp r4,r12
	cpc r5,r13
	cpc r6,r14
	cpc r7,r15
	brlo .+2
	rjmp .L28
	movw r26,r14
	movw r24,r12
	sub r24,r4
	sbc r25,r5
	sbc r26,r6
	sbc r27,r7
	movw r14,r24
	movw r16,r26
	ldi r18,0
	ldi r19,0
	movw r20,r18
	std Y+1,r24
	std Y+2,r15
	std Y+3,r26
	std Y+4,r17
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
.L29:
	ldi r24,lo8(64)
	mov r10,r24
	ldi r25,lo8(66)
	mov r11,r25
	ldi r18,lo8(15)
	mov r12,r18
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	call __muldi3
	movw r14,r18
	movw r16,r20
	movw r2,r22
	movw r8,r24
	movw r24,r6
	movw r22,r4
	ldd r18,Y+33
	ldd r19,Y+34
	ldd r20,Y+35
	ldd r21,Y+36
	call __umulsidi3
	movw r10,r18
	movw r12,r20
	mov r7,r22
	mov r27,r23
	mov r26,r24
	mov r31,r25
	ldi r30,lo8(1)
	movw r18,r14
	movw r20,r16
	movw r22,r2
	movw r24,r8
	mov r14,r7
	mov r15,r27
	mov r16,r26
	mov r17,r31
	call __cmpdi2
	breq .L30
	brlo .L30
	ldi r30,0
.L30:
	ldd r26,Y+41
	ldd r27,Y+42
	adiw r26,19
	st X,r30
/* epilogue start */
	adiw r28,42
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
.L6:
	mov r12,r16
	mov r13,__zero_reg__
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	std Y+29,r12
	std Y+30,r13
	std Y+31,r14
	std Y+32,r15
	movw r20,r14
	movw r18,r12
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	call __mulsi3
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	call __udivmodsi4
	std Y+37,r18
	std Y+38,r19
	std Y+39,r20
	std Y+40,r21
	movw r12,r18
	movw r14,r20
	ldi r19,2
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r19
	brne 1b
	ldd r16,Y+13
	ldd r17,Y+14
	ldd r18,Y+15
	ldd r19,Y+16
	ldi r20,2
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r20
	brne 1b
	std Y+25,r16
	std Y+26,r17
	std Y+27,r18
	std Y+28,r19
	ldi r21,lo8(4)
	mov r8,r21
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	ldi r22,lo8(48)
	mov r4,r22
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	ldi r16,0
	ldi r17,lo8(1)
	ldi r18,0
	ldi r19,0
	std Y+9,r16
	std Y+10,r17
	std Y+11,r18
	std Y+12,r19
	ldi r16,lo8(-1)
	ldi r17,lo8(-1)
	movw r18,r16
	std Y+21,r16
	std Y+22,r17
	std Y+23,r18
	std Y+24,r19
.L21:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L18
	ldi r17,1
	cp r12,r17
	cpc r13,r17
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brsh .L19
	movw r20,r10
	movw r18,r8
	movw r24,r14
	movw r22,r12
	call __mulsi3
	movw r18,r22
	movw r20,r24
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call __mulsi3
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	sub r16,r22
	sbc r17,r23
	sbc r18,r24
	sbc r19,r25
	movw r26,r18
	movw r24,r16
	ldd r16,Y+21
	ldd r17,Y+22
	ldd r18,Y+23
	ldd r19,Y+24
	cp r16,r24
	cpc r17,r25
	cpc r18,r26
	cpc r19,r27
	brlo .L19
	movw r4,r8
	movw r6,r10
	std Y+9,r12
	std Y+10,r13
	std Y+11,r14
	std Y+12,r15
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
.L19:
	ldi r17,-1
	cp r12,r17
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .L20
	ldi r18,-1
	sub r12,r18
	sbc r13,r18
	sbc r14,r18
	sbc r15,r18
	movw r20,r14
	movw r18,r12
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
	call __mulsi3
	movw r26,r24
	movw r24,r22
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	sub r24,r16
	sbc r25,r17
	sbc r26,r18
	sbc r27,r19
	ldd r16,Y+21
	ldd r17,Y+22
	ldd r18,Y+23
	ldd r19,Y+24
	cp r16,r24
	cpc r17,r25
	cpc r18,r26
	cpc r19,r27
	brlo .L20
	movw r4,r8
	movw r6,r10
	std Y+9,r12
	std Y+10,r13
	std Y+11,r14
	std Y+12,r15
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
.L20:
	ldi r17,-1
	sub r8,r17
	sbc r9,r17
	sbc r10,r17
	sbc r11,r17
	ldd r22,Y+37
	ldd r23,Y+38
	ldd r24,Y+39
	ldd r25,Y+40
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldd r16,Y+25
	ldd r17,Y+26
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	add r16,r20
	adc r17,r21
	adc r18,r22
	adc r19,r23
	std Y+25,r16
	std Y+26,r17
	std Y+27,r18
	std Y+28,r19
	ldi r21,49
	cp r8,r21
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .+2
	rjmp .L21
.L18:
	movw r24,r6
	movw r22,r4
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L22
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
.L22:
	movw r26,r6
	movw r24,r4
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sub r24,r18
	sbc r25,r19
	sbc r26,r20
	sbc r27,r21
	cpi r24,33
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlo .L23
	subi r18,32
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldi r24,lo8(32)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L23:
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	ldi r22,65
	cp r12,r22
	ldi r22,66
	cpc r13,r22
	ldi r22,15
	cpc r14,r22
	cpc r15,__zero_reg__
	brlo .L24
	mul r16,r24
	movw r22,r0
	mul r16,r25
	add r23,r0
	mul r17,r24
	add r23,r0
	clr r1
	cpi r22,64
	cpc r23,__zero_reg__
	brlo .L25
	ldi r22,lo8(63)
	ldi r23,0
.L25:
	ldd r30,Y+41
	ldd r31,Y+42
	std Z+20,r22
.L24:
	ldd r30,Y+41
	ldd r31,Y+42
	std Z+10,r24
	std Z+11,r18
	std Z+12,r18
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	movw r24,r6
	movw r22,r4
	call __mulsi3
	movw r12,r22
	movw r14,r24
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L26
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
.L26:
	movw r26,r14
	movw r24,r12
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sub r24,r18
	sbc r25,r19
	sbc r26,r20
	sbc r27,r21
	cpi r24,1
	ldi r31,1
	cpc r25,r31
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlo .L27
	subi r19,1
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	ldi r24,0
	ldi r25,lo8(1)
	ldi r26,0
	ldi r27,0
.L27:
	ldd r30,Y+41
	ldd r31,Y+42
	std Z+14,r17
	std Z+13,r16
	std Z+16,r25
	std Z+15,r24
	std Z+17,r18
	std Z+18,r18
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	call __mulsi3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	rjmp .L51
.L28:
	movw r26,r24
	movw r24,r22
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	sub r24,r16
	sbc r25,r17
	sbc r26,r18
	sbc r27,r19
	movw r12,r24
	movw r14,r26
	ldi r16,0
	ldi r17,0
	movw r18,r16
	std Y+1,r24
	std Y+2,r13
	std Y+3,r26
	std Y+4,r15
	std Y+5,r16
	std Y+6,r17
	std Y+7,r18
	std Y+8,r19
	rjmp .L29
	.size	_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm, .-_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm
.global	_ZN18ACAN2517FDSettingsC1ENS_10OscillatorEm17DataBitRateFactorm
	.set	_ZN18ACAN2517FDSettingsC1ENS_10OscillatorEm17DataBitRateFactorm,_ZN18ACAN2517FDSettingsC2ENS_10OscillatorEm17DataBitRateFactorm
	.section	.text._ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv
	.type	_ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv, @function
_ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ldd r18,Y+13
	ldd r19,Y+14
	ldi r21,0
	ldi r20,0
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
	ldd r18,Y+15
	ldd r19,Y+16
	subi r18,-1
	sbci r19,-1
	ldd r16,Y+17
	add r16,r18
	mov r17,r19
	adc r17,__zero_reg__
	movw r18,r16
	ldi r21,0
	ldi r20,0
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv, .-_ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv
	.section	.text._ZNK18ACAN2517FDSettings17actualDataBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings17actualDataBitRateEv
	.type	_ZNK18ACAN2517FDSettings17actualDataBitRateEv, @function
_ZNK18ACAN2517FDSettings17actualDataBitRateEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ldd r24,Y+9
	cpi r24,lo8(1)
	brne .L54
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZNK18ACAN2517FDSettings24actualArbitrationBitRateEv
.L54:
	ldd r18,Y+13
	ldd r19,Y+14
	ldi r21,0
	ldi r20,0
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
	ldd r16,Y+10
	mov r18,r16
	ldi r19,0
	subi r18,-1
	sbci r19,-1
	ldd r16,Y+11
	add r16,r18
	mov r17,r19
	adc r17,__zero_reg__
	movw r18,r16
	lsl r17
	sbc r20,r20
	sbc r21,r21
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZNK18ACAN2517FDSettings17actualDataBitRateEv, .-_ZNK18ACAN2517FDSettings17actualDataBitRateEv
	.section	.text._ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv
	.type	_ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv, @function
_ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	ldd r26,Z+13
	ldd r27,Z+14
	ldd r18,Z+5
	ldd r19,Z+6
	ldd r20,Z+7
	ldd r21,Z+8
	call __muluhisi3
	movw r18,r22
	movw r20,r24
	ldd r24,Z+15
	ldd r25,Z+16
	adiw r24,1
	ldd r26,Z+17
	add r26,r24
	mov r27,r25
	adc r27,__zero_reg__
	call __muluhisi3
	ldi r18,lo8(1)
	ldd r12,Z+1
	ldd r13,Z+2
	ldd r14,Z+3
	ldd r15,Z+4
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	breq .L56
	ldi r18,0
.L56:
	mov r24,r18
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv, .-_ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv
	.section	.text._ZNK18ACAN2517FDSettings16exactDataBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings16exactDataBitRateEv
	.type	_ZNK18ACAN2517FDSettings16exactDataBitRateEv, @function
_ZNK18ACAN2517FDSettings16exactDataBitRateEv:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	ldd r26,Z+9
	cpi r26,lo8(1)
	brne .L58
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	jmp _ZNK18ACAN2517FDSettings23exactArbitrationBitRateEv
.L58:
	ldd r18,Z+13
	ldd r19,Z+14
	ldi r27,0
	call __umulhisi3
	movw r18,r22
	movw r20,r24
	ldd r22,Z+5
	ldd r23,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	call __mulsi3
	movw r18,r22
	movw r20,r24
	ldd r26,Z+10
	ldi r27,0
	adiw r26,1
	ldd r24,Z+11
	add r26,r24
	adc r27,__zero_reg__
	call __mulshisi3
	ldi r18,lo8(1)
	ldd r12,Z+1
	ldd r13,Z+2
	ldd r14,Z+3
	ldd r15,Z+4
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	breq .L57
	ldi r18,0
.L57:
	mov r24,r18
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZNK18ACAN2517FDSettings16exactDataBitRateEv, .-_ZNK18ACAN2517FDSettings16exactDataBitRateEv
	.section	.text._ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv
	.type	_ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv, @function
_ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	ldd r18,Z+9
	cpi r18,lo8(1)
	breq .L63
	ldd r26,Z+10
	ldi r27,0
	adiw r26,1
	ldd r24,Z+11
	add r26,r24
	adc r27,__zero_reg__
	ldi r19,0
	call __usmulhisi3
	ldd r18,Z+15
	ldd r19,Z+16
	subi r18,-1
	sbci r19,-1
	ldd r20,Z+17
	add r20,r18
	mov r21,r19
	adc r21,__zero_reg__
	movw r12,r20
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	ldi r18,lo8(1)
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	breq .L60
	ldi r18,0
.L60:
	mov r24,r18
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L63:
	ldi r18,lo8(1)
	rjmp .L60
	.size	_ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv, .-_ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv
.global	__udivdi3
.global	__divdi3
	.section	.text._ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv
	.type	_ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv, @function
_ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv:
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
	movw r30,r24
	ldd r28,Z+15
	ldd r29,Z+16
	adiw r28,1
	ldd r24,Z+17
	add r28,r24
	adc r29,__zero_reg__
	ldd r26,Z+13
	ldd r27,Z+14
	ldd r18,Z+5
	ldd r19,Z+6
	ldd r20,Z+7
	ldd r21,Z+8
	call __muluhisi3
	movw r18,r22
	movw r20,r24
	movw r26,r28
	call __muluhisi3
	movw r12,r22
	movw r14,r24
	ldd r24,Z+1
	ldd r25,Z+2
	ldd r26,Z+3
	ldd r27,Z+4
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brsh .L65
	movw r22,r24
	movw r24,r26
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
.L66:
	ldi r18,lo8(64)
	ldi r19,lo8(66)
	ldi r20,lo8(15)
	ldi r21,0
	call __umulsidi3
	mov r29,r18
	mov r28,r19
	movw r10,r12
	movw r12,r14
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	mov r18,r29
	mov r19,r28
	call __udivdi3
	movw r22,r18
	movw r24,r20
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
.L65:
	movw r20,r14
	movw r18,r12
	sub r18,r24
	sbc r19,r25
	sbc r20,r26
	sbc r21,r27
	movw r24,r20
	movw r22,r18
	rjmp .L66
	.size	_ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv, .-_ZNK18ACAN2517FDSettings32ppmFromDesiredArbitrationBitRateEv
	.section	.text._ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv
	.type	_ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv, @function
_ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+15
	ldd r21,Z+16
	subi r20,-1
	sbci r21,-1
	movw r18,r20
	ldi r26,lo8(100)
	ldi r27,0
	call __umulhisi3
	ldd r18,Z+17
	add r18,r20
	mov r19,r21
	adc r19,__zero_reg__
	ldi r21,0
	ldi r20,0
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
/* epilogue start */
	ret
	.size	_ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv, .-_ZNK18ACAN2517FDSettings34arbitrationSamplePointFromBitStartEv
	.section	.text._ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv
	.type	_ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv, @function
_ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+10
	ldi r21,0
	subi r20,-1
	sbci r21,-1
	ldi r18,lo8(100)
	ldi r19,0
	movw r26,r20
	call __usmulhisi3
	ldd r18,Z+11
	add r18,r20
	mov r19,r21
	adc r19,__zero_reg__
	mov __tmp_reg__,r19
	lsl r0
	sbc r20,r20
	sbc r21,r21
	call __udivmodsi4
	movw r24,r20
	movw r22,r18
/* epilogue start */
	ret
	.size	_ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv, .-_ZNK18ACAN2517FDSettings27dataSamplePointFromBitStartEv
	.section	.text._ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv
	.type	_ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv, @function
_ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	ldd r24,Y+13
	ldd r25,Y+14
	sbiw r24,0
	brne .+2
	rjmp .L88
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	cpi r24,1
	sbci r25,1
	brlo .L70
	ldi r25,lo8(2)
	mov r12,r25
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L70:
	ldd r18,Y+15
	ldd r19,Y+16
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .+2
	rjmp .L71
	set
	bld r12,2
.L72:
	ldd r25,Y+17
	cpse r25,__zero_reg__
	rjmp .L73
	set
	bld r12,4
.L74:
	ldd r24,Y+18
	cpse r24,__zero_reg__
	rjmp .L75
	set
	bld r12,6
.L76:
	cp r24,r18
	cpc __zero_reg__,r19
	breq .L77
	brlo .L77
	set
	bld r13,0
.L77:
	cp r25,r24
	brsh .L78
	set
	bld r13,1
.L78:
	ldd r24,Y+9
	cpi r24,lo8(1)
	breq .L69
	movw r24,r28
	call _ZNK18ACAN2517FDSettings42dataBitRateIsAMultipleOfArbitrationBitRateEv
	cpse r24,__zero_reg__
	rjmp .L80
	set
	bld r13,2
.L80:
	ldd r18,Y+10
	cpi r18,lo8(2)
	brsh .L81
	set
	bld r13,3
.L82:
	ldd r25,Y+11
	cpse r25,__zero_reg__
	rjmp .L83
	set
	bld r13,5
.L84:
	ldd r24,Y+12
	cpse r24,__zero_reg__
	rjmp .L85
	set
	bld r13,7
.L69:
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L88:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
	rjmp .L70
.L71:
	cpi r18,1
	ldi r24,1
	cpc r19,r24
	brsh .+2
	rjmp .L72
	set
	bld r12,3
	rjmp .L72
.L73:
	cpi r25,lo8(-127)
	brsh .+2
	rjmp .L74
	set
	bld r12,5
	rjmp .L74
.L75:
	cpi r24,lo8(-127)
	brsh .+2
	rjmp .L76
	set
	bld r12,7
	rjmp .L76
.L81:
	cpi r18,lo8(33)
	brlo .L82
	set
	bld r13,4
	rjmp .L82
.L83:
	cpi r25,lo8(17)
	brlo .L84
	set
	bld r13,6
	rjmp .L84
.L85:
	cpi r24,lo8(17)
	brlo .L86
	set
	bld r14,0
.L86:
	cp r18,r24
	brsh .L87
	set
	bld r14,1
.L87:
	cp r25,r24
	brsh .L69
	set
	bld r14,2
	rjmp .L69
	.size	_ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv, .-_ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv
	.section	.text._ZNK18ACAN2517FDSettings8ramUsageEv,"ax",@progbits
.global	_ZNK18ACAN2517FDSettings8ramUsageEv
	.type	_ZNK18ACAN2517FDSettings8ramUsageEv, @function
_ZNK18ACAN2517FDSettings8ramUsageEv:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	ldd r26,Z+33
	ldi r27,0
	subi r26,lo8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	sbci r27,hi8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	ld r18,X
	ldd r26,Z+32
	ldi r19,0
	ldi r27,0
	call __umulhisi3
	movw r12,r22
	movw r14,r24
	ldd r26,Z+38
	ldi r27,0
	subi r26,lo8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	sbci r27,hi8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	ld r18,X
	ldd r26,Z+39
	ldi r19,0
	ldi r27,0
	call __umulhisi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	ldd r26,Z+29
	ldi r27,0
	subi r26,lo8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	sbci r27,hi8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	ld r18,X
	ldd r26,Z+28
	ldi r19,0
	ldi r27,0
	call __umulhisi3
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZNK18ACAN2517FDSettings8ramUsageEv, .-_ZNK18ACAN2517FDSettings8ramUsageEv
	.section	.text._ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE,"ax",@progbits
.global	_ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE
	.type	_ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE, @function
_ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	sbci r31,hi8(-(_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload))
	ld r22,Z
	ldi r23,0
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	_ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE, .-_ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE
	.section	.rodata.CSWTCH.7,"a",@progbits
	.type	CSWTCH.7, @object
	.size	CSWTCH.7, 32
CSWTCH.7:
	.byte	0
	.byte	9
	.byte	61
	.byte	0
	.byte	-128
	.byte	-124
	.byte	30
	.byte	0
	.byte	0
	.byte	90
	.byte	98
	.byte	2
	.byte	0
	.byte	45
	.byte	49
	.byte	1
	.byte	0
	.byte	45
	.byte	49
	.byte	1
	.byte	-128
	.byte	-106
	.byte	-104
	.byte	0
	.byte	0
	.byte	90
	.byte	98
	.byte	2
	.byte	0
	.byte	45
	.byte	49
	.byte	1
	.section	.rodata._ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload,"a",@progbits
	.type	_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload, @object
	.size	_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload, 8
_ZZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeEE8kPayload:
	.byte	16
	.byte	20
	.byte	24
	.byte	28
	.byte	32
	.byte	40
	.byte	56
	.byte	72
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
