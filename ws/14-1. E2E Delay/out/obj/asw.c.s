	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.Runnable_1,"ax",@progbits
.global	Runnable_1
	.type	Runnable_1, @function
Runnable_1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,R1_in
	lds r25,R1_in+1
	sts R2_in+1,r25
	sts R2_in,r24
/* epilogue start */
	ret
	.size	Runnable_1, .-Runnable_1
	.section	.text.Runnable_2,"ax",@progbits
.global	Runnable_2
	.type	Runnable_2, @function
Runnable_2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,R2_in
	lds r25,R2_in+1
	sts R3_in+1,r25
	sts R3_in,r24
/* epilogue start */
	ret
	.size	Runnable_2, .-Runnable_2
	.section	.text.Runnable_3,"ax",@progbits
.global	Runnable_3
	.type	Runnable_3, @function
Runnable_3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,R3_in
	lds r25,R3_in+1
	sts R3_out+1,r25
	sts R3_out,r24
/* epilogue start */
	ret
	.size	Runnable_3, .-Runnable_3
	.section	.rodata.TimerISR.str1.1,"aMS",@progbits,1
.LC0:
	.string	"UP"
.LC1:
	.string	"NA"
.LC2:
	.string	"DN"
.LC3:
	.string	"\n%4ld: [%s] "
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
	lds r24,R3_out
	lds r25,R3_out+1
	ldi r18,lo8(.LC0)
	ldi r19,hi8(.LC0)
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L5
	adiw r24,1
	brne .L7
	ldi r18,lo8(.LC2)
	ldi r19,hi8(.LC2)
.L5:
	lds r24,c.2396
	lds r25,c.2396+1
	lds r26,c.2396+2
	lds r27,c.2396+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts c.2396,r24
	sts c.2396+1,r25
	sts c.2396+2,r26
	sts c.2396+3,r27
	push r19
	push r18
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
/* epilogue start */
	ret
.L7:
	ldi r18,lo8(.LC1)
	ldi r19,hi8(.LC1)
	rjmp .L5
	.size	TimerISR, .-TimerISR
	.section	.rodata.ButtonISR.str1.1,"aMS",@progbits,1
.LC4:
	.string	"<BUTTON UP>"
.LC5:
	.string	"<BUTTON DOWN>"
	.section	.text.ButtonISR,"ax",@progbits
.global	ButtonISR
	.type	ButtonISR, @function
ButtonISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call DisableAllInterrupts
	sbic 0x6,0
	rjmp .L8
	ldi r24,lo8(14)
	call analogRead
	cpi r24,50
	cpc r25,__zero_reg__
	brge .L10
	ldi r24,lo8(1)
	ldi r25,0
	sts R1_in+1,r25
	sts R1_in,r24
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
.L12:
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L11:
	jmp EnableAllInterrupts
.L10:
	cpi r24,-56
	cpc r25,__zero_reg__
	brge .L11
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	sts R1_in+1,r25
	sts R1_in,r24
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	rjmp .L12
.L8:
/* epilogue start */
	ret
	.size	ButtonISR, .-ButtonISR
	.section	.rodata.FuncTask_2s.str1.1,"aMS",@progbits,1
.LC6:
	.string	"Task_2s begins... "
.LC7:
	.string	"Task_2s finishes... "
	.section	.text.FuncTask_2s,"ax",@progbits
.global	FuncTask_2s
	.type	FuncTask_2s, @function
FuncTask_2s:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask_2s, .-FuncTask_2s
	.section	.rodata.FuncTask_4s.str1.1,"aMS",@progbits,1
.LC8:
	.string	"Task_4s begins... "
.LC9:
	.string	"Task_4s finishes... "
	.section	.text.FuncTask_4s,"ax",@progbits
.global	FuncTask_4s
	.type	FuncTask_4s, @function
FuncTask_4s:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask_4s, .-FuncTask_4s
	.section	.rodata.FuncTask_8s.str1.1,"aMS",@progbits,1
.LC10:
	.string	"Task_8s begins... "
.LC11:
	.string	"Task_8s finishes... "
	.section	.text.FuncTask_8s,"ax",@progbits
.global	FuncTask_8s
	.type	FuncTask_8s, @function
FuncTask_8s:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	call printfSerial
	call Runnable_3
	call Runnable_2
	call Runnable_1
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask_8s, .-FuncTask_8s
	.section	.data.c.2396,"aw",@progbits
	.type	c.2396, @object
	.size	c.2396, 4
c.2396:
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.comm	R3_out,2,1
	.comm	R3_in,2,1
	.comm	R2_in,2,1
	.comm	R1_in,2,1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
