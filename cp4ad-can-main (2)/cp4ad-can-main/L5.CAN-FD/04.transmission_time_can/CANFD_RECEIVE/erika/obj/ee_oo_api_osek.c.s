	.file	"ee_oo_api_osek.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.DisableAllInterrupts,"ax",@progbits
.global	DisableAllInterrupts
	.type	DisableAllInterrupts, @function
DisableAllInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	std Z+17,r24
/* epilogue start */
	ret
	.size	DisableAllInterrupts, .-DisableAllInterrupts
	.section	.text.EnableAllInterrupts,"ax",@progbits
.global	EnableAllInterrupts
	.type	EnableAllInterrupts, @function
EnableAllInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+17
	tst r24
	breq .L2
	std Z+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L2:
/* epilogue start */
	ret
	.size	EnableAllInterrupts, .-EnableAllInterrupts
	.section	.text.SuspendAllInterrupts,"ax",@progbits
.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+15
	cpse r24,__zero_reg__
	rjmp .L8
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	std Z+13,r24
	ldd r24,Z+15
.L12:
	subi r24,lo8(-(1))
	std Z+15,r24
/* epilogue start */
	ret
.L8:
	cpi r24,lo8(-1)
	brne .L12
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	ldi r24,lo8(25)
	ldi r25,0
	std Z+12,r25
	std Z+11,r24
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L11:
	rjmp .L11
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
	.section	.text.ResumeAllInterrupts,"ax",@progbits
.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+15
	tst r24
	breq .L13
	subi r24,lo8(-(-1))
	std Z+15,r24
	cpse r24,__zero_reg__
	rjmp .L13
	ldd r24,Z+13
	out __SREG__,r24
.L13:
/* epilogue start */
	ret
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
	.section	.text.SuspendOSInterrupts,"ax",@progbits
.global	SuspendOSInterrupts
	.type	SuspendOSInterrupts, @function
SuspendOSInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+16
	cpse r24,__zero_reg__
	rjmp .L18
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	std Z+14,r24
	ldd r24,Z+16
.L22:
	subi r24,lo8(-(1))
	std Z+16,r24
/* epilogue start */
	ret
.L18:
	cpi r24,lo8(-1)
	brne .L22
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	ldi r24,lo8(25)
	ldi r25,0
	std Z+12,r25
	std Z+11,r24
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L21:
	rjmp .L21
	.size	SuspendOSInterrupts, .-SuspendOSInterrupts
	.section	.text.ResumeOSInterrupts,"ax",@progbits
.global	ResumeOSInterrupts
	.type	ResumeOSInterrupts, @function
ResumeOSInterrupts:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+16
	tst r24
	breq .L23
	subi r24,lo8(-(-1))
	std Z+16,r24
	cpse r24,__zero_reg__
	rjmp .L23
	ldd r24,Z+14
	out __SREG__,r24
.L23:
/* epilogue start */
	ret
	.size	ResumeOSInterrupts, .-ResumeOSInterrupts
	.section	.text.StartOS,"ax",@progbits
.global	StartOS
	.type	StartOS, @function
StartOS:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
	in r25,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r26,r16
	adiw r26,8
	ld r18,X+
	ld r19,X
	or r18,r19
	breq .L28
	out __SREG__,r25
	ldi r24,lo8(1)
	ldi r25,0
.L27:
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
	pop r7
	ret
.L28:
	ldi r18,lo8(gs(osEE_atmega_intvect))
	ldi r19,hi8(gs(osEE_atmega_intvect))
	std Y+2,r19
	std Y+1,r18
	lds r12,osEE_cdb_var+2
	lds r13,osEE_cdb_var+2+1
	ldi r18,lo8(1)
	ldi r19,0
	movw r30,r16
	std Z+9,r19
	std Z+8,r18
	std Z+10,r24
	lds r30,osEE_cdb_var+4
	lds r31,osEE_cdb_var+4+1
	ldi r18,lo8(4)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	ldd r10,Z+2
	ldd r11,Z+3
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	movw r8,r30
	ldi r24,lo8(6)
	mov r7,r24
.L30:
	cp r14,r10
	cpc r15,r11
	brne .L31
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,1
	brne .L32
	ldi r24,lo8(2)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
.L32:
	movw r26,r16
	adiw r26,8
	ld r24,X+
	ld r25,X
	sbiw r24,2
	brne .L33
	movw r30,r12
	ldd r22,Z+2
	ldd r23,Z+3
	movw r20,r22
	movw r24,r12
	call osEE_hal_save_ctx_and_ready2stacked
	movw r24,r12
	call osEE_task_end
.L33:
	ldi r25,0
	ldi r24,0
	rjmp .L27
.L31:
	movw r26,r8
	ld r30,X+
	ld r31,X
	mul r7,r14
	movw r24,r0
	mul r7,r15
	add r25,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	ld r26,Z
	ldd r27,Z+1
	ldd r18,Z+4
	ldd r19,Z+5
	ldd r20,Z+2
	ldd r21,Z+3
	movw r22,r26
	adiw r26,2
	ld r24,X+
	ld r25,X
	call osEE_alarm_set_rel
	ldi r27,-1
	sub r14,r27
	sbc r15,r27
	rjmp .L30
	.size	StartOS, .-StartOS
	.section	.text.GetActiveApplicationMode,"ax",@progbits
.global	GetActiveApplicationMode
	.type	GetActiveApplicationMode, @function
GetActiveApplicationMode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldd r24,Z+8
	ldd r25,Z+9
	or r24,r25
	breq .L36
	ldd r24,Z+10
	ret
.L36:
	ldi r24,lo8(-1)
/* epilogue start */
	ret
	.size	GetActiveApplicationMode, .-GetActiveApplicationMode
	.section	.text.ActivateTask,"ax",@progbits
.global	ActivateTask
	.type	ActivateTask, @function
ActivateTask:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L41
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	movw r30,r16
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L41
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r24,r16
	call osEE_task_activated
	movw r28,r24
	or r24,r25
	brne .L39
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_activated
.L39:
	out __SREG__,r15
.L37:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L41:
	ldi r28,lo8(3)
	ldi r29,0
	rjmp .L37
	.size	ActivateTask, .-ActivateTask
	.section	.text.ChainTask,"ax",@progbits
.global	ChainTask
	.type	ChainTask, @function
ChainTask:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L50
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	movw r30,r16
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L50
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	ld r30,Y
	ldd r31,Y+1
	ldd r24,Y+15
	tst r24
	breq .L44
	std Y+15,__zero_reg__
	ldd r24,Y+13
	out __SREG__,r24
.L44:
	ldd r24,Y+17
	tst r24
	breq .L45
	std Y+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L45:
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r30,r16
	cpc r31,r17
	brne .L46
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(5)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
.L47:
	ld r30,Y
	ldd r31,Y+1
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.L46:
	movw r24,r16
	call osEE_task_activated
	sbiw r24,0
	brne .L48
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
	rjmp .L47
.L50:
	ldi r24,lo8(3)
	ldi r25,0
.L42:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L48:
	out __SREG__,r15
	rjmp .L42
	.size	ChainTask, .-ChainTask
	.section	.text.TerminateTask,"ax",@progbits
.global	TerminateTask
	.type	TerminateTask, @function
TerminateTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r26,Z
	ldd r27,Z+1
	ldd r24,Z+15
	tst r24
	breq .L58
	std Z+15,__zero_reg__
	ldd r24,Z+13
	out __SREG__,r24
.L58:
	ldd r24,Z+17
	tst r24
	breq .L59
	std Z+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L59:
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	adiw r26,2
	ld r24,X+
	ld r25,X
	call osEE_hal_terminate_ctx
	.size	TerminateTask, .-TerminateTask
	.section	.text.Schedule,"ax",@progbits
.global	Schedule
	.type	Schedule, @function
Schedule:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r28,Z
	ldd r29,Z+1
	ldd r16,Y+4
	ldd r17,Y+5
	movw r30,r16
	ldd r25,Z+1
	ldd r24,Y+12
	cpse r25,r24
	rjmp .L67
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Y+11
	std Z+1,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
	ldd r24,Y+12
	movw r30,r16
	std Z+1,r24
	out __SREG__,r15
.L67:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
	.size	Schedule, .-Schedule
	.section	.text.GetResource,"ax",@progbits
.global	GetResource
	.type	GetResource, @function
GetResource:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r25,0
	lds r18,osEE_kdb_var+8
	lds r19,osEE_kdb_var+8+1
	cp r24,r18
	cpc r25,r19
	brsh .L71
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r20,Z
	ldd r21,Z+1
	lds r18,osEE_kdb_var+6
	lds r19,osEE_kdb_var+6+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r22,X+
	ld r23,X
	movw r30,r22
	ld r28,Z
	ldd r29,Z+1
	movw r26,r20
	adiw r26,4
	ld r30,X+
	ld r31,X
	movw r26,r22
	adiw r26,2
	ld r25,X
	ldd r24,Z+1
	in r18,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r24,r25
	brsh .L70
	std Z+1,r25
.L70:
	std Y+4,r21
	std Y+3,r20
	out __SREG__,r18
	ldd r18,Z+4
	ldd r19,Z+5
	std Y+1,r19
	st Y,r18
	std Y+2,r24
	std Z+5,r23
	std Z+4,r22
	ldi r25,0
	ldi r24,0
.L68:
/* epilogue start */
	pop r29
	pop r28
	ret
.L71:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L68
	.size	GetResource, .-GetResource
	.section	.text.ReleaseResource,"ax",@progbits
.global	ReleaseResource
	.type	ReleaseResource, @function
ReleaseResource:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	ldi r25,0
	lds r18,osEE_kdb_var+8
	lds r19,osEE_kdb_var+8+1
	cp r24,r18
	cpc r25,r19
	brsh .L76
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld r28,Z
	ldd r29,Z+1
	ldd r30,Y+4
	ldd r31,Y+5
	lds r18,osEE_kdb_var+6
	lds r19,osEE_kdb_var+6+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r24,X+
	ld r25,X
	movw r26,r24
	ld r18,X+
	ld r19,X
	in r17,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Z+4
	ldd r25,Z+5
	movw r26,r24
	ld r24,X+
	ld r25,X
	movw r26,r24
	ld r24,X+
	ld r25,X
	std Z+5,r25
	std Z+4,r24
	or r24,r25
	breq .L74
	movw r26,r18
	adiw r26,2
	ld r24,X
.L77:
	std Z+1,r24
	movw r30,r18
	std Z+4,__zero_reg__
	std Z+3,__zero_reg__
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
	out __SREG__,r17
	ldi r25,0
	ldi r24,0
.L72:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L74:
	ldd r24,Y+12
	rjmp .L77
.L76:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L72
	.size	ReleaseResource, .-ReleaseResource
	.section	.text.ShutdownOS,"ax",@progbits
.global	ShutdownOS
	.type	ShutdownOS, @function
ShutdownOS:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r24
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	in r25,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Z+8
	ldd r19,Z+9
	subi r18,1
	sbc r19,__zero_reg__
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L79
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	std Z+12,r21
	std Z+11,r20
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L80:
	rjmp .L80
.L79:
	out __SREG__,r25
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
	ret
	.size	ShutdownOS, .-ShutdownOS
	.section	.text.GetTaskID,"ax",@progbits
.global	GetTaskID
	.type	GetTaskID, @function
GetTaskID:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ldi r24,lo8(14)
	ldi r25,0
	sbiw r26,0
	breq .L81
	ld r28,Z
	ldd r29,Z+1
	ldd r24,Y+7
	ldd r25,Y+8
	cpi r24,2
	cpc r25,__zero_reg__
	brsh .L83
.L90:
	ldd r25,Y+6
.L84:
	st X,r25
	ldi r25,0
	ldi r24,0
.L81:
/* epilogue start */
	pop r29
	pop r28
	ret
.L83:
	sbiw r24,2
	brne .L89
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
.L86:
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	brne .L87
.L89:
	ldi r25,lo8(-1)
	rjmp .L84
.L87:
	ldd r28,Z+2
	ldd r29,Z+3
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,2
	brsh .L86
	rjmp .L90
	.size	GetTaskID, .-GetTaskID
	.section	.text.GetTaskState,"ax",@progbits
.global	GetTaskState
	.type	GetTaskState, @function
GetTaskState:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r22
	sbiw r30,0
	breq .L98
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L99
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	adiw r26,4
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	adiw r26,2
	ld r24,X+
	ld r25,X
	cpi r24,3
	cpc r25,__zero_reg__
	brsh .L93
	sbiw r24,1
	brlo .L101
	ldi r24,lo8(1)
	ldi r25,0
.L103:
	std Z+1,r25
	st Z,r24
	rjmp .L100
.L93:
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L103
	sbiw r24,6
	brlo .L102
.L100:
	ldi r25,0
	ldi r24,0
	rjmp .L91
.L101:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L100
.L102:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L103
.L98:
	ldi r24,lo8(14)
	ldi r25,0
.L91:
/* epilogue start */
	pop r29
	pop r28
	ret
.L99:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L91
	.size	GetTaskState, .-GetTaskState
	.section	.text.SetRelAlarm,"ax",@progbits
.global	SetRelAlarm
	.type	SetRelAlarm, @function
SetRelAlarm:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L106
	movw r18,r20
	movw r20,r22
	lds r30,osEE_kdb_var+14
	lds r31,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	ld r22,Z
	ldd r23,Z+1
	movw r30,r22
	ldd r24,Z+2
	ldd r25,Z+3
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_set_rel
	out __SREG__,r28
.L104:
/* epilogue start */
	pop r28
	ret
.L106:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L104
	.size	SetRelAlarm, .-SetRelAlarm
	.section	.text.SetAbsAlarm,"ax",@progbits
.global	SetAbsAlarm
	.type	SetAbsAlarm, @function
SetAbsAlarm:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L109
	movw r18,r20
	movw r20,r22
	lds r30,osEE_kdb_var+14
	lds r31,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	ld r22,Z
	ldd r23,Z+1
	movw r30,r22
	ldd r24,Z+2
	ldd r25,Z+3
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_set_abs
	out __SREG__,r28
.L107:
/* epilogue start */
	pop r28
	ret
.L109:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L107
	.size	SetAbsAlarm, .-SetAbsAlarm
	.section	.text.CancelAlarm,"ax",@progbits
.global	CancelAlarm
	.type	CancelAlarm, @function
CancelAlarm:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L112
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_cancel
	out __SREG__,r28
.L110:
/* epilogue start */
	pop r28
	ret
.L112:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L110
	.size	CancelAlarm, .-CancelAlarm
	.section	.text.GetAlarm,"ax",@progbits
.global	GetAlarm
	.type	GetAlarm, @function
GetAlarm:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L115
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L116
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_get
	out __SREG__,r28
.L113:
/* epilogue start */
	pop r28
	ret
.L115:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L113
.L116:
	ldi r24,lo8(14)
	ldi r25,0
	rjmp .L113
	.size	GetAlarm, .-GetAlarm
	.section	.text.GetAlarmBase,"ax",@progbits
.global	GetAlarmBase
	.type	GetAlarmBase, @function
GetAlarmBase:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L119
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L120
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	ldd r24,Z+2
	ldd r25,Z+3
	ldd r26,Z+4
	ldd r27,Z+5
	movw r30,r22
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldi r25,0
	ldi r24,0
	ret
.L119:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L120:
	ldi r24,lo8(14)
	ldi r25,0
/* epilogue start */
	ret
	.size	GetAlarmBase, .-GetAlarmBase
	.section	.text.WaitEvent,"ax",@progbits
.global	WaitEvent
	.type	WaitEvent, @function
WaitEvent:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
	movw r30,r16
	ld r14,Z
	ldd r15,Z+1
	movw r30,r14
	ldd r28,Z+4
	ldd r29,Z+5
	in r13,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Y+8
	ldd r19,Y+9
	and r18,r24
	and r19,r25
	or r18,r19
	brne .L122
	std Y+7,r25
	std Y+6,r24
	movw r22,r16
	subi r22,-2
	sbci r23,-1
	ldi r24,lo8(osEE_cdb_var)
	ldi r25,hi8(osEE_cdb_var)
	call osEE_scheduler_core_pop_running
	std Y+11,r25
	std Y+10,r24
	ldi r24,lo8(3)
	ldi r25,0
	std Y+3,r25
	std Y+2,r24
	movw r30,r16
	ld r22,Z
	ldd r23,Z+1
	movw r24,r14
	call osEE_change_context_from_running
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
.L122:
	out __SREG__,r13
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	WaitEvent, .-WaitEvent
	.section	.text.SetEvent,"ax",@progbits
.global	SetEvent
	.type	SetEvent, @function
SetEvent:
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brlo .L124
	ldi r24,lo8(3)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L125:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	ret
.L124:
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	in r17,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call osEE_task_event_set_mask
	sbiw r24,0
	breq .L127
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
	or r24,r25
	breq .L127
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L127:
	out __SREG__,r17
	rjmp .L125
	.size	SetEvent, .-SetEvent
	.section	.text.GetEvent,"ax",@progbits
.global	GetEvent
	.type	GetEvent, @function
GetEvent:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L134
	lds r18,osEE_kdb_var+2
	lds r19,osEE_kdb_var+2+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L135
	ldd r24,Z+8
	ldd r25,Z+9
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r25,0
	ldi r24,0
	ret
.L134:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L135:
	ldi r24,lo8(14)
	ldi r25,0
/* epilogue start */
	ret
	.size	GetEvent, .-GetEvent
	.section	.text.ClearEvent,"ax",@progbits
.global	ClearEvent
	.type	ClearEvent, @function
ClearEvent:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	in r20,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r18,r24
	com r18
	com r19
	ldd r24,Z+8
	ldd r25,Z+9
	and r24,r18
	and r25,r19
	std Z+9,r25
	std Z+8,r24
	out __SREG__,r20
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	ClearEvent, .-ClearEvent
	.section	.text.GetCounterValue,"ax",@progbits
.global	GetCounterValue
	.type	GetCounterValue, @function
GetCounterValue:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	lds r18,osEE_kdb_var+12
	lds r19,osEE_kdb_var+12+1
	cp r24,r18
	cpc r25,r19
	brsh .L139
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L140
	lds r18,osEE_kdb_var+10
	lds r19,osEE_kdb_var+10+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd r24,Z+2
	ldd r25,Z+3
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r25,0
	ldi r24,0
	ret
.L139:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L140:
	ldi r24,lo8(14)
	ldi r25,0
/* epilogue start */
	ret
	.size	GetCounterValue, .-GetCounterValue
	.section	.text.GetElapsedValue,"ax",@progbits
.global	GetElapsedValue
	.type	GetElapsedValue, @function
GetElapsedValue:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r25,0
	lds r18,osEE_kdb_var+12
	lds r19,osEE_kdb_var+12+1
	cp r24,r18
	cpc r25,r19
	brsh .L145
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L147
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L147
	lds r18,osEE_kdb_var+10
	lds r19,osEE_kdb_var+10+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	movw r28,r22
	ld r30,Y
	ldd r31,Y+1
	ld r28,X+
	ld r29,X
	sbiw r26,1
	ldd r18,Y+2
	ldd r19,Y+3
	movw r24,r18
	sub r24,r30
	sbc r25,r31
	cp r18,r30
	cpc r19,r31
	brsh .L144
	ldi r24,lo8(1)
	ldi r25,0
	sub r24,r30
	sbc r25,r31
	adiw r26,2
	ld r30,X+
	ld r31,X
	add r24,r30
	adc r25,r31
	add r24,r18
	adc r25,r19
.L144:
	movw r30,r20
	std Z+1,r25
	st Z,r24
	movw r28,r22
	std Y+1,r19
	st Y,r18
	ldi r25,0
	ldi r24,0
.L141:
/* epilogue start */
	pop r29
	pop r28
	ret
.L145:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L141
.L147:
	ldi r24,lo8(14)
	ldi r25,0
	rjmp .L141
	.size	GetElapsedValue, .-GetElapsedValue
	.section	.text.IncrementCounter,"ax",@progbits
.global	IncrementCounter
	.type	IncrementCounter, @function
IncrementCounter:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	ldi r25,0
	lds r18,osEE_kdb_var+12
	lds r19,osEE_kdb_var+12+1
	cp r24,r18
	cpc r25,r19
	brsh .L151
	lds r18,osEE_kdb_var+10
	lds r19,osEE_kdb_var+10+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_counter_increment
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brsh .L150
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L150:
	out __SREG__,r28
	ldi r25,0
	ldi r24,0
.L148:
/* epilogue start */
	pop r28
	ret
.L151:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L148
	.size	IncrementCounter, .-IncrementCounter
	.section	.text.GetISRID,"ax",@progbits
.global	GetISRID
	.type	GetISRID, @function
GetISRID:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd r24,Z+7
	ldd r25,Z+8
	sbiw r24,2
	brne .L154
	ldd r24,Z+6
	ret
.L154:
	ldi r24,lo8(-1)
/* epilogue start */
	ret
	.size	GetISRID, .-GetISRID
	.ident	"GCC: (GNU) 7.3.0"
