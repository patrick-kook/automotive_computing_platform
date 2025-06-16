	.file	"ee_oo_sched_partitioned.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_scheduler_task_activated,"ax",@progbits
.global	osEE_scheduler_task_activated
	.type	osEE_scheduler_task_activated, @function
osEE_scheduler_task_activated:
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
	adiw r26,4
	ld r14,X+
	ld r15,X
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r24,Z
	ldd r25,Z+1
	movw r28,r24
	ldd r20,Y+4
	ldd r21,Y+5
	ldd r26,Z+4
	ldd r27,Z+5
	ld r18,X+
	ld r19,X
	sbiw r26,1
	movw r28,r20
	ldd r16,Y+1
	movw r28,r14
	ldd r17,Y+1
	cp r16,r17
	brsh .L2
	std Z+5,r19
	std Z+4,r18
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r20
	std Y+3,r19
	std Y+2,r18
	adiw r26,2+1
	st X,r23
	st -X,r22
	sbiw r26,2
	ldd r18,Z+6
	ldd r19,Z+7
	adiw r26,1
	st X,r19
	st -X,r18
	std Z+7,r27
	std Z+6,r26
	std Z+1,r23
	st Z,r22
	movw r30,r14
	std Z+9,__zero_reg__
	std Z+8,__zero_reg__
	call osEE_change_context_from_running
	ldi r24,lo8(1)
	ldi r25,0
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L2:
	ldd r24,Y+2
	ldd r25,Y+3
	or r24,r25
	brne .L4
	ldi r24,lo8(1)
	ldi r25,0
	std Y+3,r25
	std Y+2,r24
	std Y+9,__zero_reg__
	std Y+8,__zero_reg__
.L4:
	std Z+5,r19
	std Z+4,r18
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	movw r20,r22
	movw r22,r26
	movw r24,r30
	adiw r24,2
	call osEE_scheduler_rq_insert
	ldi r25,0
	ldi r24,0
	rjmp .L1
	.size	osEE_scheduler_task_activated, .-osEE_scheduler_task_activated
	.section	.text.osEE_scheduler_task_insert,"ax",@progbits
.global	osEE_scheduler_task_insert
	.type	osEE_scheduler_task_insert, @function
osEE_scheduler_task_insert:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r22
	movw r30,r22
	ldd r26,Z+4
	ldd r27,Z+5
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	adiw r26,2
	ld r24,X+
	ld r25,X
	sbiw r26,2+1
	or r24,r25
	brne .L6
	ldi r24,lo8(1)
	ldi r25,0
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
	adiw r26,8+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,8
.L6:
	ldd r26,Z+4
	ldd r27,Z+5
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+5,r25
	std Z+4,r24
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	movw r22,r26
	movw r24,r30
	adiw r24,2
	jmp osEE_scheduler_rq_insert
	.size	osEE_scheduler_task_insert, .-osEE_scheduler_task_insert
	.section	.text.osEE_scheduler_task_unblocked,"ax",@progbits
.global	osEE_scheduler_task_unblocked
	.type	osEE_scheduler_task_unblocked, @function
osEE_scheduler_task_unblocked:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r26,r22
	adiw r26,2
	ld r20,X+
	ld r21,X
	movw r30,r20
	ldd r28,Z+4
	ldd r29,Z+5
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
	ldi r24,lo8(2)
	ldi r25,0
	std Y+3,r25
	std Y+2,r24
	ldd r24,Z+11
	std Y+1,r24
	movw r24,r16
	adiw r24,2
	call osEE_scheduler_rq_insert
	sbiw r24,1
	brne .L10
	movw r26,r16
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(1)
	ldi r25,0
	ldd r19,Y+1
	ldd r18,Z+1
	cp r18,r19
	brlo .L7
	ldi r24,0
.L7:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L10:
	ldi r24,0
	ldi r25,0
	rjmp .L7
	.size	osEE_scheduler_task_unblocked, .-osEE_scheduler_task_unblocked
	.section	.text.osEE_scheduler_task_terminated,"ax",@progbits
.global	osEE_scheduler_task_terminated
	.type	osEE_scheduler_task_terminated, @function
osEE_scheduler_task_terminated:
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
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	movw r30,r28
	ld r14,Z+
	ld r15,Z+
	movw r12,r30
	movw r30,r14
	ldd r16,Z+4
	ldd r17,Z+5
	movw r30,r22
	std Z+1,r15
	st Z,r14
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,4
	brne .L12
	movw r22,r12
	ldi r24,lo8(osEE_cdb_var)
	ldi r25,hi8(osEE_cdb_var)
	call osEE_scheduler_core_pop_running
	movw r10,r24
	ld r12,Y
	ldd r13,Y+1
	cp r14,r12
	cpc r15,r13
	breq .L13
	movw r24,r14
	call osEE_task_end
.L14:
	ldd r24,Y+4
	ldd r25,Y+5
	movw r30,r10
	std Z+1,r25
	st Z,r24
	std Y+5,r11
	std Y+4,r10
.L11:
	movw r24,r12
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
.L13:
	movw r30,r16
	ld r24,Z
	subi r24,lo8(-(-1))
	st Z,r24
	rjmp .L14
.L12:
	ldd r22,Y+6
	ldd r23,Y+7
	movw r30,r22
	ld r24,Z
	ldd r25,Z+1
	std Y+7,r25
	std Y+6,r24
	movw r30,r14
	ldd r24,Z+11
	movw r30,r16
	std Z+1,r24
	ldi r24,lo8(1)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
	ld r24,Z
	cpi r24,lo8(1)
	brne .L16
	std Z+9,__zero_reg__
	std Z+8,__zero_reg__
.L16:
	movw r20,r14
	movw r24,r12
	call osEE_scheduler_rq_insert
	movw r22,r12
	ldi r24,lo8(osEE_cdb_var)
	ldi r25,hi8(osEE_cdb_var)
	call osEE_scheduler_core_rq_preempt_stk
	or r24,r25
	brne .L17
	ldd r30,Y+6
	ldd r31,Y+7
	ldd r12,Z+2
	ldd r13,Z+3
	std Y+1,r13
	st Y,r12
	rjmp .L11
.L17:
	ld r12,Y
	ldd r13,Y+1
	rjmp .L11
	.size	osEE_scheduler_task_terminated, .-osEE_scheduler_task_terminated
	.section	.text.osEE_scheduler_task_preemption_point,"ax",@progbits
.global	osEE_scheduler_task_preemption_point
	.type	osEE_scheduler_task_preemption_point, @function
osEE_scheduler_task_preemption_point:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	ldi r24,lo8(osEE_cdb_var)
	ldi r25,hi8(osEE_cdb_var)
	call osEE_scheduler_core_rq_preempt_stk
	sbiw r24,0
	breq .L20
	ld r22,Y
	ldd r23,Y+1
	call osEE_change_context_from_running
	ldi r24,lo8(1)
	ldi r25,0
.L18:
/* epilogue start */
	pop r29
	pop r28
	ret
.L20:
	ldi r25,0
	ldi r24,0
	rjmp .L18
	.size	osEE_scheduler_task_preemption_point, .-osEE_scheduler_task_preemption_point
	.section	.text.osEE_scheduler_task_set_running,"ax",@progbits
.global	osEE_scheduler_task_set_running
	.type	osEE_scheduler_task_set_running, @function
osEE_scheduler_task_set_running:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Z+6
	ldd r19,Z+7
	movw r28,r24
	ldd r26,Y+4
	ldd r27,Y+5
	adiw r26,2
	ld r28,X+
	ld r29,X
	sbiw r26,2+1
	sbiw r28,4
	brne .L22
	ldi r28,lo8(2)
	ldi r29,0
	adiw r26,2+1
	st X,r29
	st -X,r28
	sbiw r26,2
.L22:
	std Z+1,r23
	st Z,r22
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L23
	ldd r26,Z+4
	ldd r27,Z+5
	ld r20,X+
	ld r21,X
	sbiw r26,1
	std Z+5,r21
	std Z+4,r20
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	std Z+7,r27
	std Z+6,r26
.L24:
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	std Z+3,r23
	std Z+2,r22
	std Z+1,r19
	st Z,r18
/* epilogue start */
	pop r29
	pop r28
	jmp osEE_change_context_from_running
.L23:
	std Z+7,r21
	std Z+6,r20
	rjmp .L24
	.size	osEE_scheduler_task_set_running, .-osEE_scheduler_task_set_running
	.ident	"GCC: (GNU) 7.3.0"
