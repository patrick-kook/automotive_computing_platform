	.file	"ee_oo_scheduler.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_scheduler_core_rq_preempt_stk,"ax",@progbits
.global	osEE_scheduler_core_rq_preempt_stk
	.type	osEE_scheduler_core_rq_preempt_stk, @function
osEE_scheduler_core_rq_preempt_stk:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	movw r28,r22
	ld r30,Y
	ldd r31,Y+1
	adiw r26,6
	ld r28,X+
	ld r29,X
	sbiw r26,6+1
	sbiw r28,0
	breq .L2
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r30,0
	brne .+2
	rjmp .L7
	movw r28,r24
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r18,Z+2
	ldd r19,Z+3
	movw r28,r18
	ldd r20,Y+4
	ldd r21,Y+5
	movw r28,r16
	ldd r19,Y+1
	movw r28,r20
	ldd r18,Y+1
	cp r19,r18
	brsh .L7
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r16
.L8:
	std Y+3,r19
	std Y+2,r18
	ld r18,Z
	ldd r19,Z+1
	movw r28,r22
	std Y+1,r19
	st Y,r18
	ldd r28,Z+2
	ldd r29,Z+3
	ldd r18,Y+4
	ldd r19,Y+5
	adiw r26,6
	ld r20,X+
	ld r21,X
	sbiw r26,6+1
	std Z+1,r21
	st Z,r20
	adiw r26,6+1
	st X,r31
	st -X,r30
	sbiw r26,6
	st X+,r28
	st X,r29
	ldd r20,Y+12
	movw r30,r18
	ldd r21,Z+1
	cp r21,r20
	brsh .L1
	std Z+1,r20
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L2:
	sbiw r30,0
	breq .L7
	movw r28,r24
	ldd r24,Y+2
	ldd r25,Y+3
	movw r28,r24
	ldd r20,Y+4
	ldd r21,Y+5
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r20
	rjmp .L8
.L7:
	ldi r25,0
	ldi r24,0
	rjmp .L1
	.size	osEE_scheduler_core_rq_preempt_stk, .-osEE_scheduler_core_rq_preempt_stk
	.section	.text.osEE_sn_priority_insert,"ax",@progbits
.global	osEE_sn_priority_insert
	.type	osEE_sn_priority_insert, @function
osEE_sn_priority_insert:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r22
	adiw r26,2
	ld r30,X+
	ld r31,X
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L10
	ldd r18,Z+11
.L11:
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldi r27,0
	ldi r26,0
.L12:
	sbiw r30,0
	brne .L16
.L15:
	sbiw r26,0
	breq .L17
	st X+,r22
	st X,r23
	ldi r25,0
	ldi r24,0
.L18:
	movw r26,r22
	st X+,r30
	st X,r31
/* epilogue start */
	pop r29
	pop r28
	ret
.L10:
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldd r18,Z+1
	rjmp .L11
.L16:
	ldd r28,Z+2
	ldd r29,Z+3
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L13
	ldd r19,Y+11
.L14:
	cp r19,r18
	brlo .L15
	movw r26,r30
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	rjmp .L12
.L13:
	ldd __tmp_reg__,Y+4
	ldd r29,Y+5
	mov r28,__tmp_reg__
	ldd r19,Y+1
	rjmp .L14
.L17:
	movw r26,r24
	st X+,r22
	st X,r23
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L18
	.size	osEE_sn_priority_insert, .-osEE_sn_priority_insert
	.section	.text.osEE_scheduler_rq_insert,"ax",@progbits
.global	osEE_scheduler_rq_insert
	.type	osEE_scheduler_rq_insert, @function
osEE_scheduler_rq_insert:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	std Z+3,r21
	std Z+2,r20
	ldi r20,lo8(1)
	ldi r21,0
	jmp osEE_sn_priority_insert
	.size	osEE_scheduler_rq_insert, .-osEE_scheduler_rq_insert
	.section	.text.osEE_scheduler_core_pop_running,"ax",@progbits
.global	osEE_scheduler_core_pop_running
	.type	osEE_scheduler_core_pop_running, @function
osEE_scheduler_core_pop_running:
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
	movw r16,r24
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	ldd r14,Y+6
	ldd r15,Y+7
	movw r30,r14
	ld r24,Z
	ldd r25,Z+1
	std Y+7,r25
	std Y+6,r24
	movw r24,r16
	call osEE_scheduler_core_rq_preempt_stk
	or r24,r25
	brne .L20
	ldd r30,Y+6
	ldd r31,Y+7
	sbiw r30,0
	breq .L22
.L24:
	ldd r24,Z+2
	ldd r25,Z+3
	std Y+1,r25
	st Y,r24
.L20:
	movw r24,r14
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L22:
	movw r30,r16
	rjmp .L24
	.size	osEE_scheduler_core_pop_running, .-osEE_scheduler_core_pop_running
	.ident	"GCC: (GNU) 7.3.0"
