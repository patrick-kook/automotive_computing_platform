	.file	"bsw.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZZ5beginvENUlvE_4_FUNEv,"ax",@progbits
	.type	_ZZ5beginvENUlvE_4_FUNEv, @function
_ZZ5beginvENUlvE_4_FUNEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	jmp _ZN10ACAN2517FD3isrEv
	.size	_ZZ5beginvENUlvE_4_FUNEv, .-_ZZ5beginvENUlvE_4_FUNEv
	.section	.text._ZN12CANFDMessageC2Ev,"axG",@progbits,_ZN12CANFDMessageC5Ev,comdat
	.weak	_ZN12CANFDMessageC2Ev
	.type	_ZN12CANFDMessageC2Ev, @function
_ZN12CANFDMessageC2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	ldi r24,lo8(3)
	std Z+5,r24
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	movw r26,r30
	adiw r26,8
	subi r30,-72
	sbci r31,-1
.L3:
	st X+,__zero_reg__
	cp r26,r30
	cpc r27,r31
	brne .L3
/* epilogue start */
	ret
	.size	_ZN12CANFDMessageC2Ev, .-_ZN12CANFDMessageC2Ev
	.weak	_ZN12CANFDMessageC1Ev
	.set	_ZN12CANFDMessageC1Ev,_ZN12CANFDMessageC2Ev
	.section	.text.pad,"ax",@progbits
.global	pad
	.type	pad, @function
pad:
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
	subi r28,72
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 72 */
/* stack size = 82 */
.L__stack_usage = 82
	movw r14,r24
	movw r24,r28
	adiw r24,1
	call _ZN12CANFDMessageC1Ev
	movw r30,r14
	ld r17,Z
	std Y+8,r17
	mov r12,r17
	mov r13,__zero_reg__
	ldd r10,Z+5
	ldd r11,Z+6
	movw r20,r12
	movw r22,r10
	movw r24,r28
	adiw r24,9
	call memcpy
	ldi r24,lo8(-9)
	add r24,r17
	cpi r24,lo8(3)
	brlo .L11
	ldi r24,lo8(-13)
	add r24,r17
	cpi r24,lo8(3)
	brlo .L12
	ldi r24,lo8(-17)
	add r24,r17
	cpi r24,lo8(3)
	brlo .L13
	ldi r24,lo8(-21)
	add r24,r17
	cpi r24,lo8(3)
	brlo .L14
	ldi r24,lo8(-25)
	add r24,r17
	cpi r24,lo8(7)
	brlo .L15
	ldi r24,lo8(-33)
	add r24,r17
	cpi r24,lo8(15)
	brlo .L16
	ldi r24,lo8(-49)
	add r24,r17
	cpi r24,lo8(15)
	brsh .L7
	ldi r24,lo8(64)
.L6:
	movw r30,r12
	adiw r30,8
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r30,r18
	adc r31,r19
.L9:
	cp r17,r24
	brsh .L8
	st Z+,__zero_reg__
	subi r17,lo8(-(1))
	rjmp .L9
.L11:
	ldi r24,lo8(12)
	rjmp .L6
.L12:
	ldi r24,lo8(16)
	rjmp .L6
.L13:
	ldi r24,lo8(20)
	rjmp .L6
.L14:
	ldi r24,lo8(24)
	rjmp .L6
.L15:
	ldi r24,lo8(32)
	rjmp .L6
.L16:
	ldi r24,lo8(48)
	rjmp .L6
.L8:
	std Y+8,r17
.L7:
	movw r30,r14
	st Z,r17
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L10
	movw r24,r10
	call free
.L10:
	movw r30,r14
	ld r16,Z
	ldi r17,0
	movw r24,r16
	call malloc
	movw r30,r14
	std Z+6,r25
	std Z+5,r24
	movw r20,r16
	movw r22,r28
	subi r22,-9
	sbci r23,-1
	call memcpy
/* epilogue start */
	subi r28,-72
	sbci r29,-1
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
	ret
	.size	pad, .-pad
	.section	.text._Z5beginv,"ax",@progbits
.global	_Z5beginv
	.type	_Z5beginv, @function
_Z5beginv:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 40 */
/* stack size = 47 */
.L__stack_usage = 47
	ldi r24,lo8(-24)
	mov r12,r24
	ldi r24,lo8(3)
	mov r13,r24
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,lo8(8)
	ldi r18,lo8(72)
	ldi r19,lo8(-24)
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,lo8(4)
	movw r24,r28
	adiw r24,1
	call _ZN18ACAN2517FDSettingsC1ENS_10OscillatorEm17DataBitRateFactorm
	std Y+26,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
	std Y+28,r25
	std Y+27,r24
	std Y+38,r25
	std Y+37,r24
	ldi r20,lo8(gs(_ZZ5beginvENUlvE_4_FUNEv))
	ldi r21,hi8(gs(_ZZ5beginvENUlvE_4_FUNEv))
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE
	mov r24,r22
/* epilogue start */
	adiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z5beginv, .-_Z5beginv
	.section	.text.CAN_sendMsg,"ax",@progbits
.global	CAN_sendMsg
	.type	CAN_sendMsg, @function
CAN_sendMsg:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,79
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 79 */
/* stack size = 81 */
.L__stack_usage = 81
	adiw r28,73-63
	std Y+63,r18
	sbiw r28,73-63
	adiw r28,74-63
	std Y+63,r19
	sbiw r28,74-63
	adiw r28,75-63
	std Y+63,r20
	sbiw r28,75-63
	adiw r28,76-63
	std Y+63,r21
	sbiw r28,76-63
	adiw r28,77-63
	std Y+63,r22
	sbiw r28,77-63
	adiw r28,78-63
	std Y+63,r23
	sbiw r28,78-63
	adiw r28,79-63
	std Y+63,r24
	sbiw r28,79-63
	movw r24,r28
	adiw r24,1
	call _ZN12CANFDMessageC1Ev
	adiw r28,74-60
	ldd r24,Y+60
	ldd r25,Y+61
	ldd r26,Y+62
	ldd r27,Y+63
	sbiw r28,74-60
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	adiw r28,73-63
	ldd r20,Y+63
	sbiw r28,73-63
	std Y+8,r20
	ldi r21,0
	adiw r28,78-62
	ldd r22,Y+62
	ldd r23,Y+63
	sbiw r28,78-62
	movw r24,r28
	adiw r24,9
	call memcpy
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD9tryToSendERK12CANFDMessage
/* epilogue start */
	subi r28,-79
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	CAN_sendMsg, .-CAN_sendMsg
	.section	.text.CAN_checkMsg,"ax",@progbits
.global	CAN_checkMsg
	.type	CAN_checkMsg, @function
CAN_checkMsg:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	jmp _ZN10ACAN2517FD9availableEv
	.size	CAN_checkMsg, .-CAN_checkMsg
	.section	.text.mdelay,"ax",@progbits
.global	mdelay
	.type	mdelay, @function
mdelay:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r12,r22
	movw r14,r24
	call millis
	movw r8,r22
	movw r10,r24
	call millis
	movw r24,r14
	movw r22,r12
	ldi r18,lo8(20)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	movw r4,r18
	movw r6,r20
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L25:
	cp r4,r12
	cpc r5,r13
	cpc r6,r14
	cpc r7,r15
	breq .L23
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,20
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L25
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
	call millis
	movw r8,r22
	movw r10,r24
	rjmp .L25
.L23:
/* epilogue start */
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
	.size	mdelay, .-mdelay
	.section	.text.printfSerial,"ax",@progbits
.global	printfSerial
	.type	printfSerial, @function
printfSerial:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,-128
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 128 */
/* stack size = 130 */
.L__stack_usage = 130
	movw r18,r28
	subi r18,123
	sbci r19,-1
	movw r30,r18
	ld r20,Z+
	ld r21,Z+
	movw r18,r30
	ldi r22,lo8(-128)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call vsnprintf
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
/* epilogue start */
	subi r28,-128
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	printfSerial, .-printfSerial
	.section	.rodata.send_simple_tlv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"[ERROR] TLV too large for single frame\n"
.LC1:
	.string	"[ERROR] Memory allocation failed\n"
	.section	.text.send_simple_tlv,"ax",@progbits
.global	send_simple_tlv
	.type	send_simple_tlv, @function
send_simple_tlv:
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
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 20 */
.L__stack_usage = 20
	movw r8,r22
	movw r10,r24
	mov r7,r20
	movw r12,r18
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	cpi r16,61
	cpc r17,__zero_reg__
	brsh .L33
	ldi r24,lo8(64)
	ldi r25,0
	call malloc
	movw r14,r24
	sbiw r24,0
	brne .L32
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
.L33:
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	adiw r28,7
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
	ret
.L32:
	movw r30,r24
	st Z,r7
	std Z+1,r16
	movw r20,r16
	movw r22,r12
	adiw r24,2
	call memcpy
	std Y+2,r8
	std Y+3,r9
	std Y+4,r10
	std Y+5,r11
	std Y+7,r15
	std Y+6,r14
	subi r16,lo8(-(2))
	std Y+1,r16
	movw r24,r28
	adiw r24,1
	call pad
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	call CAN_sendMsg
	movw r24,r14
/* epilogue start */
	adiw r28,7
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
	jmp free
	.size	send_simple_tlv, .-send_simple_tlv
	.section	.rodata.handle_simple_tlv.str1.1,"aMS",@progbits,1
.LC2:
	.string	"[WARN] Invalid TLV Frame\n"
.LC3:
	.string	"[WARN] Declared TLV length exceeds actual frame size\n"
.LC4:
	.string	"--------------------------------------------------\n"
.LC5:
	.string	"Receive done\n"
.LC6:
	.string	"[VALUE]\n"
.LC7:
	.string	"target_yaw   : %ld\n"
.LC8:
	.string	"current_yaw  : %ld\n"
.LC9:
	.string	"diff_yaw     : %ld\n\n"
.LC10:
	.string	"target_temp  : %ld\n"
.LC11:
	.string	"current_temp : %ld\n"
.LC12:
	.string	"diff_temp    : %ld\n\n"
.LC13:
	.string	"target_rpm   : %ld\n"
.LC14:
	.string	"current_rpm  : %ld\n"
.LC15:
	.string	"diff_rpm     : %ld\n"
.LC16:
	.string	"\n"
	.section	.text.handle_simple_tlv,"ax",@progbits
.global	handle_simple_tlv
	.type	handle_simple_tlv, @function
handle_simple_tlv:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r24
	sbiw r24,0
	breq .L35
	movw r30,r24
	ldd r28,Z+5
	ldd r29,Z+6
	sbiw r28,0
	breq .L35
	ld r24,Z
	cpi r24,lo8(3)
	brsh .L36
.L35:
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
.L49:
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
.L36:
	ldd r13,Y+1
	mov r16,r13
	ldi r17,0
	movw r18,r16
	subi r18,-2
	sbci r19,-1
	cp r24,r18
	cpc __zero_reg__,r19
	brsh .L38
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	rjmp .L49
.L38:
	movw r20,r16
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	movw r24,r28
	call memmove
	movw r30,r14
	st Z,r13
	movw r22,r16
	ldd r24,Z+5
	ldd r25,Z+6
	call realloc
	movw r16,r24
	sbiw r24,0
	breq .L39
	movw r30,r14
	std Z+6,r25
	std Z+5,r24
.L39:
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
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
	ldd r24,Y+2
	ldd r25,Y+3
	eor r25,r24
	eor r24,r25
	eor r25,r24
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	sts car_output,r24
	sts car_output+1,r25
	sts car_output+2,r26
	sts car_output+3,r27
	ldd r20,Y+6
	ldd r21,Y+7
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sts car_output+4,r20
	sts car_output+4+1,r21
	sts car_output+4+2,r22
	sts car_output+4+3,r23
	ldd r20,Y+10
	ldd r21,Y+11
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sts car_output+8,r20
	sts car_output+8+1,r21
	sts car_output+8+2,r22
	sts car_output+8+3,r23
	ldd r20,Y+14
	ldd r21,Y+15
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sts car_output+12,r20
	sts car_output+12+1,r21
	sts car_output+12+2,r22
	sts car_output+12+3,r23
	ldd r20,Y+18
	ldd r21,Y+19
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sts car_output+16,r20
	sts car_output+16+1,r21
	sts car_output+16+2,r22
	sts car_output+16+3,r23
	ldd r20,Y+22
	ldd r21,Y+23
	eor r21,r20
	eor r20,r21
	eor r21,r20
	mov __tmp_reg__,r21
	lsl r0
	sbc r22,r22
	sbc r23,r23
	sts car_output+20,r20
	sts car_output+20+1,r21
	sts car_output+20+2,r22
	sts car_output+20+3,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+7
	push r24
	lds r24,car_output+6
	push r24
	lds r24,car_output+5
	push r24
	lds r24,car_output+4
	push r24
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	lds r24,car_output
	lds r25,car_output+1
	lds r26,car_output+2
	lds r27,car_output+3
	lds r20,car_output+4
	lds r21,car_output+4+1
	lds r22,car_output+4+2
	lds r23,car_output+4+3
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+11
	push r24
	lds r24,car_output+10
	push r24
	lds r24,car_output+9
	push r24
	lds r24,car_output+8
	push r24
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+15
	push r24
	lds r24,car_output+14
	push r24
	lds r24,car_output+13
	push r24
	lds r24,car_output+12
	push r24
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,36
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	lds r24,car_output+8
	lds r25,car_output+8+1
	lds r26,car_output+8+2
	lds r27,car_output+8+3
	lds r20,car_output+12
	lds r21,car_output+12+1
	lds r22,car_output+12+2
	lds r23,car_output+12+3
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC12)
	ldi r25,hi8(.LC12)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+19
	push r24
	lds r24,car_output+18
	push r24
	lds r24,car_output+17
	push r24
	lds r24,car_output+16
	push r24
	ldi r24,lo8(.LC13)
	ldi r25,hi8(.LC13)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+23
	push r24
	lds r24,car_output+22
	push r24
	lds r24,car_output+21
	push r24
	lds r24,car_output+20
	push r24
	ldi r24,lo8(.LC14)
	ldi r25,hi8(.LC14)
	push r25
	push r24
	call printfSerial
	lds r24,car_output+16
	lds r25,car_output+16+1
	lds r26,car_output+16+2
	lds r27,car_output+16+3
	lds r20,car_output+20
	lds r21,car_output+20+1
	lds r22,car_output+20+2
	lds r23,car_output+20+3
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	push r27
	push r26
	push r25
	push r24
	ldi r24,lo8(.LC15)
	ldi r25,hi8(.LC15)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC16)
	ldi r25,hi8(.LC16)
	push r25
	push r24
	call printfSerial
	in r30,__SP_L__
	in r31,__SP_H__
	adiw r30,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r31
	out __SREG__,__tmp_reg__
	out __SP_L__,r30
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	jmp free
	.size	handle_simple_tlv, .-handle_simple_tlv
	.section	.rodata.CAN_readMsg.str1.1,"aMS",@progbits,1
.LC17:
	.string	"Memory allocation failed in CAN_readMsg\n"
	.section	.text.CAN_readMsg,"ax",@progbits
.global	CAN_readMsg
	.type	CAN_readMsg, @function
CAN_readMsg:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,72
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 72 */
/* stack size = 78 */
.L__stack_usage = 78
	movw r14,r24
	movw r24,r28
	adiw r24,1
	call _ZN12CANFDMessageC1Ev
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD9availableEv
	tst r24
	breq .L53
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD7receiveER12CANFDMessage
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	movw r30,r14
	std Z+1,r24
	std Z+2,r25
	std Z+3,r26
	std Z+4,r27
	ldd r16,Y+8
	st Z,r16
	ldi r17,0
	movw r24,r16
	call malloc
	movw r30,r14
	std Z+6,r25
	std Z+5,r24
	sbiw r24,0
	brne .L52
	ldi r24,lo8(.LC17)
	ldi r25,hi8(.LC17)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L53:
	ldi r24,0
	rjmp .L50
.L52:
	movw r20,r16
	movw r22,r28
	subi r22,-9
	sbci r23,-1
	call memcpy
	ldi r24,lo8(1)
.L50:
/* epilogue start */
	subi r28,-72
	sbci r29,-1
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
	ret
	.size	CAN_readMsg, .-CAN_readMsg
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	loop, .-loop
	.section	.rodata.setup.str1.1,"aMS",@progbits,1
.LC18:
	.string	"let's serial \n"
.LC19:
	.string	"init fail\n"
.LC20:
	.string	"%d\n"
.LC21:
	.string	"CAN init\n"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
	call _ZN8SPIClass5beginEv
	ldi r24,lo8(.LC18)
	ldi r25,hi8(.LC18)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r16,lo8(.LC19)
	ldi r17,hi8(.LC19)
	ldi r28,lo8(.LC20)
	ldi r29,hi8(.LC20)
.L57:
	call _Z5beginv
	tst r24
	breq .L56
	push r17
	push r16
	call printfSerial
	call _Z5beginv
	push __zero_reg__
	push r24
	push r29
	push r28
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L57
.L56:
	ldi r22,lo8(16)
	ldi r23,lo8(39)
	ldi r24,0
	ldi r25,0
	call OsEE_atmega_startTimer1
	ldi r24,lo8(.LC21)
	ldi r25,hi8(.LC21)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	setup, .-setup
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(1)
	out 0x8,r24
	ldi r25,lo8(2)
	sts 104,r25
	sts 108,r24
	ldi r24,lo8(-1)
	out 0x1c,r24
/* #APP */
 ;  250 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\09678D~1.CAL\CANFD_~1\bsw.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call init
	call setup
	ldi r24,0
	call StartOS
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	main, .-main
	.section	.text.startup._GLOBAL__sub_I_CAN,"ax",@progbits
	.type	_GLOBAL__sub_I_CAN, @function
_GLOBAL__sub_I_CAN:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(2)
	ldi r20,lo8(SPI)
	ldi r21,hi8(SPI)
	ldi r22,lo8(9)
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	jmp _ZN10ACAN2517FDC1EhR8SPIClassh
	.size	_GLOBAL__sub_I_CAN, .-_GLOBAL__sub_I_CAN
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_CAN)
	.section	.text.exit._GLOBAL__sub_D_CAN,"ax",@progbits
	.type	_GLOBAL__sub_D_CAN, @function
_GLOBAL__sub_D_CAN:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,CAN+35
	lds r25,CAN+35+1
	sbiw r24,0
	breq .L61
	call _ZdaPv
.L61:
	lds r24,CAN+17
	lds r25,CAN+17+1
	sbiw r24,0
	breq .L60
	jmp _ZdaPv
.L60:
/* epilogue start */
	ret
	.size	_GLOBAL__sub_D_CAN, .-_GLOBAL__sub_D_CAN
	.global __do_global_dtors
	.section .dtors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_D_CAN)
.global	CAN
	.section	.bss.CAN,"aw",@nobits
	.type	CAN, @object
	.size	CAN, 56
CAN:
	.zero	56
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
