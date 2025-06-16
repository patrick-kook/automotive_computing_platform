	.file	"ee_oo_kernel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_task_activated,"ax",@progbits
.global	osEE_task_activated
	.type	osEE_task_activated, @function
osEE_task_activated:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	ld r25,Z
	adiw r26,13
	ld r24,X
	cp r25,r24
	brsh .L3
	subi r25,lo8(-(1))
	st Z,r25
	ldi r25,0
	ldi r24,0
	ret
.L3:
	ldi r24,lo8(4)
	ldi r25,0
/* epilogue start */
	ret
	.size	osEE_task_activated, .-osEE_task_activated
	.section	.text.osEE_task_end,"ax",@progbits
.global	osEE_task_end
	.type	osEE_task_end, @function
osEE_task_end:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	adiw r26,11
	ld r24,X
	std Z+1,r24
	ld r24,Z
	subi r24,lo8(-(-1))
	st Z,r24
	cpse r24,__zero_reg__
	rjmp .L5
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ret
.L5:
	ldi r24,lo8(1)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
/* epilogue start */
	ret
	.size	osEE_task_end, .-osEE_task_end
	.section	.text.osEE_task_event_set_mask,"ax",@progbits
.global	osEE_task_event_set_mask
	.type	osEE_task_event_set_mask, @function
osEE_task_event_set_mask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	ldd r24,Z+8
	ldd r25,Z+9
	or r24,r22
	or r25,r23
	std Z+9,r25
	std Z+8,r24
	movw r26,r20
	st X+,__zero_reg__
	st X,__zero_reg__
	ldd r24,Z+6
	ldd r25,Z+7
	and r22,r24
	and r23,r25
	or r22,r23
	breq .L9
	ldd r24,Z+10
	ldd r25,Z+11
	sbiw r24,0
	breq .L7
	std Z+11,__zero_reg__
	std Z+10,__zero_reg__
	ret
.L9:
	ldi r25,0
	ldi r24,0
.L7:
/* epilogue start */
	ret
	.size	osEE_task_event_set_mask, .-osEE_task_event_set_mask
	.section	.text.osEE_activate_isr2,"ax",@progbits
.global	osEE_activate_isr2
	.type	osEE_activate_isr2, @function
osEE_activate_isr2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_kdb_var+2
	lds r31,osEE_kdb_var+2+1
	ldi r25,0
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	ld r22,Z
	ldd r23,Z+1
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	ldi r21,0
	ldi r20,0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	jmp osEE_scheduler_task_set_running
	.size	osEE_activate_isr2, .-osEE_activate_isr2
	.ident	"GCC: (GNU) 7.3.0"
