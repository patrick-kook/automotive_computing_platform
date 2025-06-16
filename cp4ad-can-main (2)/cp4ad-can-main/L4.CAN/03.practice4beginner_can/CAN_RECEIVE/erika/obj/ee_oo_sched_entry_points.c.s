	.file	"ee_oo_sched_entry_points.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_scheduler_task_wrapper_restore,"ax",@progbits
.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	ldi r24,lo8(4)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
/* epilogue start */
	ret
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24
	ldd r30,Y+4
	ldd r31,Y+5
	ldd r24,Z+1
	ldi r18,lo8(4)
	ldi r19,0
	std Z+3,r19
	std Z+2,r18
	cpi r24,lo8(-1)
	breq .L3
/* #APP */
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4.CAN\03DA32~1.PRA\CAN_RE~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L3:
	ldd r30,Y+9
	ldd r31,Y+10
	icall
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	std Z+16,__zero_reg__
	ldd r24,Z+15
	tst r24
	breq .L4
	std Z+15,__zero_reg__
	ldd r24,Z+13
	out __SREG__,r24
.L4:
	ldd r24,Z+17
	tst r24
	breq .L5
	std Z+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4.CAN\03DA32~1.PRA\CAN_RE~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L5:
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4.CAN\03DA32~1.PRA\CAN_RE~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r30,Y+4
	ldd r31,Y+5
	sbiw r24,2
	brne .L9
.L7:
	ldd r26,Z+4
	ldd r27,Z+5
	sbiw r26,0
	brne .L8
.L11:
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.L8:
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	adiw r26,3+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,3
	ld r24,X+
	ld r25,X
	std Z+5,r25
	std Z+4,r24
	rjmp .L7
.L10:
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	adiw r26,3+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,3
	ld r24,X+
	ld r25,X
	std Z+5,r25
	std Z+4,r24
.L9:
	ldd r26,Z+4
	ldd r27,Z+5
	sbiw r26,0
	brne .L10
	rjmp .L11
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.L23:
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	breq .L23
	lds r24,osEE_cdb_var+2
	lds r25,osEE_cdb_var+2+1
	jmp osEE_idle_task_terminate
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.ident	"GCC: (GNU) 7.3.0"
