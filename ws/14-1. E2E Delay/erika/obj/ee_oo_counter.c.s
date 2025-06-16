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
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 25 */
.L__stack_usage = 25
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
	movw r4,r24
	movw r30,r18
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r30,r12
	std Z+1,r27
	st Z,r26
	ldi r24,lo8(10)
	mov r3,r24
.L59:
	movw r26,r16
	ld r14,X+
	ld r15,X
	movw r30,r14
	ld r31,Z
	std Y+7,r31
	movw r26,r14
	adiw r26,1
	ld r2,X
.L39:
	movw r30,r16
	ld r18,Z
	ldd r19,Z+1
	movw r26,r18
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r24,3
	breq .+2
	rjmp .L41
	movw r30,r14
	ldd r12,Z+11
	ldd r13,Z+12
	ldi r31,-1
	cp r12,r31
	cpc r13,r31
	breq .+2
	rjmp .L42
	movw r26,r14
	adiw r26,6
	ld r30,X+
	ld r31,X
	movw r26,r4
	ld r24,X+
	ld r25,X
	movw r26,r24
	adiw r26,2
	ld r20,X+
	ld r21,X
	movw r26,r14
	sbiw r30,0
	breq .L43
	adiw r26,10
	st X,__zero_reg__
	movw r26,r18
	adiw r26,4+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,4
	ld r14,Z
	ldd r15,Z+1
	ldi r24,lo8(3)
	movw r26,r14
	adiw r26,10
	st X,r24
	sbiw r26,10
	adiw r26,11+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,11
	adiw r26,8+1
	st X,r21
	st -X,r20
	sbiw r26,8
	ldd r26,Z+4
	ldd r27,Z+5
	ld r24,X+
	ld r25,X
	sbiw r24,0
	brne .+2
	rjmp .L44
	add r20,r24
	adc r21,r25
	movw r16,r30
.L45:
	movw r26,r16
	ld r30,X+
	ld r31,X
	ldi r24,lo8(2)
	ldi r25,0
	std Z+5,r25
	std Z+4,r24
	movw r22,r16
	movw r24,r4
	call osEE_counter_insert_abs_trigger
	rjmp .L41
.L34:
	subi r18,-1
	sbci r19,-1
	std Z+3,r19
	std Z+2,r18
	rjmp .L35
.L43:
	adiw r26,11+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,11
	adiw r26,8+1
	st X,r21
	st -X,r20
	sbiw r26,8
	movw r26,r16
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .+2
	rjmp .L46
.L78:
	add r20,r24
	adc r21,r25
	rjmp .L45
.L42:
	movw r30,r16
	ldd r10,Z+4
	ldd r11,Z+5
	mul r3,r12
	movw r30,r0
	mul r3,r13
	add r31,r0
	clr __zero_reg__
	add r30,r10
	adc r31,r11
	ldd r24,Z+4
	ldd r25,Z+5
	std Y+4,r25
	std Y+3,r24
	mov r9,__zero_reg__
	mov r8,__zero_reg__
	movw r26,r30
	adiw r26,2
	std Y+6,r27
	std Y+5,r26
.L47:
	ldd r30,Y+3
	ldd r31,Y+4
	cp r30,r8
	cpc r31,r9
	breq .+2
	rjmp .L55
	movw r26,r16
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd r24,Z+4
	ldd r25,Z+5
	sbiw r24,3
	brne .L41
	adiw r26,6
	ld r24,X+
	ld r25,X
	sbiw r26,6+1
	sbiw r24,1
	cp r12,r24
	cpc r13,r25
	breq .+2
	rjmp .L57
	movw r26,r14
	adiw r26,6
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .+2
	rjmp .L58
	movw r26,r16
	adiw r26,13
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .+2
	rjmp .L58
	movw r26,r14
	adiw r26,10
	st X,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
.L41:
	ldd r16,Y+7
	mov r17,r2
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L59
.L33:
/* epilogue start */
	adiw r28,7
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
.L55:
	ldd r26,Y+5
	ldd r27,Y+6
	ld r30,X+
	ld r31,X
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	mul r3,r8
	movw r24,r0
	mul r3,r9
	add r25,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	ldd r24,Z+8
	ldd r25,Z+9
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L49
	brlo .L50
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L51
	sbiw r24,3
	breq .L52
.L48:
	ldi r27,-1
	sub r8,r27
	sbc r9,r27
	rjmp .L47
.L50:
	ldd r6,Z+2
	ldd r7,Z+3
	movw r24,r6
	call osEE_task_activated
	std Y+2,r25
	std Y+1,r24
	or r24,r25
	brne .L48
	movw r22,r6
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
	rjmp .L48
.L49:
	ldd r22,Z+6
	ldd r23,Z+7
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_task_event_set_mask
	sbiw r24,0
	breq .L48
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
	rjmp .L48
.L51:
	ldd r24,Z+4
	ldd r25,Z+5
	call osEE_counter_increment
	rjmp .L48
.L52:
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	icall
	rjmp .L48
.L58:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r30,r14
	std Z+12,r25
	std Z+11,r24
	movw r26,r16
	adiw r26,10
	ld r20,X+
	ld r21,X
.L80:
	mul r3,r12
	movw r24,r0
	mul r3,r13
	add r25,r0
	clr __zero_reg__
	add r10,r24
	adc r11,r25
	movw r30,r10
	ld r24,Z
	ldd r25,Z+1
	cp r24,r20
	cpc r25,r21
	brsh .L46
	movw r26,r14
	adiw r26,8
	ld r24,X+
	ld r25,X
	rjmp .L78
.L57:
	movw r24,r12
	adiw r24,1
	movw r30,r14
	std Z+12,r25
	std Z+11,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	mul r3,r24
	movw r18,r0
	mul r3,r25
	add r19,r0
	clr __zero_reg__
	add r30,r18
	adc r31,r19
	ld r20,Z
	ldd r21,Z+1
	rjmp .L80
.L46:
	movw r30,r16
.L44:
	movw r16,r30
	rjmp .L39
	.size	osEE_counter_increment, .-osEE_counter_increment
	.ident	"GCC: (GNU) 7.3.0"
