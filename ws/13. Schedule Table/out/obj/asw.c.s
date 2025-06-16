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
	ldi r24,0
	call IncrementCounter
	lds r24,c.2381
	lds r25,c.2381+1
	lds r26,c.2381+2
	lds r27,c.2381+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts c.2381,r24
	sts c.2381+1,r25
	sts c.2381+2,r26
	sts c.2381+3,r27
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	ret
	.size	TimerISR, .-TimerISR
	.section	.rodata.FuncTaskH.str1.1,"aMS",@progbits,1
.LC1:
	.string	"<TaskH begins.> "
.LC2:
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
	ldi r22,lo8(-60)
	ldi r23,lo8(9)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTaskH, .-FuncTaskH
	.section	.rodata.FuncTaskM.str1.1,"aMS",@progbits,1
.LC3:
	.string	"<TaskM begins.> "
.LC4:
	.string	"<TaskM ends.> "
	.section	.text.FuncTaskM,"ax",@progbits
.global	FuncTaskM
	.type	FuncTaskM, @function
FuncTaskM:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-48)
	ldi r23,lo8(7)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTaskM, .-FuncTaskM
	.section	.rodata.FuncTaskL.str1.1,"aMS",@progbits,1
.LC5:
	.string	"<TaskL begins.> "
.LC6:
	.string	"<TaskL ends.> "
	.section	.text.FuncTaskL,"ax",@progbits
.global	FuncTaskL
	.type	FuncTaskL, @function
FuncTaskL:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-12)
	ldi r23,lo8(1)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTaskL, .-FuncTaskL
	.section	.data.c.2381,"aw",@progbits
	.type	c.2381, @object
	.size	c.2381, 4
c.2381:
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
