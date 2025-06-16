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
	.section	.text._Z5beginv,"ax",@progbits
.global	_Z5beginv
	.type	_Z5beginv, @function
_Z5beginv:
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
	sbiw r28,48
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 48 */
/* stack size = 56 */
.L__stack_usage = 56
	ldi r24,lo8(-24)
	mov r12,r24
	ldi r24,lo8(3)
	mov r13,r24
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r18,lo8(72)
	ldi r19,lo8(-24)
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,lo8(4)
	movw r24,r28
	adiw r24,1
	call _ZN18ACAN2517FDSettingsC1ENS_10OscillatorEm17DataBitRateFactorm
	std Y+26,__zero_reg__
	std Y+41,__zero_reg__
	std Y+43,__zero_reg__
	std Y+42,__zero_reg__
	std Y+45,__zero_reg__
	std Y+44,__zero_reg__
	std Y+47,__zero_reg__
	std Y+46,__zero_reg__
	std Y+48,__zero_reg__
	ldi r24,lo8(12)
	ldi r25,0
	call _Znwj
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldi r24,lo8(-1)
	ldi r25,lo8(7)
	ldi r26,0
	ldi r27,lo8(64)
	std Z+2,r24
	std Z+3,r25
	std Z+4,r26
	std Z+5,r27
	ldi r24,lo8(48)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Z+6,r24
	std Z+7,r25
	std Z+8,r26
	std Z+9,r27
	ldi r24,lo8(gs(_Z13ID30_callbackRK12CANFDMessage))
	ldi r25,hi8(gs(_Z13ID30_callbackRK12CANFDMessage))
	std Z+11,r25
	std Z+10,r24
	ldd r24,Y+42
	ldd r25,Y+43
	or r24,r25
	breq .+2
	rjmp .L6
	std Y+43,r31
	std Y+42,r30
.L7:
	std Y+45,r31
	std Y+44,r30
	ldd r24,Y+41
	subi r24,lo8(-(1))
	std Y+41,r24
	ldi r24,lo8(12)
	ldi r25,0
	call _Znwj
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldi r24,lo8(-1)
	ldi r25,lo8(7)
	ldi r26,0
	ldi r27,lo8(64)
	std Z+2,r24
	std Z+3,r25
	std Z+4,r26
	std Z+5,r27
	ldi r24,lo8(80)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Z+6,r24
	std Z+7,r25
	std Z+8,r26
	std Z+9,r27
	ldi r24,lo8(gs(_Z13ID50_callbackRK12CANFDMessage))
	ldi r25,hi8(gs(_Z13ID50_callbackRK12CANFDMessage))
	std Z+11,r25
	std Z+10,r24
	ldd r24,Y+42
	ldd r25,Y+43
	or r24,r25
	brne .L8
	std Y+43,r31
	std Y+42,r30
.L9:
	std Y+45,r31
	std Y+44,r30
	ldd r24,Y+41
	subi r24,lo8(-(1))
	std Y+41,r24
	ldi r24,lo8(1)
	ldi r25,0
	std Y+28,r25
	std Y+27,r24
	std Y+38,r25
	std Y+37,r24
	movw r18,r28
	subi r18,-41
	sbci r19,-1
	ldi r20,lo8(gs(_ZZ5beginvENUlvE_4_FUNEv))
	ldi r21,hi8(gs(_ZZ5beginvENUlvE_4_FUNEv))
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters
	mov r17,r22
.L11:
	ldd r24,Y+42
	ldd r25,Y+43
	sbiw r24,0
	breq .L5
	movw r30,r24
	ld r14,Z
	ldd r15,Z+1
	call _ZdlPv
	std Y+43,r15
	std Y+42,r14
	rjmp .L11
.L6:
	ldd r26,Y+44
	ldd r27,Y+45
	st X+,r30
	st X,r31
	rjmp .L7
.L8:
	ldd r26,Y+44
	ldd r27,Y+45
	st X+,r30
	st X,r31
	rjmp .L9
.L5:
	mov r24,r17
/* epilogue start */
	adiw r28,48
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
	ret
	.size	_Z5beginv, .-_Z5beginv
	.section	.text.callbackRoutine,"ax",@progbits
.global	callbackRoutine
	.type	callbackRoutine, @function
callbackRoutine:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r23,0
	ldi r22,0
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	jmp _ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE
	.size	callbackRoutine, .-callbackRoutine
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
	.section	.text.CAN_readMsg,"ax",@progbits
.global	CAN_readMsg
	.type	CAN_readMsg, @function
CAN_readMsg:
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
/* stack size = 76 */
.L__stack_usage = 76
	movw r16,r24
	movw r24,r28
	adiw r24,1
	call _ZN12CANFDMessageC1Ev
	ldi r24,lo8(CAN)
	ldi r25,hi8(CAN)
	call _ZN10ACAN2517FD9availableEv
	tst r24
	breq .L17
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
	movw r30,r16
	std Z+1,r24
	std Z+2,r25
	std Z+3,r26
	std Z+4,r27
	ldd r24,Y+8
	st Z,r24
	movw r24,r28
	adiw r24,9
	std Z+6,r25
	std Z+5,r24
	ldi r24,lo8(1)
.L15:
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
	ret
.L17:
	ldi r24,0
	rjmp .L15
	.size	CAN_readMsg, .-CAN_readMsg
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
.L20:
	cp r4,r12
	cpc r5,r13
	cpc r6,r14
	cpc r7,r15
	breq .L18
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,20
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L20
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
	call millis
	movw r8,r22
	movw r10,r24
	rjmp .L20
.L18:
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
	.section	.rodata._Z13ID30_callbackRK12CANFDMessage.str1.1,"aMS",@progbits,1
.LC0:
	.string	"[ID 0x30] Turn on  A/C "
.LC1:
	.string	"Data Length: "
.LC2:
	.string	"%d "
.LC3:
	.string	"Data: "
.LC4:
	.string	"%c"
.LC5:
	.string	" "
.LC6:
	.string	"\n"
	.section	.text._Z13ID30_callbackRK12CANFDMessage,"ax",@progbits
.global	_Z13ID30_callbackRK12CANFDMessage
	.type	_Z13ID30_callbackRK12CANFDMessage, @function
_Z13ID30_callbackRK12CANFDMessage:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	movw r30,r16
	ldd r24,Z+7
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	ldi r28,0
	ldi r24,lo8(.LC4)
	mov r12,r24
	ldi r24,hi8(.LC4)
	mov r13,r24
	ldi r25,lo8(.LC5)
	mov r14,r25
	ldi r25,hi8(.LC5)
	mov r15,r25
.L26:
	movw r30,r16
	ldd r24,Z+7
	cp r28,r24
	brsh .L25
	add r30,r28
	adc r31,__zero_reg__
	ldd r24,Z+8
	push __zero_reg__
	push r24
	push r13
	push r12
	call printfSerial
	push r15
	push r14
	call printfSerial
	subi r28,lo8(-(1))
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L26
.L25:
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z13ID30_callbackRK12CANFDMessage, .-_Z13ID30_callbackRK12CANFDMessage
	.section	.rodata._Z13ID50_callbackRK12CANFDMessage.str1.1,"aMS",@progbits,1
.LC7:
	.string	"[ID 0x50] Turn off A/C "
	.section	.text._Z13ID50_callbackRK12CANFDMessage,"ax",@progbits
.global	_Z13ID50_callbackRK12CANFDMessage
	.type	_Z13ID50_callbackRK12CANFDMessage, @function
_Z13ID50_callbackRK12CANFDMessage:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	movw r30,r16
	ldd r24,Z+7
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	ldi r28,0
	ldi r24,lo8(.LC4)
	mov r12,r24
	ldi r24,hi8(.LC4)
	mov r13,r24
	ldi r25,lo8(.LC5)
	mov r14,r25
	ldi r25,hi8(.LC5)
	mov r15,r25
.L29:
	movw r30,r16
	ldd r24,Z+7
	cp r28,r24
	brsh .L28
	add r30,r28
	adc r31,__zero_reg__
	ldd r24,Z+8
	push __zero_reg__
	push r24
	push r13
	push r12
	call printfSerial
	push r15
	push r14
	call printfSerial
	subi r28,lo8(-(1))
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L29
.L28:
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z13ID50_callbackRK12CANFDMessage, .-_Z13ID50_callbackRK12CANFDMessage
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
.LC8:
	.string	"let's serial \n"
.LC9:
	.string	"init fail\n"
.LC10:
	.string	"CAN init\n"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
	call _ZN8SPIClass5beginEv
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r28,lo8(.LC9)
	ldi r29,hi8(.LC9)
.L33:
	call _Z5beginv
	tst r24
	breq .L32
	push r29
	push r28
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L33
.L32:
	ldi r22,lo8(16)
	ldi r23,lo8(39)
	ldi r24,0
	ldi r25,0
	call OsEE_atmega_startTimer1
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
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
 ;  144 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\CP4AD-~1\L4.CAN\041BD4~1.CAL\CAN_RE~1\bsw.cpp" 1
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
	breq .L37
	call _ZdaPv
.L37:
	lds r24,CAN+17
	lds r25,CAN+17+1
	sbiw r24,0
	breq .L36
	jmp _ZdaPv
.L36:
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
