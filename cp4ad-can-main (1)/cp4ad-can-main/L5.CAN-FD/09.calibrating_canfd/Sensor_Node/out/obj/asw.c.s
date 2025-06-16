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
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,31
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 31 */
/* stack size = 35 */
.L__stack_usage = 35
	lds r24,isFirst
	tst r24
	brne .+2
	rjmp .L3
	lds r22,car_input
	lds r23,car_input+1
	lds r24,car_input+2
	lds r25,car_input+3
	call control_yaw
	sts current_yaw,r22
	sts current_yaw+1,r23
	sts current_yaw+2,r24
	sts current_yaw+3,r25
	lds r22,car_input+4
	lds r23,car_input+4+1
	lds r24,car_input+4+2
	lds r25,car_input+4+3
	call control_temperature
	sts current_temp,r22
	sts current_temp+1,r23
	sts current_temp+2,r24
	sts current_temp+3,r25
	lds r18,car_input+12
	lds r19,car_input+12+1
	lds r20,car_input+12+2
	lds r21,car_input+12+3
	lds r22,car_input+8
	lds r23,car_input+8+1
	lds r24,car_input+8+2
	lds r25,car_input+8+3
	call control_rpm
	sts current_rpm,r22
	sts current_rpm+1,r23
	sts current_rpm+2,r24
	sts current_rpm+3,r25
	sts isFirst,__zero_reg__
.L3:
	call CAN_checkMsg
	tst r24
	brne .+2
	rjmp .L4
	movw r24,r28
	adiw r24,25
	call CAN_readMsg
	tst r24
	brne .+2
	rjmp .L4
	movw r24,r28
	adiw r24,25
	call handle_simple_tlv
	lds r22,car_input
	lds r23,car_input+1
	lds r24,car_input+2
	lds r25,car_input+3
	call control_yaw
	sts current_yaw,r22
	sts current_yaw+1,r23
	sts current_yaw+2,r24
	sts current_yaw+3,r25
	lds r22,car_input+4
	lds r23,car_input+4+1
	lds r24,car_input+4+2
	lds r25,car_input+4+3
	call control_temperature
	sts current_temp,r22
	sts current_temp+1,r23
	sts current_temp+2,r24
	sts current_temp+3,r25
	lds r18,car_input+12
	lds r19,car_input+12+1
	lds r20,car_input+12+2
	lds r21,car_input+12+3
	lds r22,car_input+8
	lds r23,car_input+8+1
	lds r24,car_input+8+2
	lds r25,car_input+8+3
	call control_rpm
	sts current_rpm,r22
	sts current_rpm+1,r23
	sts current_rpm+2,r24
	sts current_rpm+3,r25
.L5:
	call TerminateTask
/* epilogue start */
	adiw r28,31
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L4:
	lds r24,target_yaw
	lds r25,target_yaw+1
	lds r18,target_yaw+2
	lds r19,target_yaw+3
	std Y+1,r19
	std Y+2,r18
	std Y+3,r25
	std Y+4,r24
	lds r24,current_yaw
	lds r25,current_yaw+1
	lds r18,current_yaw+2
	lds r19,current_yaw+3
	std Y+5,r19
	std Y+6,r18
	std Y+7,r25
	std Y+8,r24
	lds r24,target_temp
	lds r25,target_temp+1
	lds r18,target_temp+2
	lds r19,target_temp+3
	std Y+9,r19
	std Y+10,r18
	std Y+11,r25
	std Y+12,r24
	lds r24,current_temp
	lds r25,current_temp+1
	lds r18,current_temp+2
	lds r19,current_temp+3
	std Y+13,r19
	std Y+14,r18
	std Y+15,r25
	std Y+16,r24
	lds r24,target_rpm
	lds r25,target_rpm+1
	lds r18,target_rpm+2
	lds r19,target_rpm+3
	std Y+17,r19
	std Y+18,r18
	std Y+19,r25
	std Y+20,r24
	lds r24,current_rpm
	lds r25,current_rpm+1
	lds r18,current_rpm+2
	lds r19,current_rpm+3
	std Y+21,r19
	std Y+22,r18
	std Y+23,r25
	std Y+24,r24
	ldi r16,lo8(-16)
	ldi r17,0
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	ldi r20,lo8(1)
	ldi r22,lo8(64)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call send_simple_tlv
	rjmp .L5
	.size	FuncTask1, .-FuncTask1
	.comm	current_rpm,4,1
	.comm	current_temp,4,1
	.comm	current_yaw,4,1
.global	isFirst
	.section	.data.isFirst,"aw",@progbits
	.type	isFirst, @object
	.size	isFirst, 1
isFirst:
	.byte	1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
