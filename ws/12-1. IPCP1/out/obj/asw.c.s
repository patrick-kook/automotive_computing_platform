	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.TimerISR.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\n%4ld: "
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,c.2348
	lds r25,c.2348+1
	lds r26,c.2348+2
	lds r27,c.2348+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts c.2348,r24
	sts c.2348+1,r25
	sts c.2348+2,r26
	sts c.2348+3,r27
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	lds r24,c.2348
	lds r25,c.2348+1
	lds r26,c.2348+2
	lds r27,c.2348+3
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r24,-4
	ldi r18,-1
	cpc r25,r18
	cpc r26,r18
	cpc r27,r18
	brne .L2
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(M1)
	ldi r25,hi8(M1)
	call InitMutex
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(M2)
	ldi r25,hi8(M2)
	jmp InitMutex
.L2:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L3
	ldi r24,lo8(3)
.L6:
	jmp ActivateTask
.L3:
	cpi r24,3
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L4
	ldi r24,lo8(2)
	rjmp .L6
.L4:
	sbiw r24,5
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L1
	ldi r24,lo8(1)
	rjmp .L6
.L1:
/* epilogue start */
	ret
	.size	TimerISR, .-TimerISR
	.section	.rodata.FuncTaskH.str1.1,"aMS",@progbits,1
.LC1:
	.string	"<TaskH begins.> "
.LC2:
	.string	"TaskH : Try Lock(S2). "
.LC3:
	.string	"TaskH : Get Lock(S2). "
.LC4:
	.string	"TaskH : Try Lock(S1). "
.LC5:
	.string	"TaskH : Get Lock(S1). "
.LC6:
	.string	"TaskH : Release Lock(S1). "
.LC7:
	.string	"TaskH : Release Lock(S2). "
.LC8:
	.string	"<TaskH ends.> "
	.section	.text.FuncTaskH,"ax",@progbits
.global	FuncTaskH
	.type	FuncTaskH, @function
FuncTaskH:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(2)
	call GetResource
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-72)
	ldi r23,lo8(11)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	call GetResource
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-72)
	ldi r23,lo8(11)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	call ReleaseResource
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(2)
	call ReleaseResource
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	jmp TerminateTask
	.size	FuncTaskH, .-FuncTaskH
	.section	.rodata.FuncTaskM.str1.1,"aMS",@progbits,1
.LC9:
	.string	"<TaskM begins.> "
.LC10:
	.string	"TaskM : Try Lock(S2). "
.LC11:
	.string	"TaskM : Get Lock(S2). "
.LC12:
	.string	"TaskM : Release Lock(S2). "
.LC13:
	.string	"<TaskM ends.> "
	.section	.text.FuncTaskM,"ax",@progbits
.global	FuncTaskM
	.type	FuncTaskM, @function
FuncTaskM:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(2)
	call GetResource
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-48)
	ldi r23,lo8(7)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC12)
	ldi r25,hi8(.LC12)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(2)
	call ReleaseResource
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC13)
	ldi r25,hi8(.LC13)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	jmp TerminateTask
	.size	FuncTaskM, .-FuncTaskM
	.section	.rodata.FuncTaskL.str1.1,"aMS",@progbits,1
.LC14:
	.string	"<TaskL begins.> "
.LC15:
	.string	"TaskL : Try Lock(S1). "
.LC16:
	.string	"TaskL : Get Lock(S1). "
.LC17:
	.string	"TaskL : Release Lock(S1). "
.LC18:
	.string	"<TaskL ends.> "
	.section	.text.FuncTaskL,"ax",@progbits
.global	FuncTaskL
	.type	FuncTaskL, @function
FuncTaskL:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC14)
	ldi r25,hi8(.LC14)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-48)
	ldi r23,lo8(7)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC15)
	ldi r25,hi8(.LC15)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	call GetResource
	ldi r24,lo8(.LC16)
	ldi r25,hi8(.LC16)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-96)
	ldi r23,lo8(15)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC17)
	ldi r25,hi8(.LC17)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	call ReleaseResource
	ldi r22,lo8(-24)
	ldi r23,lo8(3)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC18)
	ldi r25,hi8(.LC18)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	jmp TerminateTask
	.size	FuncTaskL, .-FuncTaskL
	.section	.data.c.2348,"aw",@progbits
	.type	c.2348, @object
	.size	c.2348, 4
c.2348:
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.comm	M2,5,1
	.comm	M1,5,1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
