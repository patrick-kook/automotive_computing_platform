	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Task1 Begins..."
.LC1:
	.string	"Hyunsu Byunsin"
.LC2:
	.string	"Task1 Finishes..."
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldi r22,lo8(-72)
	ldi r23,lo8(11)
	ldi r24,0
	ldi r25,0
	call mdelay
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask1, .-FuncTask1
	.section	.rodata.FuncTask2.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Task2 Begins..."
.LC4:
	.string	"Task2 Finishes..."
	.section	.text.FuncTask2,"ax",@progbits
.global	FuncTask2
	.type	FuncTask2, @function
FuncTask2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask2, .-FuncTask2
	.section	.rodata.TimerISR.str1.1,"aMS",@progbits,1
.LC5:
	.string	"\n%4ld: "
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,c.2340
	lds r25,c.2340+1
	lds r26,c.2340+2
	lds r27,c.2340+3
	movw r20,r24
	movw r22,r26
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	sts c.2340,r20
	sts c.2340+1,r21
	sts c.2340+2,r22
	sts c.2340+3,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
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
	.section	.rodata.ButtonISR.str1.1,"aMS",@progbits,1
.LC6:
	.string	"<BUTTON ISR>"
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
	rjmp .L4
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(14)
	call analogRead
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r24,50
	cpc r25,__zero_reg__
	brge .L6
	ldi r24,lo8(2)
.L8:
	call ActivateTask
.L7:
	jmp EnableAllInterrupts
.L6:
	cpi r24,-56
	cpc r25,__zero_reg__
	brge .L7
	ldi r24,lo8(3)
	rjmp .L8
.L4:
/* epilogue start */
	ret
	.size	ButtonISR, .-ButtonISR
	.section	.data.c.2340,"aw",@progbits
	.type	c.2340, @object
	.size	c.2340, 4
c.2340:
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
