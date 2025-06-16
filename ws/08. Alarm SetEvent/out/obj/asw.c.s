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
	ldi r24,lo8(2)
	call ActivateTask
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
	.section	.rodata.FuncTask2.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Task2 Begins..."
.LC3:
	.string	"Task2 Waits..."
.LC4:
	.string	"Task2 Wakes Up..."
.LC5:
	.string	"[Event1]"
.LC6:
	.string	"Task2 Finishes..."
	.section	.text.FuncTask2,"ax",@progbits
.global	FuncTask2
	.type	FuncTask2, @function
FuncTask2:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	ldi r25,0
	call WaitEvent
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call GetEvent
	ldd r24,Y+1
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	sbrs r24,0
	rjmp .L3
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	pop __tmp_reg__
	pop __tmp_reg__
.L3:
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	call TerminateTask
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	FuncTask2, .-FuncTask2
	.section	.rodata.TimerISR.str1.1,"aMS",@progbits,1
.LC7:
	.string	"\n%4ld: "
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,c.2382
	lds r25,c.2382+1
	lds r26,c.2382+2
	lds r27,c.2382+3
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L8
	ldi r24,lo8(1)
	call ActivateTask
.L8:
	ldi r24,0
	call IncrementCounter
	lds r24,c.2382
	lds r25,c.2382+1
	lds r26,c.2382+2
	lds r27,c.2382+3
	movw r20,r24
	movw r22,r26
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	sts c.2382,r20
	sts c.2382+1,r21
	sts c.2382+2,r22
	sts c.2382+3,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
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
	.section	.data.c.2382,"aw",@progbits
	.type	c.2382, @object
	.size	c.2382, 4
c.2382:
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
