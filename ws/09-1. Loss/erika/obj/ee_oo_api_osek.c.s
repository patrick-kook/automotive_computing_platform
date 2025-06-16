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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 18 */
.L__stack_usage = 18
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
	in r25,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	pop r6
	pop r5
	pop r4
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
	lds r6,osEE_cdb_var+8
	lds r7,osEE_cdb_var+8+1
	ldi r31,lo8(4)
	mul r24,r31
	movw r14,r0
	clr __zero_reg__
	add r6,r14
	adc r7,r15
	movw r26,r6
	adiw r26,2
	ld r8,X+
	ld r9,X
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	ldi r20,lo8(6)
	mov r5,r20
.L30:
	cp r10,r8
	cpc r11,r9
	brne .L31
	lds r4,osEE_cdb_var+4
	lds r5,osEE_cdb_var+4+1
	movw r10,r16
	ldi r30,2
	add r10,r30
	adc r11,__zero_reg__
	add r4,r14
	adc r5,r15
	movw r26,r4
	adiw r26,2
	ld r6,X+
	ld r7,X
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	clr r8
	inc r8
	mov r9,__zero_reg__
.L32:
	cp r14,r6
	cpc r15,r7
	brne .L33
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,1
	brne .L34
	ldi r24,lo8(2)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
.L34:
	movw r26,r16
	adiw r26,8
	ld r24,X+
	ld r25,X
	sbiw r24,2
	brne .L35
	movw r30,r12
	ldd r22,Z+2
	ldd r23,Z+3
	movw r20,r22
	movw r24,r12
	call osEE_hal_save_ctx_and_ready2stacked
	movw r24,r12
	call osEE_task_end
.L35:
	ldi r25,0
	ldi r24,0
	rjmp .L27
.L31:
	movw r26,r6
	ld r30,X+
	ld r31,X
	mul r5,r10
	movw r24,r0
	mul r5,r11
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
	sub r10,r27
	sbc r11,r27
	rjmp .L30
.L33:
	movw r26,r4
	ld r30,X+
	ld r31,X
	movw r24,r14
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
	movw r26,r20
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	std Z+3,r9
	std Z+2,r8
	movw r30,r16
	ldd r22,Z+4
	ldd r23,Z+5
	movw r26,r22
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+5,r25
	std Z+4,r24
	st X+,__zero_reg__
	st X,__zero_reg__
	movw r24,r10
	call osEE_scheduler_rq_insert
	ldi r27,-1
	sub r14,r27
	sbc r15,r27
	rjmp .L32
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
	breq .L38
	ldd r24,Z+10
	ret
.L38:
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
	brsh .L43
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
	brsh .L43
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r24,r16
	call osEE_task_activated
	movw r28,r24
	or r24,r25
	brne .L41
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_activated
.L41:
	out __SREG__,r15
.L39:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L43:
	ldi r28,lo8(3)
	ldi r29,0
	rjmp .L39
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
	rjmp .L52
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
	brsh .L52
	lds r28,osEE_cdb_var
	lds r29,osEE_cdb_var+1
	ld r30,Y
	ldd r31,Y+1
	ldd r24,Y+15
	tst r24
	breq .L46
	std Y+15,__zero_reg__
	ldd r24,Y+13
	out __SREG__,r24
.L46:
	ldd r24,Y+17
	tst r24
	breq .L47
	std Y+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L47:
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r30,r16
	cpc r31,r17
	brne .L48
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(5)
	ldi r25,0
	std Z+3,r25
	std Z+2,r24
.L49:
	ld r30,Y
	ldd r31,Y+1
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Z+2
	ldd r25,Z+3
	call osEE_hal_terminate_ctx
.L48:
	movw r24,r16
	call osEE_task_activated
	sbiw r24,0
	brne .L50
	movw r22,r16
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_insert
	rjmp .L49
.L52:
	ldi r24,lo8(3)
	ldi r25,0
.L44:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L50:
	out __SREG__,r15
	rjmp .L44
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
	breq .L60
	std Z+15,__zero_reg__
	ldd r24,Z+13
	out __SREG__,r24
.L60:
	ldd r24,Z+17
	tst r24
	breq .L61
	std Z+17,__zero_reg__
/* #APP */
 ;  110 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L61:
	in r24,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	rjmp .L69
	in r15,__SREG__
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
.L69:
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
	brsh .L73
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	cp r24,r25
	brsh .L72
	std Z+1,r25
.L72:
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
.L70:
/* epilogue start */
	pop r29
	pop r28
	ret
.L73:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L70
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
	brsh .L78
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	breq .L76
	movw r26,r18
	adiw r26,2
	ld r24,X
.L79:
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
.L74:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L76:
	ldd r24,Y+12
	rjmp .L79
.L78:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L74
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Z+8
	ldd r19,Z+9
	subi r18,1
	sbc r19,__zero_reg__
	cpi r18,2
	cpc r19,__zero_reg__
	brsh .L81
	ldi r24,lo8(3)
	ldi r25,0
	std Z+9,r25
	std Z+8,r24
	std Z+12,r21
	std Z+11,r20
/* #APP */
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L82:
	rjmp .L82
.L81:
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
	breq .L83
	ld r28,Z
	ldd r29,Z+1
	ldd r24,Y+7
	ldd r25,Y+8
	cpi r24,2
	cpc r25,__zero_reg__
	brsh .L85
.L92:
	ldd r25,Y+6
.L86:
	st X,r25
	ldi r25,0
	ldi r24,0
.L83:
/* epilogue start */
	pop r29
	pop r28
	ret
.L85:
	sbiw r24,2
	brne .L91
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
.L88:
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	brne .L89
.L91:
	ldi r25,lo8(-1)
	rjmp .L86
.L89:
	ldd r28,Z+2
	ldd r29,Z+3
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,2
	brsh .L88
	rjmp .L92
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
	breq .L100
	ldi r25,0
	lds r18,osEE_kdb_var+4
	lds r19,osEE_kdb_var+4+1
	cp r24,r18
	cpc r25,r19
	brsh .L101
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
	brsh .L95
	sbiw r24,1
	brlo .L103
	ldi r24,lo8(1)
	ldi r25,0
.L105:
	std Z+1,r25
	st Z,r24
	rjmp .L102
.L95:
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L105
	sbiw r24,6
	brlo .L104
.L102:
	ldi r25,0
	ldi r24,0
	rjmp .L93
.L103:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L102
.L104:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L105
.L100:
	ldi r24,lo8(14)
	ldi r25,0
.L93:
/* epilogue start */
	pop r29
	pop r28
	ret
.L101:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L93
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
	brsh .L108
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_set_rel
	out __SREG__,r28
.L106:
/* epilogue start */
	pop r28
	ret
.L108:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L106
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
	brsh .L111
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_set_abs
	out __SREG__,r28
.L109:
/* epilogue start */
	pop r28
	ret
.L111:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L109
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
	brsh .L114
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_cancel
	out __SREG__,r28
.L112:
/* epilogue start */
	pop r28
	ret
.L114:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L112
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
	brsh .L117
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L118
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call osEE_alarm_get
	out __SREG__,r28
.L115:
/* epilogue start */
	pop r28
	ret
.L117:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L115
.L118:
	ldi r24,lo8(14)
	ldi r25,0
	rjmp .L115
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
	brsh .L121
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L122
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
.L121:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L122:
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r18,Y+8
	ldd r19,Y+9
	and r18,r24
	and r19,r25
	or r18,r19
	brne .L124
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
.L124:
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
	brlo .L126
	ldi r24,lo8(3)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L127:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	ret
.L126:
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call osEE_task_event_set_mask
	sbiw r24,0
	breq .L129
	movw r22,r24
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
	or r24,r25
	breq .L129
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L129:
	out __SREG__,r17
	rjmp .L127
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
	brsh .L136
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
	breq .L137
	ldd r24,Z+8
	ldd r25,Z+9
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r25,0
	ldi r24,0
	ret
.L136:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L137:
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	brsh .L141
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L142
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
.L141:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L142:
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
	brsh .L147
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L149
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L149
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
	brsh .L146
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
.L146:
	movw r30,r20
	std Z+1,r25
	st Z,r24
	movw r28,r22
	std Y+1,r19
	st Y,r18
	ldi r25,0
	ldi r24,0
.L143:
/* epilogue start */
	pop r29
	pop r28
	ret
.L147:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L143
.L149:
	ldi r24,lo8(14)
	ldi r25,0
	rjmp .L143
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
	brsh .L153
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
 ;  105 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\09-1~1.LOS\erika\src\ee_hal_internal.h" 1
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
	brsh .L152
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.L152:
	out __SREG__,r28
	ldi r25,0
	ldi r24,0
.L150:
/* epilogue start */
	pop r28
	ret
.L153:
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L150
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
	brne .L156
	ldd r24,Z+6
	ret
.L156:
	ldi r24,lo8(-1)
/* epilogue start */
	ret
	.size	GetISRID, .-GetISRID
	.ident	"GCC: (GNU) 7.3.0"
