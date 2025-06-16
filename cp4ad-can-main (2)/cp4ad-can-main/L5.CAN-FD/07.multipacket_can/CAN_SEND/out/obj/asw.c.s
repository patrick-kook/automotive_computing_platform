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
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC0:
	.string	"--------------------------------------------------\n"
.LC1:
	.string	"send status: %d "
.LC2:
	.string	"frame id: 0x%2x length: %d send_message "
.LC3:
	.string	"\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r16,len
	lds r17,len+1
	movw r24,r16
	call malloc
	mov r29,r24
	mov r28,r25
	mov r30,r24
	mov r31,r25
	ldi r25,0
	ldi r24,0
.L3:
	cp r16,r24
	cpc r17,r25
	brne .L4
	movw r20,r16
	mov r22,r29
	mov r23,r28
	ldi r24,lo8(64)
	call send_full_message_can
	mov r17,r24
	mov r16,r25
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	push r16
	push r17
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	lds r24,len+1
	push r24
	lds r24,len
	push r24
	push __zero_reg__
	ldi r24,lo8(64)
	push r24
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
	mov r24,r29
	mov r25,r28
	call free
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp TerminateTask
.L4:
	st Z+,r24
	adiw r24,1
	rjmp .L3
	.size	FuncTask1, .-FuncTask1
.global	len
	.section	.data.len,"aw",@progbits
	.type	len, @object
	.size	len, 2
len:
	.word	600
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
