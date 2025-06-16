	.file	"ee_atmega_timer0ctc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.OsEE_atmega_startTimer0,"ax",@progbits
.global	OsEE_atmega_startTimer0
	.type	OsEE_atmega_startTimer0, @function
OsEE_atmega_startTimer0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x25,__zero_reg__
	out 0x24,__zero_reg__
	out 0x26,__zero_reg__
	cpi r22,16
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L2
	ldi r30,4
	1:
	lsl r22
	rol r23
	dec r30
	brne 1b
	subi r22,1
	sbc r23,__zero_reg__
	ldi r24,lo8(1)
.L3:
	ldi r25,lo8(2)
	out 0x15,r25
	sts 110,r25
	out 0x27,r22
	ori r24,lo8(8)
	out 0x25,r24
/* epilogue start */
	ret
.L2:
	cpi r22,-128
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L4
	lsl r22
	rol r23
	subi r22,1
	sbc r23,__zero_reg__
	ldi r24,lo8(2)
	rjmp .L3
.L4:
	cp r22,__zero_reg__
	ldi r18,4
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L5
	ldi r20,2
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r20
	brne 1b
	subi r22,1
	sbc r23,__zero_reg__
	ldi r24,lo8(3)
	rjmp .L3
.L5:
	cp r22,__zero_reg__
	ldi r18,16
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L6
	ldi r19,4
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r19
	brne 1b
	subi r22,1
	sbc r23,__zero_reg__
	ldi r24,lo8(4)
	rjmp .L3
.L6:
	ldi r18,6
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r18
	brne 1b
	subi r22,1
	sbc r23,__zero_reg__
	ldi r24,lo8(5)
	rjmp .L3
	.size	OsEE_atmega_startTimer0, .-OsEE_atmega_startTimer0
	.ident	"GCC: (GNU) 7.3.0"
