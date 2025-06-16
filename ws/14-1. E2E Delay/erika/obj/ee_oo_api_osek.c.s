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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
	lds r14,osEE_cdb_var
	lds r15,osEE_cdb_var+1
	in r25,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r26,r14
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
	lds r10,osEE_cdb_var+2
	lds r11,osEE_cdb_var+2+1
	ldi r18,lo8(1)
	ldi r19,0
	movw r30,r14
	std Z+9,r19
	std Z+8,r18
	std Z+10,r24
	lds r16,osEE_cdb_var+4
	lds r17,osEE_cdb_var+4+1
	ldi r31,lo8(4)
	mul r24,r31
	movw r24,r0
	clr __zero_reg__
	add r16,r24
	adc r17,r25
	movw r26,r16
	adiw r26,2
	ld r8,X+
	ld r9,X
	mov r13,__zero_reg__
	mov r12,__zero_reg__
	ldi r24,lo8(6)
	mov r7,r24
.L30:
	cp r12,r8
	cpc r13,r9
	brne .L34
	movw r30,r14
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,1
	brne .L35
	ldi r24,lo8(2)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
.L35:
	movw r26,r14
	adiw r26,8
	ld r24,X+
	ld r25,X
	sbiw r24,2
	brne .L36
	movw r30,r10
	ldd r22,Z+2
	ldd r23,Z+3
	movw r20,r22
	movw r24,r10
	call osEE_hal_save_ctx_and_ready2stacked
	movw r24,r10
	call osEE_task_end
.L36:
	ldi r25,0
	ldi r24,0
	rjmp .L27
.L34:
	movw r26,r16
	ld r30,X+
	ld r31,X
	mul r7,r12
	movw r24,r0
	mul r7,r13
	add r25,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	ld r26,Z
	ldd r27,Z+1
	ldd r24,Z+4
	ldd r25,Z+5
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L32
	sbiw r24,2
	breq .L33
.L31:
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
	rjmp .L30
.L32:
	ldd r20,Z+2
	ldd r21,Z+3
	movw r22,r26
	adiw r26,2
	ld r24,X+
	ld r25,X
	call osEE_st_start_abs
	rjmp .L31
.L33:
	ldd r20,Z+2
	ldd r21,Z+3
	movw r22,r26
	adiw r26,2
	ld r24,X+
	ld r25,X
	call osEE_st_start_rel
	rjmp .L31
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
	breq .L39
	ldd r24,Z+10
	ret
.L39:
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
	brsh .L44
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
	brsh .L44
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r24,r16
	call osEE_task_activated
	movw r28,r24
	or r24,r25
	brne .L42
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_activated
.L42:
	out __SREG__,r15
.L40:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L44:
	ldi r28,lo8(3)
	ldi r29,0
	rjmp .L40
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
	rjmp .L53
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
	brsh .L53
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	ld r30,Y
	ldd r31,Y+1
	ldd r24,Y+15
	tst r24
	breq .L47
	std Y+15,__zero_reg__
	ldd r24,Y+13
	out __SREG__,r24
.L47:
	ldd r24,Y+17
	tst r24
	breq .L48
	std Y+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L48:
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r30,r16
	cpc r31,r17
	brne .L49
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(5)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
.L50:
	ld r30,Y
	ldd r31,Y+1
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.L49:
	movw r24,r16
	call osEE_task_activated
	sbiw r24,0
	brne .L51
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
	rjmp .L50
.L53:
	ldi r24,lo8(3)
	ldi r25,0
.L45:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L51:
	out __SREG__,r15
	rjmp .L45
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
	breq .L61
	std Z+15,__zero_reg__
	ldd r24,Z+13
	out __SREG__,r24
.L61:
	ldd r24,Z+17
	tst r24
	breq .L62
	std Z+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L62:
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
	rjmp .L70
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
.L70:
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
	brsh .L74
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r24,r25
	brsh .L73
	std Z+1,r25
.L73:
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
.L71:
/* epilogue start */
	pop r29
	pop r28
	ret
.L74:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L71
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
	brsh .L79
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
	breq .L77
	movw r26,r18
	adiw r26,2
	ld r24,X
.L80:
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
.L75:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L77:
	ldd r24,Y+12
	rjmp .L80
.L79:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L75
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Z+8
	ldd r19,Z+9
	subi r18,1
	sbc r19,__zero_reg__
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L82
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	std Z+12,r21
	std Z+11,r20
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L83:
	rjmp .L83
.L82:
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
	breq .L84
	ld r28,Z
	ldd r29,Z+1
	ldd r24,Y+7
	ldd r25,Y+8
	cpi r24,2
	cpc r25,__zero_reg__
	brsh .L86
.L93:
	ldd r25,Y+6
.L87:
	st X,r25
	ldi r25,0
	ldi r24,0
.L84:
/* epilogue start */
	pop r29
	pop r28
	ret
.L86:
	sbiw r24,2
	brne .L92
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
.L89:
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	brne .L90
.L92:
	ldi r25,lo8(-1)
	rjmp .L87
.L90:
	ldd r28,Z+2
	ldd r29,Z+3
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,2
	brsh .L89
	rjmp .L93
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
	breq .L101
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L102
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
	brsh .L96
	sbiw r24,1
	brlo .L104
	ldi r24,lo8(1)
	ldi r25,0
.L106:
	std Z+1,r25
	st Z,r24
	rjmp .L103
.L96:
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L106
	sbiw r24,6
	brlo .L105
.L103:
	ldi r25,0
	ldi r24,0
	rjmp .L94
.L104:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L103
.L105:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L106
.L101:
	ldi r24,lo8(14)
	ldi r25,0
.L94:
/* epilogue start */
	pop r29
	pop r28
	ret
.L102:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L94
	.size	GetTaskState, .-GetTaskState
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Y+8
	ldd r19,Y+9
	and r18,r24
	and r19,r25
	or r18,r19
	brne .L108
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
.L108:
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
	brlo .L110
	ldi r24,lo8(3)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L111:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	ret
.L110:
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call osEE_task_event_set_mask
	sbiw r24,0
	breq .L113
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
	or r24,r25
	breq .L113
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L113:
	out __SREG__,r17
	rjmp .L111
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
	brsh .L120
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
	breq .L121
	ldd r24,Z+8
	ldd r25,Z+9
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r25,0
	ldi r24,0
	ret
.L120:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L121:
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
	brsh .L125
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L126
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
.L125:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L126:
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
	brsh .L131
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L133
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L133
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
	brsh .L130
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
.L130:
	movw r30,r20
	std Z+1,r25
	st Z,r24
	movw r28,r22
	std Y+1,r19
	st Y,r18
	ldi r25,0
	ldi r24,0
.L127:
/* epilogue start */
	pop r29
	pop r28
	ret
.L131:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L127
.L133:
	ldi r24,lo8(14)
	ldi r25,0
	rjmp .L127
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
	brsh .L137
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
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
	brsh .L136
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L136:
	out __SREG__,r28
	ldi r25,0
	ldi r24,0
.L134:
/* epilogue start */
	pop r28
	ret
.L137:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L134
	.size	IncrementCounter, .-IncrementCounter
	.section	.text.StartScheduleTableRel,"ax",@progbits
.global	StartScheduleTableRel
	.type	StartScheduleTableRel, @function
StartScheduleTableRel:
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
	brsh .L140
	movw r20,r22
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	movw r30,r22
	ldd r24,Z+2
	ldd r25,Z+3
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_st_start_rel
	out __SREG__,r28
.L138:
/* epilogue start */
	pop r28
	ret
.L140:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L138
	.size	StartScheduleTableRel, .-StartScheduleTableRel
	.section	.text.StartScheduleTableAbs,"ax",@progbits
.global	StartScheduleTableAbs
	.type	StartScheduleTableAbs, @function
StartScheduleTableAbs:
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
	brsh .L143
	movw r20,r22
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	movw r30,r22
	ldd r24,Z+2
	ldd r25,Z+3
	in r28,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_st_start_abs
	out __SREG__,r28
.L141:
/* epilogue start */
	pop r28
	ret
.L143:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L141
	.size	StartScheduleTableAbs, .-StartScheduleTableAbs
	.section	.text.StopScheduleTable,"ax",@progbits
.global	StopScheduleTable
	.type	StopScheduleTable, @function
StopScheduleTable:
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
	brsh .L146
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_st_stop
	out __SREG__,r28
.L144:
/* epilogue start */
	pop r28
	ret
.L146:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L144
	.size	StopScheduleTable, .-StopScheduleTable
	.section	.text.GetScheduleTableStatus,"ax",@progbits
.global	GetScheduleTableStatus
	.type	GetScheduleTableStatus, @function
GetScheduleTableStatus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	cp r24,r18
	cpc r25,r19
	brsh .L149
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L150
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
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
	ldd r24,Z+10
	andi r24,lo8(-9)
	movw r30,r22
	st Z,r24
	ldi r25,0
	ldi r24,0
	ret
.L149:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L150:
	ldi r24,lo8(14)
	ldi r25,0
/* epilogue start */
	ret
	.size	GetScheduleTableStatus, .-GetScheduleTableStatus
	.section	.text.NextScheduleTable,"ax",@progbits
.global	NextScheduleTable
	.type	NextScheduleTable, @function
NextScheduleTable:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r18,osEE_kdb_var+16
	lds r19,osEE_kdb_var+16+1
	ldi r25,0
	cp r24,r18
	cpc r25,r19
	brsh .L155
	ldi r23,0
	cp r22,r18
	cpc r23,r19
	brsh .L155
	lds r18,osEE_kdb_var+14
	lds r19,osEE_kdb_var+14+1
	lsl r22
	rol r23
	movw r30,r18
	add r30,r22
	adc r31,r23
	ld r26,Z
	ldd r27,Z+1
	lsl r24
	rol r25
	add r18,r24
	adc r19,r25
	movw r28,r18
	ld r30,Y
	ldd r31,Y+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r18,X+
	ld r19,X
	sbiw r26,1
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r28,Z+6
	ldd r29,Z+7
	sbiw r28,0
	breq .L153
	ld __tmp_reg__,Y+
	ld r29,Y
	mov r28,__tmp_reg__
	std Y+10,__zero_reg__
.L153:
	std Z+7,r27
	std Z+6,r26
	ldi r25,lo8(1)
	movw r30,r18
	std Z+10,r25
	out __SREG__,r24
	ldi r25,0
	ldi r24,0
.L151:
/* epilogue start */
	pop r29
	pop r28
	ret
.L155:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L151
	.size	NextScheduleTable, .-NextScheduleTable
	.section	.text.SyncScheduleTable,"ax",@progbits
.global	SyncScheduleTable
	.type	SyncScheduleTable, @function
SyncScheduleTable:
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
	brsh .L161
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\14-1~1.E2E\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_st_syncronize
	out __SREG__,r28
.L159:
/* epilogue start */
	pop r28
	ret
.L161:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L159
	.size	SyncScheduleTable, .-SyncScheduleTable
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
	brne .L164
	ldd r24,Z+6
	ret
.L164:
	ldi r24,lo8(-1)
/* epilogue start */
	ret
	.size	GetISRID, .-GetISRID
	.ident	"GCC: (GNU) 7.3.0"
