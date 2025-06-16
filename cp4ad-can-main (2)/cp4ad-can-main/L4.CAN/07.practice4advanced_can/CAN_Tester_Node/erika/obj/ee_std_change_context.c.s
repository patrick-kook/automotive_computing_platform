	.file	"ee_std_change_context.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_change_context_from_running,"ax",@progbits
.global	osEE_change_context_from_running
	.type	osEE_change_context_from_running, @function
osEE_change_context_from_running:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	movw r26,r24
	adiw r26,2
	ld r20,X+
	ld r21,X
	ldd r22,Z+2
	ldd r23,Z+3
	ldd r26,Z+4
	ldd r27,Z+5
	adiw r26,2
	ld r24,X+
	ld r25,X
	sbiw r24,2
	brne .L2
	movw r24,r30
	jmp osEE_hal_save_ctx_and_restore_ctx
.L2:
	movw r24,r30
	jmp osEE_hal_save_ctx_and_ready2stacked
	.size	osEE_change_context_from_running, .-osEE_change_context_from_running
	.section	.text.osEE_change_context_from_task_end,"ax",@progbits
.global	osEE_change_context_from_task_end
	.type	osEE_change_context_from_task_end, @function
osEE_change_context_from_task_end:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r24,r22
	movw r26,r22
	adiw r26,2
	ld r22,X+
	ld r23,X
	sbiw r26,2+1
	adiw r26,4
	ld r30,X+
	ld r31,X
	ldd r18,Z+2
	ldd r19,Z+3
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L4
	jmp osEE_hal_restore_ctx
.L4:
	jmp osEE_hal_ready2stacked
	.size	osEE_change_context_from_task_end, .-osEE_change_context_from_task_end
	.section	.text.osEE_idle_task_terminate,"ax",@progbits
.global	osEE_idle_task_terminate
	.type	osEE_idle_task_terminate, @function
osEE_idle_task_terminate:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,2
	ld r22,X+
	ld r23,X
	sbiw r26,2+1
	ld r30,X+
	ld r31,X
	ld r20,Z
	ldd r21,Z+1
	movw r26,r22
	ld r30,X+
	ld r31,X
.L7:
	ldd r18,Z+18
	ldd r19,Z+19
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L6
	cp r20,r18
	cpc r21,r19
	brne .L8
.L6:
	movw r26,r22
	st X+,r30
	st X,r31
	jmp osEE_hal_restore_ctx
.L8:
	movw r30,r18
	rjmp .L7
	.size	osEE_idle_task_terminate, .-osEE_idle_task_terminate
	.section	.text.osEE_scheduler_task_end,"ax",@progbits
.global	osEE_scheduler_task_end
	.type	osEE_scheduler_task_end, @function
osEE_scheduler_task_end:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_terminated
	movw r22,r24
	ldd r24,Y+1
	ldd r25,Y+2
	call osEE_change_context_from_task_end
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	osEE_scheduler_task_end, .-osEE_scheduler_task_end
	.ident	"GCC: (GNU) 7.3.0"
