	.file	"ee_atmega_timer1ctc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.OsEE_atmega_startTimer1,"ax",@progbits
.global	OsEE_atmega_startTimer1
	.type	OsEE_atmega_startTimer1, @function
OsEE_atmega_startTimer1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts 129,__zero_reg__
	sts 128,__zero_reg__
	sts 130,__zero_reg__
	sts 132+1,__zero_reg__
	sts 132,__zero_reg__
	cp r22,__zero_reg__
	ldi r18,16
	cpc r23,r18
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
	out 0x16,r25
	sts 111,r25
	sts 136+1,r23
	sts 136,r22
	ori r24,lo8(8)
	sts 129,r24
/* epilogue start */
	ret
.L2:
	cp r22,__zero_reg__
	ldi r18,-128
	cpc r23,r18
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
	cpi r22,-4
	ldi r18,-1
	cpc r23,r18
	ldi r18,3
	cpc r24,r18
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
	cpc r23,__zero_reg__
	ldi r18,16
	cpc r24,r18
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
	.size	OsEE_atmega_startTimer1, .-OsEE_atmega_startTimer1
	.ident	"GCC: (GNU) 7.3.0"
