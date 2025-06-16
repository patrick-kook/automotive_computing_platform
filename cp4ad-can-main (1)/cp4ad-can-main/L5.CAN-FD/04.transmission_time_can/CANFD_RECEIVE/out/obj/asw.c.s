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
	.string	"send status: %d "
.LC1:
	.string	" send length: %d \n"
.LC2:
	.string	"processing done\n"
.LC3:
	.string	"re1: %lu "
.LC4:
	.string	"re2: %lu \n"
.LC5:
	.string	"Process Time: %luus\n"
.LC6:
	.string	"--------------------------------------------------\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r4
	push r5
	push r6
	push r7
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 30 */
.L__stack_usage = 30
	ldi r24,lo8(8)
	movw r10,r28
	ldi r18,9
	add r10,r18
	adc r11,__zero_reg__
	movw r30,r10
	mov r18,r24
	0:
	st Z+,__zero_reg__
	dec r18
	brne 0b
	movw r30,r28
	adiw r30,1
	movw r12,r30
	mov r18,r24
	0:
	st Z+,__zero_reg__
	dec r18
	brne 0b
	ldi r20,lo8(65)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	std Y+10,r20
	std Y+11,r21
	std Y+12,r22
	std Y+13,r23
	lds r25,len
	cpi r25,lo8(8)
	brsh .L3
	sts len,r24
.L3:
	lds r14,len
	std Y+9,r14
	mov r15,__zero_reg__
	movw r24,r14
	call malloc
	movw r16,r24
	std Y+15,r25
	std Y+14,r24
	movw r20,r14
	subi r20,1
	sbc r21,__zero_reg__
	ldi r22,lo8(8)
	ldi r23,0
	movw r24,r10
	call padding
	call CAN_checkMsg
	cpi r24,lo8(1)
	breq .+2
	rjmp .L5
	movw r24,r12
	call CAN_readMsg
	tst r24
	brne .+2
	rjmp .L5
	call micros
	movw r4,r22
	movw r6,r24
	ldd r30,Y+14
	ldd r31,Y+15
	st Z,r7
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+1,r24
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+2,r5
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+3,r22
	call micros
	movw r12,r22
	movw r14,r24
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+4,r15
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+5,r24
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+6,r13
	ldd r30,Y+14
	ldd r31,Y+15
	std Z+7,r22
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call CAN_sendMsg
	mov r10,r24
	mov r11,__zero_reg__
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	lds r24,len
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	or r10,r11
	brne .L7
	ldd r24,Y+6
	ldd r25,Y+7
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	movw r24,r16
	call free
	call TerminateTask
.L7:
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	push r7
	push r6
	push r5
	push r4
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	sub r12,r4
	sbc r13,r5
	sbc r14,r6
	sbc r15,r7
	lsl r12
	rol r13
	rol r14
	rol r15
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	ldd r24,Y+6
	ldd r25,Y+7
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.L5:
	movw r24,r16
	call free
	call TerminateTask
/* epilogue start */
	adiw r28,16
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	FuncTask1, .-FuncTask1
.global	len
	.section	.data.len,"aw",@progbits
	.type	len, @object
	.size	len, 1
len:
	.byte	8
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
