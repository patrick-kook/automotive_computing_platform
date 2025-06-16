	.file	"Car_Model.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.control_yaw.str1.1,"aMS",@progbits,1
.LC1:
	.string	"steer: %ld\n"
	.section	.text.control_yaw,"ax",@progbits
.global	control_yaw
	.type	control_yaw, @function
control_yaw:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	ldi r18,101
	cp r12,r18
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brlt .L2
	ldi r25,lo8(100)
	mov r12,r25
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L2:
	ldi r24,-100
	cp r12,r24
	ldi r24,-1
	cpc r13,r24
	cpc r14,r24
	cpc r15,r24
	brge .L3
	ldi r24,lo8(-100)
	mov r12,r24
	clr r13
	dec r13
	mov r14,r13
	mov r15,r13
.L3:
	ldi r26,lo8(15)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	ldi r18,lo8(100)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	lds r24,base_yaw
	lds r25,base_yaw+1
	lds r26,base_yaw+2
	lds r27,base_yaw+3
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	cpi r24,105
	ldi r18,1
	cpc r25,r18
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlt .L4
	ldi r24,lo8(104)
	ldi r25,lo8(1)
	ldi r26,0
	ldi r27,0
.L4:
	cpi r24,-104
	ldi r18,-2
	cpc r25,r18
	ldi r18,-1
	cpc r26,r18
	cpc r27,r18
	brge .L5
	ldi r24,lo8(-104)
	ldi r25,lo8(-2)
	ldi r26,lo8(-1)
	ldi r27,lo8(-1)
.L5:
	movw r20,r24
	movw r22,r26
	sbrs r27,7
	rjmp .L7
	clr r20
	clr r21
	movw r22,r20
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
.L7:
	cpi r20,104
	sbci r21,1
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L6
	sts base_yaw,r24
	sts base_yaw+1,r25
	sts base_yaw+2,r26
	sts base_yaw+3,r27
.L8:
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	lds r22,base_yaw
	lds r23,base_yaw+1
	lds r24,base_yaw+2
	lds r25,base_yaw+3
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L6:
	sts base_yaw,__zero_reg__
	sts base_yaw+1,__zero_reg__
	sts base_yaw+2,__zero_reg__
	sts base_yaw+3,__zero_reg__
	rjmp .L8
	.size	control_yaw, .-control_yaw
	.section	.rodata.control_temperature.str1.1,"aMS",@progbits,1
.LC2:
	.string	"pan_power: %ld\n"
	.section	.text.control_temperature,"ax",@progbits
.global	control_temperature
	.type	control_temperature, @function
control_temperature:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	cp __zero_reg__,r22
	cpc __zero_reg__,r23
	cpc __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L10
	cpi r22,-100
	ldi r18,-1
	cpc r23,r18
	cpc r24,r18
	cpc r25,r18
	brge .+2
	rjmp .L17
	clr r12
	clr r13
	movw r14,r12
	sub r12,r22
	sbc r13,r23
	sbc r14,r24
	sbc r15,r25
.L10:
	push r15
	push r14
	push r13
	push r12
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
	lds r8,base_temp
	lds r9,base_temp+1
	lds r10,base_temp+2
	lds r11,base_temp+3
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L11
	ldi r22,lo8(45)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	ldi r18,lo8(10)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	cpi r18,2
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brsh .L12
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
.L12:
	add r8,r18
	adc r9,r19
	adc r10,r20
	adc r11,r21
.L18:
	sts base_temp,r8
	sts base_temp+1,r9
	sts base_temp+2,r10
	sts base_temp+3,r11
	lds r22,base_temp
	lds r23,base_temp+1
	lds r24,base_temp+2
	lds r25,base_temp+3
	cpi r22,-105
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlt .L14
	ldi r22,lo8(-106)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L14:
	cpi r22,-20
	ldi r18,-1
	cpc r23,r18
	cpc r24,r18
	cpc r25,r18
	brge .L15
	ldi r22,lo8(-20)
	ldi r23,lo8(-1)
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L15:
	sts base_temp,r22
	sts base_temp+1,r23
	sts base_temp+2,r24
	sts base_temp+3,r25
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L17:
	ldi r24,lo8(100)
	mov r12,r24
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L10
.L11:
	movw r24,r14
	movw r22,r12
	ldi r18,lo8(3)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	sub r8,r18
	sbc r9,r19
	sbc r10,r20
	sbc r11,r21
	rjmp .L18
	.size	control_temperature, .-control_temperature
	.section	.rodata.control_rpm.str1.1,"aMS",@progbits,1
.LC3:
	.string	"throttle: %ld gear_position: %ld\n"
.global	__floatsisf
.global	__divsf3
.global	__mulsf3
.global	__fixsfsi
	.section	.text.control_rpm,"ax",@progbits
.global	control_rpm
	.type	control_rpm, @function
control_rpm:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r8,r22
	movw r10,r24
	movw r14,r24
	movw r12,r22
	ldi r24,101
	cp r8,r24
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brlt .L20
	ldi r24,lo8(100)
	mov r12,r24
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L20:
	sbrs r15,7
	rjmp .L21
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L21:
	movw r24,r18
	movw r26,r20
	cpi r24,7
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlt .L22
	ldi r24,lo8(6)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L22:
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brlt .L23
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L23:
	push r27
	push r26
	push r25
	push r24
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	movw r24,r14
	movw r22,r12
	call __floatsisf
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	call __divsf3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(72)
	ldi r21,lo8(67)
	call __mulsf3
	ldi r18,lo8(-102)
	ldi r19,lo8(-103)
	ldi r20,lo8(-103)
	ldi r21,lo8(62)
	call __divsf3
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	call __mulsf3
	call __fixsfsi
	lds r12,base_rpm
	lds r13,base_rpm+1
	lds r14,base_rpm+2
	lds r15,base_rpm+3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	cp __zero_reg__,r8
	cpc __zero_reg__,r9
	cpc __zero_reg__,r10
	cpc __zero_reg__,r11
	brlt .+2
	rjmp .L24
	sts base_rpm,r12
	sts base_rpm+1,r13
	sts base_rpm+2,r14
	sts base_rpm+3,r15
.L25:
	lds r24,base_rpm
	lds r25,base_rpm+1
	lds r26,base_rpm+2
	lds r27,base_rpm+3
	cpi r24,32
	sbci r25,3
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L26
	ldi r24,lo8(32)
	ldi r25,lo8(3)
	ldi r26,0
	ldi r27,0
	sts base_rpm,r24
	sts base_rpm+1,r25
	sts base_rpm+2,r26
	sts base_rpm+3,r27
.L26:
	lds r24,base_rpm
	lds r25,base_rpm+1
	lds r26,base_rpm+2
	lds r27,base_rpm+3
	cpi r24,101
	sbci r25,25
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlt .L27
	ldi r24,lo8(100)
	ldi r25,lo8(25)
	ldi r26,0
	ldi r27,0
	sts base_rpm,r24
	sts base_rpm+1,r25
	sts base_rpm+2,r26
	sts base_rpm+3,r27
.L27:
	lds r22,base_rpm
	lds r23,base_rpm+1
	lds r24,base_rpm+2
	lds r25,base_rpm+3
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L24:
	movw r24,r14
	movw r22,r12
	subi r22,-56
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	sts base_rpm,r22
	sts base_rpm+1,r23
	sts base_rpm+2,r24
	sts base_rpm+3,r25
	rjmp .L25
	.size	control_rpm, .-control_rpm
.global	base_rpm
	.section	.data.base_rpm,"aw",@progbits
	.type	base_rpm, @object
	.size	base_rpm, 4
base_rpm:
	.byte	-36
	.byte	5
	.byte	0
	.byte	0
.global	target_rpm
	.section	.data.target_rpm,"aw",@progbits
	.type	target_rpm, @object
	.size	target_rpm, 4
target_rpm:
	.byte	-96
	.byte	15
	.byte	0
	.byte	0
.global	base_temp
	.section	.data.base_temp,"aw",@progbits
	.type	base_temp, @object
	.size	base_temp, 4
base_temp:
	.byte	45
	.byte	0
	.byte	0
	.byte	0
.global	target_temp
	.section	.data.target_temp,"aw",@progbits
	.type	target_temp, @object
	.size	target_temp, 4
target_temp:
	.byte	18
	.byte	0
	.byte	0
	.byte	0
.global	base_yaw
	.section	.data.base_yaw,"aw",@progbits
	.type	base_yaw, @object
	.size	base_yaw, 4
base_yaw:
	.byte	-50
	.byte	-1
	.byte	-1
	.byte	-1
.global	target_yaw
	.section	.bss.target_yaw,"aw",@nobits
	.type	target_yaw, @object
	.size	target_yaw, 4
target_yaw:
	.zero	4
.global	car_input
	.section	.bss.car_input,"aw",@nobits
	.type	car_input, @object
	.size	car_input, 16
car_input:
	.zero	16
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
