	.file	"wiring_digital.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.turnOffPWM,"ax",@progbits
	.type	turnOffPWM, @function
turnOffPWM:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(3)
	breq .L3
	brsh .L4
	cpi r24,lo8(1)
	breq .L5
	cpi r24,lo8(2)
	breq .L6
	ret
.L4:
	cpi r24,lo8(7)
	breq .L7
	cpi r24,lo8(8)
	breq .L8
	cpi r24,lo8(4)
	brne .L1
	lds r24,128
	andi r24,lo8(-33)
	rjmp .L10
.L3:
	lds r24,128
	andi r24,lo8(127)
.L10:
	sts 128,r24
	ret
.L5:
	in r24,0x24
	andi r24,lo8(127)
.L12:
	out 0x24,r24
	ret
.L6:
	in r24,0x24
	andi r24,lo8(-33)
	rjmp .L12
.L7:
	lds r24,176
	andi r24,lo8(127)
.L11:
	sts 176,r24
.L1:
/* epilogue start */
	ret
.L8:
	lds r24,176
	andi r24,lo8(-33)
	rjmp .L11
	.size	turnOffPWM, .-turnOffPWM
	.section	.text.pinMode,"ax",@progbits
.global	pinMode
	.type	pinMode, @function
pinMode:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  31 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r24,lo8(-(digital_pin_to_port_PGM))
	sbci r25,hi8(-(digital_pin_to_port_PGM))
	movw r30,r24
/* #APP */
 ;  32 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L13
	ldi r25,0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
/* #APP */
 ;  38 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  39 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpse r22,__zero_reg__
	rjmp .L15
	in r25,__SREG__
/* #APP */
 ;  43 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	com r18
	and r24,r18
	st X,r24
	ld r24,Y
	and r18,r24
.L20:
	st Y,r18
	out __SREG__,r25
.L13:
/* epilogue start */
	pop r29
	pop r28
	ret
.L15:
	cpi r22,lo8(2)
	brne .L16
	in r25,__SREG__
/* #APP */
 ;  49 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r19,X
	mov r24,r18
	com r24
	and r24,r19
	st X,r24
	ld r30,Y
	or r18,r30
	rjmp .L20
.L16:
	in r24,__SREG__
/* #APP */
 ;  55 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r30,X
	or r18,r30
	st X,r18
	out __SREG__,r24
	rjmp .L13
	.size	pinMode, .-pinMode
	.section	.text.digitalWrite,"ax",@progbits
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  140 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  141 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  142 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r28
	breq .L21
	mov r17,r22
	cpse r24,__zero_reg__
	call turnOffPWM
.L23:
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  151 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	in r24,__SREG__
/* #APP */
 ;  154 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r30,X
	cpse r17,__zero_reg__
	rjmp .L24
	com r29
	and r29,r30
.L32:
	st X,r29
	out __SREG__,r24
.L21:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L24:
	or r29,r30
	rjmp .L32
	.size	digitalWrite, .-digitalWrite
	.section	.text.digitalRead,"ax",@progbits
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  167 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  168 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  169 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r28
	breq .L37
	cpse r24,__zero_reg__
	call turnOffPWM
.L35:
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
/* #APP */
 ;  177 "C:\Arduino\hardware\arduino\avr\cores\arduino\wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r30,X
	and r30,r29
	ldi r24,lo8(1)
	ldi r25,0
	brne .L33
	ldi r24,0
.L33:
/* epilogue start */
	pop r29
	pop r28
	ret
.L37:
	ldi r24,0
	ldi r25,0
	rjmp .L33
	.size	digitalRead, .-digitalRead
.global	digital_pin_to_timer_PGM
	.section	.progmem.data.digital_pin_to_timer_PGM,"a",@progbits
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 20
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	digital_pin_to_bit_mask_PGM
	.section	.progmem.data.digital_pin_to_bit_mask_PGM,"a",@progbits
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 20
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
.global	digital_pin_to_port_PGM
	.section	.progmem.data.digital_pin_to_port_PGM,"a",@progbits
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 20
digital_pin_to_port_PGM:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
.global	port_to_input_PGM
	.section	.progmem.data.port_to_input_PGM,"a",@progbits
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 10
port_to_input_PGM:
	.word	0
	.word	0
	.word	35
	.word	38
	.word	41
.global	port_to_output_PGM
	.section	.progmem.data.port_to_output_PGM,"a",@progbits
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 10
port_to_output_PGM:
	.word	0
	.word	0
	.word	37
	.word	40
	.word	43
.global	port_to_mode_PGM
	.section	.progmem.data.port_to_mode_PGM,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 10
port_to_mode_PGM:
	.word	0
	.word	0
	.word	36
	.word	39
	.word	42
	.ident	"GCC: (GNU) 7.3.0"
