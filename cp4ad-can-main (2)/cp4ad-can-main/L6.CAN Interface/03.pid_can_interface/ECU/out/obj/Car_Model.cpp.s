	.file	"Car_Model.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__floatsisf
.global	__divsf3
.global	__mulsf3
.global	__fixsfsi
	.section	.text.control_rpm,"ax",@progbits
.global	control_rpm
	.type	control_rpm, @function
control_rpm:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	mov r22,r24
	cpi r24,lo8(101)
	brge .+2
	rjmp .L2
	ldi r22,lo8(100)
.L3:
	mov __tmp_reg__,r22
	lsl r0
	sbc r23,r23
	sbc r24,r24
	sbc r25,r25
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
	lds r18,base_rpm
	lds r19,base_rpm+1
	add r22,r18
	adc r23,r19
	cp __zero_reg__,r28
	brge .L4
.L8:
	sts base_rpm+1,r23
	sts base_rpm,r22
	lds r24,base_rpm
	lds r25,base_rpm+1
	cpi r24,32
	sbci r25,3
	brge .L6
	ldi r24,lo8(32)
	ldi r25,lo8(3)
	sts base_rpm+1,r25
	sts base_rpm,r24
.L6:
	lds r24,base_rpm
	lds r25,base_rpm+1
	cpi r24,101
	sbci r25,25
	brlt .L7
	ldi r24,lo8(100)
	ldi r25,lo8(25)
	sts base_rpm+1,r25
	sts base_rpm,r24
.L7:
	lds r24,base_rpm
	lds r25,base_rpm+1
/* epilogue start */
	pop r28
	ret
.L2:
	sbrs r24,7
	rjmp .L3
	ldi r22,0
	rjmp .L3
.L4:
	subi r22,-56
	sbc r23,__zero_reg__
	rjmp .L8
	.size	control_rpm, .-control_rpm
.global	base_rpm
	.section	.data.base_rpm,"aw",@progbits
	.type	base_rpm, @object
	.size	base_rpm, 2
base_rpm:
	.word	1500
.global	target_rpm
	.section	.data.target_rpm,"aw",@progbits
	.type	target_rpm, @object
	.size	target_rpm, 2
target_rpm:
	.word	4000
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
