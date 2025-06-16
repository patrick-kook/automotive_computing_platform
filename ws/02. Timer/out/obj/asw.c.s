	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello World\n"
.LC1:
	.string	"Goodbye World\n"
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	jmp TerminateTask
	.size	FuncTask1, .-FuncTask1
	.section	.rodata.TimerISR.str1.1,"aMS",@progbits,1
.LC2:
	.string	"\n %4ld: "
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,c.2333
	lds r25,c.2333+1
	lds r26,c.2333+2
	lds r27,c.2333+3
	movw r20,r24
	movw r22,r26
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	sts c.2333,r20
	sts c.2333+1,r21
	sts c.2333+2,r22
	sts c.2333+3,r23
	push r27
	push r26
	push r25
	push r24
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
/* epilogue start */
	ret
	.size	TimerISR, .-TimerISR
	.section	.bss.c.2333,"aw",@nobits
	.type	c.2333, @object
	.size	c.2333, 4
c.2333:
	.zero	4
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
