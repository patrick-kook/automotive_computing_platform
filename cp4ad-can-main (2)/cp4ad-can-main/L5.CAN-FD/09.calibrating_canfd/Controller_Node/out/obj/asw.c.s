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
.global	__floatsisf
.global	__fixsfsi
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r2
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
/* stack size = 38 */
.L__stack_usage = 38
	lds r24,count
	sbrc r24,0
	rjmp .L3
	call CAN_checkMsg
	tst r24
	breq .L5
	movw r24,r28
	adiw r24,1
	call CAN_readMsg
	tst r24
	breq .L5
	movw r24,r28
	adiw r24,1
	call handle_simple_tlv
	lds r24,count
	lds r25,count+1
	adiw r24,1
	sts count+1,r25
	sts count,r24
.L5:
	call TerminateTask
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
	pop r2
	ret
.L3:
	lds r22,car_output
	lds r23,car_output+1
	lds r24,car_output+2
	lds r25,car_output+3
	call __floatsisf
	movw r4,r22
	movw r6,r24
	lds r22,car_output+4
	lds r23,car_output+4+1
	lds r24,car_output+4+2
	lds r25,car_output+4+3
	call __floatsisf
	ldi r18,lo8(yaw_pid)
	ldi r19,hi8(yaw_pid)
	push r19
	push r18
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	movw r12,r10
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,lo8(64)
	movw r20,r6
	movw r18,r4
	call pid_controller
	call __fixsfsi
	mov r9,r22
	mov r8,r23
	mov r7,r24
	mov r6,r25
	lds r22,car_output+8
	lds r23,car_output+8+1
	lds r24,car_output+8+2
	lds r25,car_output+8+3
	call __floatsisf
	movw r2,r22
	movw r4,r24
	lds r22,car_output+12
	lds r23,car_output+12+1
	lds r24,car_output+12+2
	lds r25,car_output+12+3
	call __floatsisf
	ldi r18,lo8(temp_pid)
	ldi r19,hi8(temp_pid)
	push r19
	push r18
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	movw r20,r4
	movw r18,r2
	call pid_controller
	call __fixsfsi
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	lds r22,car_output+16
	lds r23,car_output+16+1
	lds r24,car_output+16+2
	lds r25,car_output+16+3
	call __floatsisf
	movw r2,r22
	movw r4,r24
	lds r22,car_output+20
	lds r23,car_output+20+1
	lds r24,car_output+20+2
	lds r25,car_output+20+3
	call __floatsisf
	ldi r18,lo8(rpm_pid)
	ldi r19,hi8(rpm_pid)
	push r19
	push r18
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	movw r20,r4
	movw r18,r2
	call pid_controller
	call __fixsfsi
	std Y+1,r6
	std Y+2,r7
	std Y+3,r8
	std Y+4,r9
	ldd r18,Y+20
	std Y+5,r18
	ldd r18,Y+19
	std Y+6,r18
	ldd r18,Y+18
	std Y+7,r18
	ldd r18,Y+17
	std Y+8,r18
	std Y+9,r25
	std Y+10,r24
	std Y+11,r23
	std Y+12,r22
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	ldi r24,lo8(1)
	std Y+16,r24
	ldi r16,lo8(16)
	ldi r17,0
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	ldi r20,lo8(-96)
	ldi r22,lo8(-128)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call send_simple_tlv
	lds r24,count
	lds r25,count+1
	adiw r24,1
	sts count+1,r25
	sts count,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L5
	.size	FuncTask1, .-FuncTask1
.global	count
	.section	.bss.count,"aw",@nobits
	.type	count, @object
	.size	count, 2
count:
	.zero	2
.global	car_output
	.section	.bss.car_output,"aw",@nobits
	.type	car_output, @object
	.size	car_output, 24
car_output:
	.zero	24
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
