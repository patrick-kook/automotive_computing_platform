	.file	"Tone.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._Z4tonehjm,"ax",@progbits
.global	_Z4tonehjm
	.type	_Z4tonehjm, @function
_Z4tonehjm:
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
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r16,r22
	movw r4,r18
	movw r6,r20
	lds r25,_ZL9tone_pins
	cp r24,r25
	breq .L2
	cpi r25,lo8(-1)
	brne .+2
	rjmp .L3
.L1:
/* epilogue start */
	pop __tmp_reg__
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
.L2:
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  135 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	std Y+5,r25
	sbrc r25,7
	rjmp .L1
.L5:
	ldi r22,lo8(1)
	call pinMode
	ldd r24,Y+5
	tst r24
	breq .L11
.L31:
	ldd r25,Y+5
	cpi r25,lo8(2)
	breq .+2
	rjmp .L12
.L11:
	movw r8,r16
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L38
	ldi r22,lo8(64)
	ldi r23,lo8(66)
	ldi r24,lo8(15)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldd r25,Y+5
	cpi r25,lo8(2)
	breq .+2
	rjmp .L14
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L39
	ldi r22,lo8(-112)
	ldi r23,lo8(-48)
	ldi r24,lo8(3)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r25,1
	sub r12,r25
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L16
	ldi r24,lo8(3)
.L23:
	lds r25,177
	andi r25,lo8(-8)
	or r24,r25
	sts 177,r24
	rjmp .L24
.L3:
	sts _ZL9tone_pins,r24
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  143 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	std Y+5,r25
	cpi r25,lo8(-1)
	brne .+2
	rjmp .L1
	cpi r25,lo8(1)
	breq .L8
	brlo .L9
	cpi r25,lo8(2)
	brne .+2
	rjmp .L10
	ldd r25,Y+5
	sbrc r25,7
	rjmp .L1
	ldi r22,lo8(1)
	call pinMode
	rjmp .L31
.L9:
	out 0x24,__zero_reg__
	out 0x25,__zero_reg__
	in r25,0x24
	ori r25,lo8(2)
	out 0x24,r25
	in r25,0x25
	ori r25,lo8(1)
	out 0x25,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  163 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  163 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer0_pin_port+1,r21
	sts timer0_pin_port,r20
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  164 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer0_pin_mask,r30
	std Y+5,__zero_reg__
	rjmp .L5
.L8:
	sts 128,__zero_reg__
	sts 129,__zero_reg__
	lds r25,129
	ori r25,lo8(8)
	sts 129,r25
	lds r25,129
	ori r25,lo8(1)
	sts 129,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  175 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  175 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer1_pin_port+1,r21
	sts timer1_pin_port,r20
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  176 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer1_pin_mask,r30
	rjmp .L5
.L10:
	sts 176,__zero_reg__
	sts 177,__zero_reg__
	lds r25,176
	ori r25,lo8(2)
	sts 176,r25
	lds r25,177
	ori r25,lo8(1)
	sts 177,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  187 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  187 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer2_pin_port+1,r21
	sts timer2_pin_port,r20
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  188 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer2_pin_mask,r30
	rjmp .L5
.L14:
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L40
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldd r25,Y+5
	tst r25
	brne .+2
	rjmp .L18
	ldi r24,-1
	cp r12,r24
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L37
	rjmp .L54
.L36:
	ldi r22,lo8(36)
	ldi r23,lo8(-12)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(5)
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L23
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	rjmp .L22
.L38:
	ldi r24,lo8(1)
.L13:
	ldd r25,Y+5
	cpse r25,__zero_reg__
	rjmp .L23
.L34:
	in r25,0x25
	andi r25,lo8(-8)
	or r24,r25
	out 0x25,r24
.L24:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .+2
	rjmp .L26
.L28:
	ldd r25,Y+5
	cpi r25,lo8(1)
	brne .+2
	rjmp .L27
	cpi r25,lo8(2)
	brne .+2
	rjmp .L29
	cpse r25,__zero_reg__
	rjmp .L1
	out 0x27,r12
	sts timer0_toggle_count,r18
	sts timer0_toggle_count+1,r19
	sts timer0_toggle_count+2,r20
	sts timer0_toggle_count+3,r21
	lds r24,110
	ori r24,lo8(2)
	sts 110,r24
	rjmp .L1
.L40:
	ldi r24,lo8(2)
	rjmp .L13
.L12:
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	ldi r25,1
	cpc r14,r25
	cpc r15,__zero_reg__
	brlo .L41
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r25,lo8(3)
.L25:
	ldd r24,Y+5
	cpi r24,lo8(1)
	breq .+2
	rjmp .L24
	lds r24,129
	andi r24,lo8(-8)
	or r24,r25
	sts 129,r24
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L27
.L26:
	movw r26,r16
	lsl r26
	rol r27
	movw r20,r6
	movw r18,r4
	call __muluhisi3
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	rjmp .L28
.L41:
	ldi r25,lo8(1)
	rjmp .L25
.L27:
	sts 136+1,r13
	sts 136,r12
	sts timer1_toggle_count,r18
	sts timer1_toggle_count+1,r19
	sts timer1_toggle_count+2,r20
	sts timer1_toggle_count+3,r21
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	rjmp .L1
.L29:
	sts 179,r12
	sts timer2_toggle_count,r18
	sts timer2_toggle_count+1,r19
	sts timer2_toggle_count+2,r20
	sts timer2_toggle_count+3,r21
	lds r24,112
	ori r24,lo8(2)
	sts 112,r24
	rjmp .L1
.L21:
	ldi r24,lo8(4)
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L34
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	ldi r24,10
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r24
	brne 1b
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(5)
	rjmp .L34
.L16:
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r16
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+4
	brlo .+2
	rjmp .L36
.L54:
	ldi r24,lo8(4)
	rjmp .L23
.L18:
	ldi r24,lo8(3)
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L34
.L37:
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldd r25,Y+5
	tst r25
	brne .+2
	rjmp .L21
.L22:
	ldi r24,lo8(6)
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L23
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	ldi r25,10
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r25
	brne 1b
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(7)
	rjmp .L23
.L39:
	ldi r24,lo8(2)
	rjmp .L23
	.size	_Z4tonehjm, .-_Z4tonehjm
	.section	.text._Z12disableTimerh,"ax",@progbits
.global	_Z12disableTimerh
	.type	_Z12disableTimerh, @function
_Z12disableTimerh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(1)
	breq .L57
	brlo .L58
	cpi r24,lo8(2)
	breq .L59
	ret
.L58:
	sts 110,__zero_reg__
	ret
.L57:
	lds r24,111
	andi r24,lo8(-3)
	sts 111,r24
	ret
.L59:
	lds r24,112
	andi r24,lo8(-3)
	sts 112,r24
	ldi r24,lo8(1)
	sts 176,r24
	lds r24,177
	andi r24,lo8(-8)
	ori r24,lo8(4)
	sts 177,r24
	sts 179,__zero_reg__
/* epilogue start */
	ret
	.size	_Z12disableTimerh, .-_Z12disableTimerh
	.section	.text._Z6noToneh,"ax",@progbits
.global	_Z6noToneh
	.type	_Z6noToneh, @function
_Z6noToneh:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	lds r24,_ZL9tone_pins
	cpse r28,r24
	rjmp .L62
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  486 "C:\Arduino\hardware\arduino\avr\cores\arduino\Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r25,lo8(-1)
	sts _ZL9tone_pins,r25
.L61:
	call _Z12disableTimerh
	ldi r22,0
	mov r24,r28
/* epilogue start */
	pop r28
	jmp digitalWrite
.L62:
	ldi r24,lo8(-1)
	rjmp .L61
	.size	_Z6noToneh, .-_Z6noToneh
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
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
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L64
	lds r25,timer2_pin_mask
	lds r30,timer2_pin_port
	lds r31,timer2_pin_port+1
	ld r24,Z
	eor r24,r25
	st Z,r24
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brge .L63
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts timer2_toggle_count,r24
	sts timer2_toggle_count+1,r25
	sts timer2_toggle_count+2,r26
	sts timer2_toggle_count+3,r27
.L63:
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
.L64:
	lds r24,_ZL9tone_pins
	call _Z6noToneh
	rjmp .L63
	.size	__vector_7, .-__vector_7
	.section	.data._ZL9tone_pins,"aw",@progbits
	.type	_ZL9tone_pins, @object
	.size	_ZL9tone_pins, 1
_ZL9tone_pins:
	.byte	-1
	.section	.progmem.data._ZL21tone_pin_to_timer_PGM,"a",@progbits
	.type	_ZL21tone_pin_to_timer_PGM, @object
	.size	_ZL21tone_pin_to_timer_PGM, 1
_ZL21tone_pin_to_timer_PGM:
	.byte	2
.global	timer2_pin_mask
	.section	.bss.timer2_pin_mask,"aw",@nobits
	.type	timer2_pin_mask, @object
	.size	timer2_pin_mask, 1
timer2_pin_mask:
	.zero	1
.global	timer2_pin_port
	.section	.bss.timer2_pin_port,"aw",@nobits
	.type	timer2_pin_port, @object
	.size	timer2_pin_port, 2
timer2_pin_port:
	.zero	2
.global	timer2_toggle_count
	.section	.bss.timer2_toggle_count,"aw",@nobits
	.type	timer2_toggle_count, @object
	.size	timer2_toggle_count, 4
timer2_toggle_count:
	.zero	4
.global	timer1_pin_mask
	.section	.bss.timer1_pin_mask,"aw",@nobits
	.type	timer1_pin_mask, @object
	.size	timer1_pin_mask, 1
timer1_pin_mask:
	.zero	1
.global	timer1_pin_port
	.section	.bss.timer1_pin_port,"aw",@nobits
	.type	timer1_pin_port, @object
	.size	timer1_pin_port, 2
timer1_pin_port:
	.zero	2
.global	timer1_toggle_count
	.section	.bss.timer1_toggle_count,"aw",@nobits
	.type	timer1_toggle_count, @object
	.size	timer1_toggle_count, 4
timer1_toggle_count:
	.zero	4
.global	timer0_pin_mask
	.section	.bss.timer0_pin_mask,"aw",@nobits
	.type	timer0_pin_mask, @object
	.size	timer0_pin_mask, 1
timer0_pin_mask:
	.zero	1
.global	timer0_pin_port
	.section	.bss.timer0_pin_port,"aw",@nobits
	.type	timer0_pin_port, @object
	.size	timer0_pin_port, 2
timer0_pin_port:
	.zero	2
.global	timer0_toggle_count
	.section	.bss.timer0_toggle_count,"aw",@nobits
	.type	timer0_toggle_count, @object
	.size	timer0_toggle_count, 4
timer0_toggle_count:
	.zero	4
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
