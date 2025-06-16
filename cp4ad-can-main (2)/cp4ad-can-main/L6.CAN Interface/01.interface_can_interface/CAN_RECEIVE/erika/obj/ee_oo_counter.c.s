	.file	"ee_oo_counter.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_counter_insert_abs_trigger,"ax",@progbits
.global	osEE_counter_insert_abs_trigger
	.type	osEE_counter_insert_abs_trigger, @function
osEE_counter_insert_abs_trigger:
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
	movw r26,r24
	ld r10,X+
	ld r11,X
	movw r28,r10
	ld r30,Y
	ldd r31,Y+1
	ldd r18,Y+2
	ldd r19,Y+3
	movw r26,r22
	ld r12,X+
	ld r13,X
	movw r28,r12
	std Y+3,r21
	std Y+2,r20
	ldi r24,lo8(1)
	ldi r25,0
	ldi r27,0
	ldi r26,0
.L2:
	sbiw r30,0
	breq .L6
	sbiw r24,0
	brne .L7
.L6:
	sbiw r26,0
	breq .L8
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
.L17:
	st X+,r22
	st X,r23
	movw r28,r12
	std Y+1,r31
	st Y,r30
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
.L7:
	ld r16,Z
	ldd r17,Z+1
	movw r28,r16
	ldd r14,Y+2
	ldd r15,Y+3
	cp r18,r14
	cpc r19,r15
	brsh .L3
	cp r20,r14
	cpc r21,r15
	brsh .L16
	cp r18,r20
	cpc r19,r21
	brlo .L12
.L16:
	movw r26,r30
	movw r28,r16
	ld r30,Y
	ldd r31,Y+1
	rjmp .L2
.L3:
	cp r18,r20
	cpc r19,r21
	brlo .L12
	cp r20,r14
	cpc r21,r15
	brsh .L16
.L12:
	ldi r25,0
	ldi r24,0
	rjmp .L2
.L8:
	movw r26,r10
	rjmp .L17
	.size	osEE_counter_insert_abs_trigger, .-osEE_counter_insert_abs_trigger
	.section	.text.osEE_counter_insert_rel_trigger,"ax",@progbits
.global	osEE_counter_insert_rel_trigger
	.type	osEE_counter_insert_rel_trigger, @function
osEE_counter_insert_rel_trigger:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	adiw r26,2
	ld r18,X+
	ld r19,X
	movw r26,r30
	sub r26,r20
	sbc r27,r21
	cp r26,r18
	cpc r27,r19
	brlo .L19
	add r20,r18
	adc r21,r19
.L20:
/* epilogue start */
	pop r29
	pop r28
	jmp osEE_counter_insert_abs_trigger
.L19:
	subi r20,1
	sbc r21,__zero_reg__
	add r20,r18
	adc r21,r19
	sub r20,r30
	sbc r21,r31
	rjmp .L20
	.size	osEE_counter_insert_rel_trigger, .-osEE_counter_insert_rel_trigger
	.section	.text.osEE_counter_cancel_trigger,"ax",@progbits
.global	osEE_counter_cancel_trigger
	.type	osEE_counter_cancel_trigger, @function
osEE_counter_cancel_trigger:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r26,Z
	ldd r27,Z+1
	movw r30,r22
	ld r28,Z
	ldd r29,Z+1
	ld r30,X+
	ld r31,X
	sbiw r26,1
.L32:
	cp r22,r30
	cpc r23,r31
	brne .L22
	ld r24,Y
	ldd r25,Y+1
	st X+,r24
	st X,r25
	rjmp .L21
.L22:
	ld r26,Z
	ldd r27,Z+1
	ld r30,X+
	ld r31,X
	sbiw r26,1
	sbiw r30,0
	brne .L32
.L21:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	osEE_counter_cancel_trigger, .-osEE_counter_cancel_trigger
	.section	.text.osEE_counter_increment,"ax",@progbits
.global	osEE_counter_increment
	.type	osEE_counter_increment, @function
osEE_counter_increment:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r26,r24
	ld r12,X+
	ld r13,X
	sbiw r26,1
	movw r30,r12
	ldd r18,Z+2
	ldd r19,Z+3
	adiw r26,2
	ld r20,X+
	ld r21,X
	cp r18,r20
	cpc r19,r21
	brsh .+2
	rjmp .L34
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r19,0
	ldi r18,0
.L35:
	movw r30,r12
	ld r16,Z
	ldd r17,Z+1
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L33
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd r20,Z+2
	ldd r21,Z+3
	cp r20,r18
	cpc r21,r19
	breq .+2
	rjmp .L33
	ldi r18,lo8(3)
	mov r14,r18
	mov r15,__zero_reg__
.L38:
	ld r18,X+
	ld r19,X
	movw r30,r18
	std Z+5,r15
	std Z+4,r14
	ld r26,Z
	ldd r27,Z+1
	sbiw r26,0
	breq .L37
	ld r22,X+
	ld r23,X
	sbiw r26,1
	movw r30,r22
	ldd r22,Z+2
	ldd r23,Z+3
	cp r20,r22
	cpc r21,r23
	breq .L38
.L37:
	movw r14,r24
	movw r30,r18
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r30,r12
	std Z+1,r27
	st Z,r26
	ldi r24,lo8(2)
	mov r12,r24
	mov r13,__zero_reg__
.L48:
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r10,Z
	ldd r11,Z+1
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	adiw r26,12
	ld r24,X+
	ld r25,X
	sbiw r26,12+1
	cpi r24,1
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L40
	brlo .L41
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L42
	sbiw r24,3
	brne .+2
	rjmp .L43
.L39:
	movw r26,r16
	ld r30,X+
	ld r31,X
	ldd r24,Z+4
	ldd r25,Z+5
	sbiw r24,3
	brne .L46
	ldd r20,Z+6
	ldd r21,Z+7
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L47
	std Z+5,r13
	std Z+4,r12
	movw r22,r16
	movw r24,r14
	call osEE_counter_insert_rel_trigger
.L46:
	movw r16,r10
	or r10,r11
	brne .L48
.L33:
/* epilogue start */
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
	ret
.L34:
	subi r18,-1
	sbci r19,-1
	std Z+3,r19
	std Z+2,r18
	rjmp .L35
.L41:
	movw r30,r16
	ldd r8,Z+6
	ldd r9,Z+7
	movw r24,r8
	call osEE_task_activated
	std Y+2,r25
	std Y+1,r24
	or r24,r25
	brne .L39
	movw r22,r8
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
	rjmp .L39
.L40:
	adiw r26,10
	ld r22,X+
	ld r23,X
	sbiw r26,10+1
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	adiw r26,6
	ld r24,X+
	ld r25,X
	call osEE_task_event_set_mask
	sbiw r24,0
	brne .+2
	rjmp .L39
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
	rjmp .L39
.L42:
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	call osEE_counter_increment
	rjmp .L39
.L43:
	adiw r26,4
	ld r30,X+
	ld r31,X
	icall
	rjmp .L39
.L47:
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	rjmp .L46
	.size	osEE_counter_increment, .-osEE_counter_increment
	.ident	"GCC: (GNU) 7.3.0"
