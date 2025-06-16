	.file	"wiring_pulse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.pulseIn,"ax",@progbits
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  38 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r23, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  39 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpse r22,__zero_reg__
	mov r22,r23
.L2:
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
/* #APP */
 ;  46 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r16,r18
	movw r18,r20
	andi r19,15
	mov r20,r22
	mov r22,r23
	call countPulseASM
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L1
	subi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	andi r25,15
.L1:
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	pulseIn, .-pulseIn
	.section	.text.pulseInLong,"ax",@progbits
.global	pulseInLong
	.type	pulseInLong, @function
pulseInLong:
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
/* stack size = 16 */
.L__stack_usage = 16
	mov r7,r22
	movw r8,r18
	movw r10,r20
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  68 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r24,lo8(-(digital_pin_to_port_PGM))
	sbci r25,hi8(-(digital_pin_to_port_PGM))
	movw r30,r24
/* #APP */
 ;  69 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r28, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpse r22,__zero_reg__
	mov r7,r17
.L9:
	call micros
	movw r12,r22
	movw r14,r24
	ldi r29,0
	lsl r28
	rol r29
	subi r28,lo8(-(port_to_input_PGM))
	sbci r29,hi8(-(port_to_input_PGM))
.L10:
	movw r30,r28
/* #APP */
 ;  75 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	and r24,r17
	cp r24,r7
	breq .L12
.L13:
	movw r30,r28
/* #APP */
 ;  81 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r16,X
	and r16,r17
	cpse r16,r7
	rjmp .L15
	call micros
	movw r4,r22
	movw r6,r24
.L16:
	movw r30,r28
/* #APP */
 ;  88 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	and r24,r17
	cp r16,r24
	breq .L17
	call micros
	sub r22,r4
	sbc r23,r5
	sbc r24,r6
	sbc r25,r7
	rjmp .L8
.L12:
	call micros
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brsh .L10
.L14:
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L8:
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
	ret
.L15:
	call micros
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brlo .+2
	rjmp .L13
	rjmp .L14
.L17:
	call micros
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cp r8,r22
	cpc r9,r23
	cpc r10,r24
	cpc r11,r25
	brlo .+2
	rjmp .L16
	rjmp .L14
	.size	pulseInLong, .-pulseInLong
	.ident	"GCC: (GNU) 7.3.0"
