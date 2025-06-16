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
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
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
	ldi r26,lo8(40)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	ldi r18,lo8(100)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	lds r22,base_yaw
	lds r23,base_yaw+1
	lds r24,base_yaw+2
	lds r25,base_yaw+3
	add r22,r18
	adc r23,r19
	adc r24,r20
	adc r25,r21
	cpi r22,105
	ldi r18,1
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlt .L4
	ldi r22,lo8(104)
	ldi r23,lo8(1)
	ldi r24,0
	ldi r25,0
.L4:
	cpi r22,-104
	ldi r18,-2
	cpc r23,r18
	ldi r18,-1
	cpc r24,r18
	cpc r25,r18
	brge .L5
	ldi r22,lo8(-104)
	ldi r23,lo8(-2)
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L5:
	movw r16,r22
	movw r18,r24
	sbrs r25,7
	rjmp .L7
	clr r16
	clr r17
	movw r18,r16
	sub r16,r22
	sbc r17,r23
	sbc r18,r24
	sbc r19,r25
.L7:
	cpi r16,-55
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	brge .L6
	sts base_yaw,r22
	sts base_yaw+1,r23
	sts base_yaw+2,r24
	sts base_yaw+3,r25
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
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L6:
	ldi r18,lo8(2)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	sts base_yaw,r18
	sts base_yaw+1,r19
	sts base_yaw+2,r20
	sts base_yaw+3,r21
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
	rjmp .L18
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
	add r8,r18
	adc r9,r19
	adc r10,r20
	adc r11,r21
.L19:
	sts base_temp,r8
	sts base_temp+1,r9
	sts base_temp+2,r10
	sts base_temp+3,r11
	lds r24,base_temp
	lds r25,base_temp+1
	lds r26,base_temp+2
	lds r27,base_temp+3
	cpi r24,19
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlt .L13
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts base_temp,r24
	sts base_temp+1,r25
	sts base_temp+2,r26
	sts base_temp+3,r27
.L13:
	lds r24,base_temp
	lds r25,base_temp+1
	lds r26,base_temp+2
	lds r27,base_temp+3
	cpi r24,18
	cpc r25,__zero_reg__
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L14
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts base_temp,r24
	sts base_temp+1,r25
	sts base_temp+2,r26
	sts base_temp+3,r27
.L14:
	lds r22,base_temp
	lds r23,base_temp+1
	lds r24,base_temp+2
	lds r25,base_temp+3
	cpi r22,-105
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlt .L15
	ldi r22,lo8(-106)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L15:
	cpi r22,-40
	ldi r18,-1
	cpc r23,r18
	cpc r24,r18
	cpc r25,r18
	brge .L16
	ldi r22,lo8(-40)
	ldi r23,lo8(-1)
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L16:
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
.L18:
	ldi r24,lo8(100)
	mov r12,r24
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L10
.L11:
	ldi r26,lo8(3)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	ldi r18,lo8(50)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	sub r8,r18
	sbc r9,r19
	sbc r10,r20
	sbc r11,r21
	rjmp .L19
	.size	control_temperature, .-control_temperature
	.section	.rodata.control_rpm.str1.1,"aMS",@progbits,1
.LC3:
	.string	"throttle: %ld, gear: %ld\n"
	.section	.rodata
.LC0:
	.byte	76
	.byte	4
	.byte	0
	.byte	0
	.byte	40
	.byte	10
	.byte	0
	.byte	0
	.byte	-28
	.byte	12
	.byte	0
	.byte	0
	.byte	16
	.byte	14
	.byte	0
	.byte	0
	.byte	-40
	.byte	14
	.byte	0
	.byte	0
	.byte	-8
	.byte	17
	.byte	0
	.byte	0
	.section	.text.control_rpm,"ax",@progbits
.global	control_rpm
	.type	control_rpm, @function
control_rpm:
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
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 46 */
.L__stack_usage = 46
	movw r4,r22
	movw r6,r24
	movw r10,r24
	movw r8,r22
	ldi r24,101
	cp r4,r24
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	brlt .L21
	ldi r22,lo8(100)
	mov r8,r22
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L21:
	sbrs r11,7
	rjmp .L22
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.L22:
	movw r12,r18
	movw r14,r20
	ldi r25,7
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brlt .L23
	ldi r20,lo8(6)
	mov r12,r20
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L23:
	cp __zero_reg__,r12
	cpc __zero_reg__,r13
	cpc __zero_reg__,r14
	cpc __zero_reg__,r15
	brlt .L24
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
.L24:
	ldi r24,lo8(24)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	push r15
	push r14
	push r13
	push r12
	push r11
	push r10
	push r9
	push r8
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(7)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	movw r18,r24
	movw r20,r26
	sub r18,r12
	sbc r19,r13
	sbc r20,r14
	sbc r21,r15
	std Y+29,r18
	std Y+30,r19
	std Y+31,r20
	std Y+32,r21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,base_rpm
	lds r25,base_rpm+1
	lds r26,base_rpm+2
	lds r27,base_rpm+3
	std Y+25,r24
	std Y+26,r25
	std Y+27,r26
	std Y+28,r27
	cp __zero_reg__,r4
	cpc __zero_reg__,r5
	cpc __zero_reg__,r6
	cpc __zero_reg__,r7
	brge .+2
	rjmp .L25
	andi r24,3
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L25
	ldi r26,lo8(-50)
	ldi r27,lo8(-1)
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	call __mulohisi3
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	add r22,r18
	adc r23,r19
	adc r24,r20
	adc r25,r21
	sts base_rpm,r22
	sts base_rpm+1,r23
	sts base_rpm+2,r24
	sts base_rpm+3,r25
.L26:
	ldi r26,lo8(5)
	ldi r27,0
	movw r20,r10
	movw r18,r8
	call __muluhisi3
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	call __divmodsi4
	lds r24,base_rpm
	lds r25,base_rpm+1
	lds r26,base_rpm+2
	lds r27,base_rpm+3
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	sts base_rpm,r24
	sts base_rpm+1,r25
	sts base_rpm+2,r26
	sts base_rpm+3,r27
	ldi r19,1
	sub r12,r19
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	lsl r12
	rol r13
	lsl r12
	rol r13
	ldi r20,lo8(1)
	ldi r21,0
	add r20,r28
	adc r21,r29
	add r12,r20
	adc r13,r21
	movw r30,r12
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brge .L27
	sts base_rpm,r20
	sts base_rpm+1,r21
	sts base_rpm+2,r22
	sts base_rpm+3,r23
.L27:
	lds r22,base_rpm
	lds r23,base_rpm+1
	lds r24,base_rpm+2
	lds r25,base_rpm+3
/* epilogue start */
	adiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
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
	ret
.L25:
	ldd r24,Y+25
	ldd r25,Y+26
	ldd r26,Y+27
	ldd r27,Y+28
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts base_rpm,r24
	sts base_rpm+1,r25
	sts base_rpm+2,r26
	sts base_rpm+3,r27
	rjmp .L26
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
