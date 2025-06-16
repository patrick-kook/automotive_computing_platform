	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	jmp IncrementCounter
	.size	TimerISR, .-TimerISR
	.section	.rodata.FuncTask_CAN_ReadMsg.str1.1,"aMS",@progbits,1
.LC0:
	.string	"camera : Left "
.LC1:
	.string	"camera : Right "
.LC2:
	.string	"camera : Front "
.LC3:
	.string	"rpm : %u "
.LC4:
	.string	"camera : None "
.LC5:
	.string	"throttle : %hu "
.LC6:
	.string	"lidar : %hu "
.LC7:
	.string	"\n"
	.section	.text.FuncTask_CAN_ReadMsg,"ax",@progbits
.global	FuncTask_CAN_ReadMsg
	.type	FuncTask_CAN_ReadMsg, @function
FuncTask_CAN_ReadMsg:
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
/* stack size = 17 */
.L__stack_usage = 17
	movw r24,r28
	adiw r24,1
	movw r10,r24
	ldi r24,lo8(7)
	movw r30,r10
	0:
	st Z+,__zero_reg__
	dec r24
	brne 0b
	call CAN_checkMsg
	cpi r24,lo8(1)
	brne .L3
	movw r24,r10
	call CAN_readMsg
	ldd r30,Y+6
	ldd r31,Y+7
	ld r14,Z
	ldd r24,Z+1
	mov r15,r14
	mov r14,r24
	ldd r24,Z+3
	ldd r16,Z+2
	mov r17,r16
	mov r16,r24
	ldd r24,Z+5
	ldd r12,Z+4
	mov r13,r12
	mov r12,r24
.L3:
	ldi r24,lo8(2)
	call ActivateTask
	cpi r16,-12
	ldi r31,1
	cpc r17,r31
	brlo .+2
	rjmp .L4
	movw r24,r12
	subi r24,101
	sbc r25,__zero_reg__
	cpi r24,99
	cpc r25,__zero_reg__
	brsh .L5
	ldi r22,lo8(8)
	ldi r23,0
	ldi r24,lo8(2)
	call SetEvent
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
.L8:
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L6:
	push r15
	push r14
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	push r17
	push r16
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	call TerminateTask
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	ret
.L5:
	ldi r24,100
	cp r12,r24
	cpc r13,__zero_reg__
	brsh .L7
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(2)
	call SetEvent
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	rjmp .L8
.L7:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(2)
	call SetEvent
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	rjmp .L8
.L4:
	ldi r24,lo8(1)
	call GetResource
	ldi r22,0
	movw r24,r14
	call control_rpm
	sts rpm+1,r25
	sts rpm,r24
	ldi r24,lo8(1)
	call ReleaseResource
	lds r24,rpm+1
	push r24
	lds r24,rpm
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L6
	.size	FuncTask_CAN_ReadMsg, .-FuncTask_CAN_ReadMsg
	.section	.text.FuncSensorTask,"ax",@progbits
.global	FuncSensorTask
	.type	FuncSensorTask, @function
FuncSensorTask:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(11)
	ldi r25,0
	call WaitEvent
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call GetEvent
	ldd r24,Y+1
	sbrs r24,1
	rjmp .L10
	ldi r24,lo8(3)
	call ActivateTask
	ldi r24,lo8(2)
	ldi r25,0
	call ClearEvent
.L10:
	ldd r24,Y+1
	sbrs r24,0
	rjmp .L11
	ldi r24,lo8(5)
	call ActivateTask
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
.L11:
	ldd r24,Y+1
	sbrs r24,3
	rjmp .L12
	ldi r24,lo8(4)
	call ActivateTask
	ldi r24,lo8(8)
	ldi r25,0
	call ClearEvent
.L12:
	call TerminateTask
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	FuncSensorTask, .-FuncSensorTask
	.section	.text.FuncAvoidFrontTask,"ax",@progbits
.global	FuncAvoidFrontTask
	.type	FuncAvoidFrontTask, @function
FuncAvoidFrontTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(1)
	call GetResource
	ldi r22,lo8(1)
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	call control_rpm
	sts rpm+1,r25
	sts rpm,r24
	ldi r24,lo8(1)
	call ReleaseResource
	lds r24,rpm+1
	push r24
	lds r24,rpm
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncAvoidFrontTask, .-FuncAvoidFrontTask
	.section	.text.FuncAvoidLeftTask,"ax",@progbits
.global	FuncAvoidLeftTask
	.type	FuncAvoidLeftTask, @function
FuncAvoidLeftTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp FuncAvoidFrontTask
	.size	FuncAvoidLeftTask, .-FuncAvoidLeftTask
	.section	.text.FuncAvoidRightTask,"ax",@progbits
.global	FuncAvoidRightTask
	.type	FuncAvoidRightTask, @function
FuncAvoidRightTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp FuncAvoidFrontTask
	.size	FuncAvoidRightTask, .-FuncAvoidRightTask
	.comm	rpm,2,1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
