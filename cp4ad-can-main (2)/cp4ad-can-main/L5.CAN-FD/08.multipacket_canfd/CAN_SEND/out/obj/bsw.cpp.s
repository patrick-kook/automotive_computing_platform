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
	.section	.text.CAN_sendMsg,"ax",@progbits
.global	CAN_sendMsg
	.type	CAN_sendMsg, @function
CAN_sendMsg:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,80
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 80 */
/* stack size = 82 */
.L__stack_usage = 82
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
	subi r28,-80
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
	.section	.text.padding,"ax",@progbits
.global	padding
	.type	padding, @function
padding:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L9:
	cp r20,r22
	cpc r21,r23
	brlt .L7
	movw r26,r24
	adiw r26,5
	ld r30,X+
	ld r31,X
	add r30,r22
	adc r31,r23
	st Z,__zero_reg__
	subi r22,-1
	sbci r23,-1
	rjmp .L9
.L7:
/* epilogue start */
	ret
	.size	padding, .-padding
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
.L12:
	cp r4,r12
	cpc r5,r13
	cpc r6,r14
	cpc r7,r15
	breq .L10
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,20
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L12
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
	call millis
	movw r8,r22
	movw r10,r24
	rjmp .L12
.L10:
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
	.section	.rodata.send_segment_can.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Segment %d sent\n"
.LC1:
	.string	" %d"
.LC2:
	.string	" :"
.LC3:
	.string	"\n"
.LC4:
	.string	"Failed to send segment %d after %d attempts\n"
	.section	.text.send_segment_can,"ax",@progbits
.global	send_segment_can
	.type	send_segment_can, @function
send_segment_can:
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
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 22 */
.L__stack_usage = 22
	mov r10,r22
	mov r9,r23
	mov r11,r20
	mov r15,r18
	mov r14,r19
	ldi r25,0
	ldi r27,0
	ldi r26,0
	std Y+2,r24
	std Y+3,r25
	std Y+4,r26
	std Y+5,r27
	std Y+1,r20
	std Y+6,r22
	std Y+7,r23
	ldi r18,lo8(3)
	mov r12,r18
	mov r13,__zero_reg__
.L23:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	call CAN_sendMsg
	mov r16,r24
	ldi r17,0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L17
	push r14
	push r15
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	mov r12,r10
	mov r13,r9
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	mov r15,__zero_reg__
	ldi r24,lo8(.LC1)
	mov r8,r24
	ldi r24,hi8(.LC1)
	mov r9,r24
	ldi r25,lo8(.LC2)
	mov r6,r25
	ldi r25,hi8(.LC2)
	mov r7,r25
.L20:
	cp r15,r11
	breq .L18
	movw r30,r12
	ld r24,Z+
	movw r12,r30
	push __zero_reg__
	push r24
	push r9
	push r8
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r31,lo8(1)
	cpse r15,r31
	rjmp .L19
	push r7
	push r6
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L19:
	inc r15
	rjmp .L20
.L18:
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L16:
	movw r24,r16
/* epilogue start */
	adiw r28,8
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
	ret
.L17:
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	breq .+2
	rjmp .L23
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	push r14
	push r15
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L16
	.size	send_segment_can, .-send_segment_can
	.section	.rodata.send_full_message_can.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Too Large data"
	.section	.text.send_full_message_can,"ax",@progbits
.global	send_full_message_can
	.type	send_full_message_can, @function
send_full_message_can:
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
	subi r28,64
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 64 */
/* stack size = 80 */
.L__stack_usage = 80
	mov r5,r24
	mov r13,r22
	mov r18,r23
	cpi r20,-2
	ldi r24,127
	cpc r21,r24
	brlo .L25
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L24:
/* epilogue start */
	subi r28,-64
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L25:
	movw r24,r20
	adiw r24,61
	ldi r22,lo8(62)
	ldi r23,0
	call __udivmodhi4
	movw r10,r22
	mov r14,r13
	mov r15,r18
	ldi r17,0
	ldi r16,0
	ldi r19,lo8(62)
	mov r4,r19
	movw r8,r28
	ldi r30,3
	add r8,r30
	adc r9,__zero_reg__
	movw r6,r22
	ldi r31,1
	sub r6,r31
	sbc r7,__zero_reg__
	add r13,r20
.L29:
	cp r16,r10
	cpc r17,r11
	breq .L30
	movw r30,r8
	mov r18,r4
	0:
	st Z+,__zero_reg__
	dec r18
	brne 0b
	movw r24,r16
	ldi r18,lo8(62)
	mov r12,r18
	cp r6,r16
	cpc r7,r17
	brne .L27
	mov r12,r13
	sub r12,r14
	movw r24,r6
	ori r25,128
.L27:
	std Y+1,r25
	std Y+2,r24
	mov r20,r12
	ldi r21,0
	movw r22,r14
	movw r24,r8
	call memcpy
	ldi r20,lo8(2)
	add r20,r12
	movw r18,r16
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	mov r24,r5
	call send_segment_can
	ldi r30,62
	add r14,r30
	adc r15,__zero_reg__
	sbiw r24,0
	brne .+2
	rjmp .L24
	ldi r22,lo8(100)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call mdelay
	subi r16,-1
	sbci r17,-1
	rjmp .L29
.L30:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L24
	.size	send_full_message_can, .-send_full_message_can
	.section	.rodata._Z5beginv.str1.1,"aMS",@progbits,1
.LC6:
	.string	"set speed: %ld kbps\n"
.LC7:
	.string	"set message frame speed: x%d\n"
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
	lds r16,dataBitRate
	ldi r18,lo8(72)
	ldi r19,lo8(-24)
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,lo8(4)
	movw r24,r28
	adiw r24,1
	call _ZN18ACAN2517FDSettingsC1ENS_10OscillatorEm17DataBitRateFactorm
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(125)
	push r24
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	lds r24,dataBitRate
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	.section	.rodata.CAN_readMsg.str1.1,"aMS",@progbits,1
.LC8:
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
	breq .L36
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
	brne .L35
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L36:
	ldi r24,0
	rjmp .L33
.L35:
	movw r20,r16
	movw r22,r28
	subi r22,-9
	sbci r23,-1
	call memcpy
	ldi r24,lo8(1)
.L33:
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
.LC9:
	.string	"let's serial\n"
.LC10:
	.string	"init fail\n error code: "
.LC11:
	.string	"%d\n"
.LC12:
	.string	"CAN init\n"
.LC13:
	.string	"--------------------------------------------------\n"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
	call _ZN8SPIClass5beginEv
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r24,lo8(.LC10)
	mov r14,r24
	ldi r24,hi8(.LC10)
	mov r15,r24
	ldi r28,lo8(.LC11)
	ldi r29,hi8(.LC11)
.L40:
	call _Z5beginv
	mov r17,r24
	tst r24
	breq .L39
	push r15
	push r14
	call printfSerial
	push __zero_reg__
	push r17
	push r29
	push r28
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L40
.L39:
	ldi r22,lo8(16)
	ldi r23,lo8(39)
	ldi r24,0
	ldi r25,0
	call OsEE_atmega_startTimer1
	ldi r24,lo8(.LC12)
	ldi r25,hi8(.LC12)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC13)
	ldi r25,hi8(.LC13)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
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
 ;  234 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\081049~1.MUL\CAN_SEND\bsw.cpp" 1
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
	.section	.text.startup._GLOBAL__sub_I_dataBitRate,"ax",@progbits
	.type	_GLOBAL__sub_I_dataBitRate, @function
_GLOBAL__sub_I_dataBitRate:
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
	.size	_GLOBAL__sub_I_dataBitRate, .-_GLOBAL__sub_I_dataBitRate
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_dataBitRate)
	.section	.text.exit._GLOBAL__sub_D_dataBitRate,"ax",@progbits
	.type	_GLOBAL__sub_D_dataBitRate, @function
_GLOBAL__sub_D_dataBitRate:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,CAN+35
	lds r25,CAN+35+1
	sbiw r24,0
	breq .L44
	call _ZdaPv
.L44:
	lds r24,CAN+17
	lds r25,CAN+17+1
	sbiw r24,0
	breq .L43
	jmp _ZdaPv
.L43:
/* epilogue start */
	ret
	.size	_GLOBAL__sub_D_dataBitRate, .-_GLOBAL__sub_D_dataBitRate
	.global __do_global_dtors
	.section .dtors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_D_dataBitRate)
.global	CAN
	.section	.bss.CAN,"aw",@nobits
	.type	CAN, @object
	.size	CAN, 56
CAN:
	.zero	56
.global	dataBitRate
	.section	.data.dataBitRate,"aw",@progbits
	.type	dataBitRate, @object
	.size	dataBitRate, 1
dataBitRate:
	.byte	8
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
