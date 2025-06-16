	.file	"ee_ar_sched_table.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_st_start_rel,"ax",@progbits
.global	osEE_st_start_rel
	.type	osEE_st_start_rel, @function
osEE_st_start_rel:
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
	movw r26,r22
	ld r30,X+
	ld r31,X
	ldd r14,Z+4
	ldd r15,Z+5
	ldi r27,2
	cp r14,r27
	cpc r15,__zero_reg__
	brlo .+2
	rjmp .L6
	std Z+7,__zero_reg__
	std Z+6,__zero_reg__
	std Z+12,__zero_reg__
	std Z+11,__zero_reg__
	std Z+13,__zero_reg__
	ldi r18,lo8(3)
	std Z+10,r18
	movw r28,r24
	ldd r16,Y+2
	ldd r17,Y+3
	ld r18,Y
	ldd r19,Y+1
	movw r28,r18
	ldd r26,Y+2
	ldd r27,Y+3
	movw r18,r16
	sub r18,r20
	sbc r19,r21
	cp r18,r26
	cpc r19,r27
	brlo .L3
	movw r18,r20
	add r18,r26
	adc r19,r27
.L4:
	std Z+9,r19
	std Z+8,r18
	dec r14
	or r14,r15
	brne .L5
	std Z+3,r19
	std Z+2,r18
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
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L3:
	movw r18,r20
	subi r18,1
	sbc r19,__zero_reg__
	add r18,r26
	adc r19,r27
	sub r18,r16
	sbc r19,r17
	rjmp .L4
.L5:
	ldi r18,lo8(2)
	ldi r19,0
	std Z+5,r19
	std Z+4,r18
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r18,Z
	ldd r19,Z+1
	add r20,r18
	adc r21,r19
	call osEE_counter_insert_rel_trigger
	rjmp .L7
.L6:
	ldi r24,lo8(7)
	ldi r25,0
	rjmp .L1
	.size	osEE_st_start_rel, .-osEE_st_start_rel
	.section	.text.osEE_st_start_abs,"ax",@progbits
.global	osEE_st_start_abs
	.type	osEE_st_start_abs, @function
osEE_st_start_abs:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r22
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L12
	std Z+7,__zero_reg__
	std Z+6,__zero_reg__
	std Z+12,__zero_reg__
	std Z+11,__zero_reg__
	std Z+13,__zero_reg__
	adiw r26,8
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	sbiw r26,1
	breq .L13
	ldi r26,lo8(3)
.L10:
	std Z+10,r26
	std Z+9,r21
	std Z+8,r20
	cpi r18,1
	cpc r19,__zero_reg__
	brne .L11
	std Z+3,r21
	std Z+2,r20
	ldi r24,lo8(4)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
.L14:
	ldi r25,0
	ldi r24,0
.L8:
/* epilogue start */
	pop r29
	pop r28
	ret
.L13:
	ldi r26,lo8(7)
	rjmp .L10
.L11:
	ldi r18,lo8(2)
	ldi r19,0
	std Z+5,r19
	std Z+4,r18
	movw r28,r22
	ldd r30,Y+4
	ldd r31,Y+5
	ld r18,Z
	ldd r19,Z+1
	add r20,r18
	adc r21,r19
	call osEE_counter_insert_abs_trigger
	rjmp .L14
.L12:
	ldi r24,lo8(7)
	ldi r25,0
	rjmp .L8
	.size	osEE_st_start_abs, .-osEE_st_start_abs
	.section	.text.osEE_st_stop,"ax",@progbits
.global	osEE_st_stop
	.type	osEE_st_stop, @function
osEE_st_stop:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd r24,Z+4
	ldd r25,Z+5
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L20
	ldd r28,Z+6
	ldd r29,Z+7
	sbiw r24,2
	breq .L17
	ldi r24,lo8(1)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
	sbiw r28,0
	breq .L18
	ld r26,Y
	ldd r27,Y+1
	adiw r26,10
	st X,__zero_reg__
.L18:
	std Z+10,__zero_reg__
.L27:
	ldi r25,0
	ldi r24,0
.L15:
/* epilogue start */
	pop r29
	pop r28
	ret
.L17:
	adiw r26,2
	ld r24,X+
	ld r25,X
	sbiw r26,2+1
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	sbiw r28,0
	breq .L19
	ld __tmp_reg__,Y+
	ld r29,Y
	mov r28,__tmp_reg__
	std Y+10,__zero_reg__
.L19:
	movw r22,r26
	std Z+10,__zero_reg__
	call osEE_counter_cancel_trigger
	rjmp .L27
.L20:
	ldi r24,lo8(5)
	ldi r25,0
	rjmp .L15
	.size	osEE_st_stop, .-osEE_st_stop
	.section	.text.osEE_st_syncronize,"ax",@progbits
.global	osEE_st_syncronize
	.type	osEE_st_syncronize, @function
osEE_st_syncronize:
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	ld r16,Y
	ldd r17,Y+1
	movw r30,r16
	ldd r25,Z+10
	andi r25,lo8(3)
	cpi r25,lo8(3)
	breq .+2
	rjmp .L29
	ldd r12,Z+2
	ldd r13,Z+3
	ldd r24,Z+8
	ldd r25,Z+9
	movw r18,r12
	sub r18,r24
	sbc r19,r25
	sub r18,r22
	sbc r19,r23
	mov r15,r18
	tst r18
	breq .L30
	ldd r26,Z+11
	ldd r27,Z+12
	ldd r22,Y+4
	ldd r23,Y+5
	mov r24,r18
	mov __tmp_reg__,r18
	lsl r0
	sbc r25,r25
	ldi r20,lo8(10)
	mul r20,r26
	movw r30,r0
	mul r20,r27
	add r31,r0
	clr __zero_reg__
	add r30,r22
	adc r31,r23
	cp __zero_reg__,r18
	brge .L31
	ldd r22,Z+6
	ldd r23,Z+7
	cp r24,r22
	cpc r25,r23
	brsh .L32
	movw r22,r24
.L32:
	sub r12,r22
	sbc r13,r23
	mov r15,r18
	sub r15,r22
.L33:
	ldd r10,Y+2
	ldd r11,Y+3
	movw r22,r28
	movw r24,r10
	call osEE_counter_cancel_trigger
	movw r20,r12
	movw r22,r28
	movw r24,r10
	call osEE_counter_insert_abs_trigger
.L30:
	ldd r24,Y+12
	cp r15,r24
	brge .L35
	clr r25
	neg r24
	brge .+2
	com r25
	mov r18,r15
	mov __tmp_reg__,r15
	lsl r0
	sbc r19,r19
	cp r24,r18
	cpc r25,r19
	brge .L35
	ldi r24,lo8(7)
.L40:
	movw r30,r16
	std Z+10,r24
	std Z+13,r15
.L29:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	ret
.L31:
	ldd r22,Z+8
	ldd r23,Z+9
	neg r25
	neg r24
	sbc r25,__zero_reg__
	cp r22,r24
	cpc r23,r25
	brsh .L34
	movw r24,r22
.L34:
	add r12,r24
	adc r13,r25
	mov r15,r18
	sub r15,r24
	rjmp .L33
.L35:
	ldi r24,lo8(3)
	rjmp .L40
	.size	osEE_st_syncronize, .-osEE_st_syncronize
	.ident	"GCC: (GNU) 7.3.0"
