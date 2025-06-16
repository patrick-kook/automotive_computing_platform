	.file	"ee_oo_alarm.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_alarm_set_rel,"ax",@progbits
.global	osEE_alarm_set_rel
	.type	osEE_alarm_set_rel, @function
osEE_alarm_set_rel:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r22
	ld r30,X+
	ld r31,X
	ldd r26,Z+4
	ldd r27,Z+5
	cpi r26,2
	cpc r27,__zero_reg__
	brsh .L6
	std Z+7,r19
	std Z+6,r18
	sbiw r26,1
	brne .L3
	movw r28,r24
	ldd r18,Y+2
	ldd r19,Y+3
	ld r26,Y
	ldd r27,Y+1
	adiw r26,2
	ld r24,X+
	ld r25,X
	movw r22,r18
	sub r22,r20
	sbc r23,r21
	cp r22,r24
	cpc r23,r25
	brlo .L4
	add r20,r24
	adc r21,r25
.L5:
	std Z+3,r21
	std Z+2,r20
	ldi r24,lo8(4)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
.L7:
	ldi r25,0
	ldi r24,0
.L1:
/* epilogue start */
	pop r29
	pop r28
	ret
.L4:
	subi r20,1
	sbc r21,__zero_reg__
	add r20,r24
	adc r21,r25
	sub r20,r18
	sbc r21,r19
	rjmp .L5
.L3:
	ldi r18,lo8(2)
	ldi r19,0
	std Z+5,r19
	std Z+4,r18
	call osEE_counter_insert_rel_trigger
	rjmp .L7
.L6:
	ldi r24,lo8(7)
	ldi r25,0
	rjmp .L1
	.size	osEE_alarm_set_rel, .-osEE_alarm_set_rel
	.section	.text.osEE_alarm_set_abs,"ax",@progbits
.global	osEE_alarm_set_abs
	.type	osEE_alarm_set_abs, @function
osEE_alarm_set_abs:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	ld r30,X+
	ld r31,X
	ldd r26,Z+4
	ldd r27,Z+5
	cpi r26,2
	cpc r27,__zero_reg__
	brsh .L11
	std Z+7,r19
	std Z+6,r18
	sbiw r26,1
	brne .L10
	std Z+3,r21
	std Z+2,r20
	ldi r24,lo8(4)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
.L12:
	ldi r25,0
	ldi r24,0
	ret
.L10:
	ldi r18,lo8(2)
	ldi r19,0
	std Z+5,r19
	std Z+4,r18
	call osEE_counter_insert_abs_trigger
	rjmp .L12
.L11:
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
	ret
	.size	osEE_alarm_set_abs, .-osEE_alarm_set_abs
	.section	.text.osEE_alarm_cancel,"ax",@progbits
.global	osEE_alarm_cancel
	.type	osEE_alarm_cancel, @function
osEE_alarm_cancel:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L16
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L15
	ldi r24,lo8(1)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
.L17:
	ldi r25,0
	ldi r24,0
	ret
.L15:
	movw r22,r24
	movw r26,r24
	adiw r26,2
	ld r24,X+
	ld r25,X
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	call osEE_counter_cancel_trigger
	rjmp .L17
.L16:
	ldi r24,lo8(5)
	ldi r25,0
/* epilogue start */
	ret
	.size	osEE_alarm_cancel, .-osEE_alarm_cancel
	.section	.text.osEE_alarm_get,"ax",@progbits
.global	osEE_alarm_get
	.type	osEE_alarm_get, @function
osEE_alarm_get:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	ldi r24,lo8(5)
	ldi r25,0
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L18
	ldd r30,Y+2
	ldd r31,Y+3
	adiw r26,2
	ld r24,X+
	ld r25,X
	ldd r20,Z+2
	ldd r21,Z+3
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd r18,Z+2
	ldd r19,Z+3
	cp r18,r24
	cpc r19,r25
	brsh .L20
.L23:
	sub r24,r18
	sbc r25,r19
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r25,0
	ldi r24,0
.L18:
/* epilogue start */
	pop r29
	pop r28
	ret
.L20:
	add r24,r20
	adc r25,r21
	adiw r24,1
	rjmp .L23
	.size	osEE_alarm_get, .-osEE_alarm_get
	.ident	"GCC: (GNU) 7.3.0"
