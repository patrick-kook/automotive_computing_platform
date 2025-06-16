	.file	"Car_Model.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__floatunsisf
.global	__mulsf3
.global	__fixunssfsi
.global	__divsf3
.global	__fixsfsi
	.section	.text.control_rpm,"ax",@progbits
.global	control_rpm
	.type	control_rpm, @function
control_rpm:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	tst r22
	breq .L2
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
.L10:
	sts base_rpm+1,r25
	sts base_rpm,r24
.L3:
	lds r24,base_rpm
	lds r25,base_rpm+1
/* epilogue start */
	pop r29
	pop r28
	ret
.L2:
	movw r22,r24
	cp r24,__zero_reg__
	sbci r25,4
	brlt .L4
	ldi r22,lo8(-1)
	ldi r23,lo8(3)
.L4:
	sbrs r23,7
	rjmp .L5
	ldi r23,0
	ldi r22,0
.L5:
	ldi r25,0
	ldi r24,0
	call __floatunsisf
	ldi r18,lo8(10)
	ldi r19,lo8(-41)
	ldi r20,lo8(35)
	ldi r21,lo8(60)
	call __mulsf3
	call __fixunssfsi
	movw r28,r22
	ldi r25,0
	ldi r24,0
	call __floatunsisf
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
	or r28,r29
	breq .L6
.L9:
	sts base_rpm+1,r23
	sts base_rpm,r22
	lds r24,base_rpm
	lds r25,base_rpm+1
	cpi r24,32
	sbci r25,3
	brge .L8
	ldi r24,lo8(32)
	ldi r25,lo8(3)
	sts base_rpm+1,r25
	sts base_rpm,r24
.L8:
	lds r24,base_rpm
	lds r25,base_rpm+1
	cpi r24,101
	sbci r25,25
	brge .+2
	rjmp .L3
	ldi r24,lo8(100)
	ldi r25,lo8(25)
	rjmp .L10
.L6:
	subi r22,20
	sbc r23,__zero_reg__
	rjmp .L9
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
