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
	.string	"send status: %d"
.LC1:
	.string	" send length: %d\n"
.LC2:
	.string	"Receive length: %d \n"
.LC3:
	.string	"Go: %lu "
.LC4:
	.string	"Comeback: %lu \n"
.LC5:
	.string	"RTT(Round Trip Time): %lu \n"
.LC6:
	.string	"Process_Time: %luus \n"
.LC7:
	.string	"%d byte_Msg "
.LC8:
	.string	"Transmission_Time: %luus "
.LC9:
	.string	"\n"
.LC10:
	.string	"--------------------------------------------------\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r3
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 37 */
.L__stack_usage = 37
	call micros
	movw r4,r22
	movw r6,r24
	std Y+16,__zero_reg__
	std Y+15,__zero_reg__
	ldi r18,lo8(8)
	mov r3,r18
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r12,r18
	movw r26,r18
	mov r30,r3
	0:
	st X+,__zero_reg__
	dec r30
	brne 0b
	ldi r24,lo8(64)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+10,r24
	std Y+11,r25
	std Y+12,r26
	std Y+13,r27
	std Y+9,r3
	ldi r24,lo8(8)
	ldi r25,0
	call malloc
	movw r16,r24
	std Y+15,r25
	std Y+14,r24
	ldi r20,lo8(7)
	ldi r21,0
	ldi r23,0
	ldi r22,0
	movw r24,r28
	adiw r24,9
	call padding
	call micros
	movw r8,r22
	movw r10,r24
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call CAN_sendMsg
	mov r14,r24
	mov r15,__zero_reg__
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	push r3
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
	or r14,r15
	brne .L4
	movw r24,r16
	call free
	call TerminateTask
.L4:
	call micros
	sub r22,r4
	sbc r23,r5
	sbc r24,r6
	sbc r25,r7
	cpi r22,-128
	sbci r23,-106
	sbci r24,-104
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L6
	call CAN_checkMsg
	tst r24
	breq .L4
	movw r24,r12
	call CAN_readMsg
	tst r24
	breq .L4
	call micros
	movw r4,r22
	movw r6,r24
	ldd r30,Y+6
	ldd r31,Y+7
	ldd r24,Z+6
	ldd r25,Z+7
	eor r25,r24
	eor r24,r25
	eor r25,r24
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	ldd r20,Z+2
	ldd r21,Z+3
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	movw r18,r24
	movw r20,r26
	lsl r18
	rol r19
	rol r20
	rol r21
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	movw r14,r6
	movw r12,r4
	sub r12,r8
	sbc r13,r9
	sbc r14,r10
	sbc r15,r11
	ldd r24,Y+1
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	push r11
	push r10
	push r9
	push r8
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	push r7
	push r6
	push r5
	push r4
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	ldd r19,Y+20
	push r19
	ldd r20,Y+19
	push r20
	ldd r21,Y+18
	push r21
	ldd r24,Y+17
	push r24
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	push __zero_reg__
	ldi r24,lo8(8)
	push r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	sub r12,r18
	sbc r13,r19
	sbc r14,r20
	sbc r15,r21
	lsr r15
	ror r14
	ror r13
	ror r12
	push r15
	push r14
	push r13
	push r12
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
.L6:
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	call printfSerial
	movw r24,r16
	call free
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	call TerminateTask
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	adiw r28,20
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	ret
	.size	FuncTask1, .-FuncTask1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
