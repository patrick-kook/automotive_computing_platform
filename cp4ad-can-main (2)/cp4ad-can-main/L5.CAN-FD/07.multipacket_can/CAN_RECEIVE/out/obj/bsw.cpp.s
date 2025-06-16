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
	.section	.text.freeMemory,"ax",@progbits
.global	freeMemory
	.type	freeMemory, @function
freeMemory:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r18,__brkval
	lds r19,__brkval+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L7
	ldi r18,lo8(__heap_start)
	ldi r19,hi8(__heap_start)
.L7:
	movw r24,r28
	adiw r24,1
	sub r24,r18
	sbc r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	freeMemory, .-freeMemory
	.section	.text.searchRemainMemory,"ax",@progbits
.global	searchRemainMemory
	.type	searchRemainMemory, @function
searchRemainMemory:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	call freeMemory
	movw r16,r24
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r15,__zero_reg__
	mov r14,__zero_reg__
.L9:
	cp r16,r14
	cpc r17,r15
	brlt .L8
	movw r28,r14
	add r28,r16
	adc r29,r17
	sbrc r29,7
	adiw r28,1
.L11:
	asr r29
	ror r28
	movw r24,r28
	call malloc
	sbiw r24,0
	breq .L12
	call free
	movw r14,r28
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
	movw r12,r28
	rjmp .L9
.L12:
	movw r16,r28
	subi r16,1
	sbc r17,__zero_reg__
	rjmp .L9
.L8:
	movw r24,r12
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	searchRemainMemory, .-searchRemainMemory
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
.L18:
	cp r20,r22
	cpc r21,r23
	brlt .L16
	movw r26,r24
	adiw r26,5
	ld r30,X+
	ld r31,X
	add r30,r22
	adc r31,r23
	st Z,__zero_reg__
	subi r22,-1
	sbci r23,-1
	rjmp .L18
.L16:
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
.L21:
	cp r4,r12
	cpc r5,r13
	cpc r6,r14
	cpc r7,r15
	breq .L19
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,20
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L21
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
	call millis
	movw r8,r22
	movw r10,r24
	rjmp .L21
.L19:
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
	.section	.rodata.show_message.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Received complete message, length: %d\n"
.LC1:
	.string	"%03d "
.LC2:
	.string	"\n"
	.section	.text.show_message,"ax",@progbits
.global	show_message
	.type	show_message, @function
show_message:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r14,r24
	movw r28,r22
	push r29
	push r22
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	add r28,r14
	adc r29,r15
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	movw r16,r14
	ldi r24,lo8(.LC1)
	mov r12,r24
	ldi r24,hi8(.LC1)
	mov r13,r24
	ldi r25,lo8(6)
	mov r10,r25
	mov r11,__zero_reg__
	ldi r18,lo8(.LC2)
	mov r8,r18
	ldi r18,hi8(.LC2)
	mov r9,r18
.L26:
	cp r16,r28
	cpc r17,r29
	breq .L27
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	push __zero_reg__
	push r24
	push r13
	push r12
	call printfSerial
	movw r24,r16
	sub r24,r14
	sbc r25,r15
	movw r22,r10
	call __udivmodhi4
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	or r24,r25
	brne .L26
	push r9
	push r8
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L26
.L27:
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
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
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	show_message, .-show_message
	.section	.rodata.CAN_receive_handler.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Reception complete. Ignoring further messages.\n"
.LC4:
	.string	"Error: No Header\n"
.LC5:
	.string	"New message start detected (seq==0). Resuming reception.\n"
.LC6:
	.string	"Discarding segment due to previous sequence error, seq: %u\n"
.LC7:
	.string	"Sequence error: expected %u but received %u\n"
.LC8:
	.string	"Error: Received message exceeds maximum allowed size!\n"
.LC9:
	.string	"%d memory remains  "
.LC10:
	.string	"Memory allocation failed in CAN_receive_handler!\n"
.LC11:
	.string	"%d's Job done\n"
	.section	.text.CAN_receive_handler,"ax",@progbits
.global	CAN_receive_handler
	.type	CAN_receive_handler, @function
CAN_receive_handler:
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r12,r24
	movw r16,r22
	lds r24,reception_complete
	lds r25,reception_complete+1
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L30
	sbiw r24,1
	brne .L29
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call printfSerial
	lds r24,reception_complete
	lds r25,reception_complete+1
	adiw r24,1
	sts reception_complete+1,r25
	sts reception_complete,r24
.L56:
	pop __tmp_reg__
	pop __tmp_reg__
.L29:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
.L30:
	cpi r22,2
	cpc r23,__zero_reg__
	brsh .L33
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
.L57:
	push r25
	push r24
	call printfSerial
	rjmp .L56
.L33:
	movw r30,r12
	ld r24,Z
	ldd r25,Z+1
	eor r25,r24
	eor r24,r25
	eor r25,r24
	movw r28,r24
	andi r29,127
	mov r11,r25
	rol r11
	clr r11
	rol r11
	lds r24,discarding_message
	tst r24
	breq .L34
	sbiw r28,0
	brne .L35
	sts discarding_message,__zero_reg__
	sts next_seq+1,__zero_reg__
	sts next_seq,__zero_reg__
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L34:
	lds r24,next_seq
	lds r25,next_seq+1
	cp r24,r28
	cpc r25,r29
	breq .L37
	push r29
	push r28
	push r25
	push r24
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(1)
	sts discarding_message,r24
	lds r24,merge_buffer
	lds r25,merge_buffer+1
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L60:
	sbiw r24,0
	breq .L39
	call free
	sts merge_buffer+1,__zero_reg__
	sts merge_buffer,__zero_reg__
.L39:
	sts merge_buffer_length+1,__zero_reg__
	sts merge_buffer_length,__zero_reg__
	rjmp .L58
.L35:
	push r29
	push r28
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	tst r11
	brne .+2
	rjmp .L29
.L58:
	sts next_seq+1,__zero_reg__
	sts next_seq,__zero_reg__
	rjmp .L29
.L37:
	subi r16,lo8(-(-2))
	ldi r17,0
	lds r14,merge_buffer_length
	lds r15,merge_buffer_length+1
	add r14,r16
	adc r15,r17
	ldi r18,-2
	cp r14,r18
	ldi r18,127
	cpc r15,r18
	brlo .L40
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
	push r25
	push r24
	call printfSerial
	lds r24,merge_buffer
	lds r25,merge_buffer+1
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L60
.L40:
	call searchRemainMemory
	push r25
	push r24
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	call printfSerial
	movw r22,r14
	lds r24,merge_buffer
	lds r25,merge_buffer+1
	call realloc
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	sbiw r24,0
	brne .L42
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	rjmp .L57
.L42:
	sts merge_buffer+1,r25
	sts merge_buffer,r24
	lds r18,merge_buffer_length
	lds r19,merge_buffer_length+1
	movw r22,r12
	subi r22,-2
	sbci r23,-1
	movw r20,r16
	add r24,r18
	adc r25,r19
	call memcpy
	sts merge_buffer_length+1,r15
	sts merge_buffer_length,r14
	lds r24,next_seq
	lds r25,next_seq+1
	adiw r24,1
	sts next_seq+1,r25
	sts next_seq,r24
	push r29
	push r28
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	tst r11
	brne .+2
	rjmp .L29
	lds r22,merge_buffer_length
	lds r23,merge_buffer_length+1
	lds r24,merge_buffer
	lds r25,merge_buffer+1
	call show_message
	lds r24,merge_buffer
	lds r25,merge_buffer+1
	call free
	sts merge_buffer+1,__zero_reg__
	sts merge_buffer,__zero_reg__
	sts merge_buffer_length+1,__zero_reg__
	sts merge_buffer_length,__zero_reg__
	sts next_seq+1,__zero_reg__
	sts next_seq,__zero_reg__
	lds r24,reception_complete
	lds r25,reception_complete+1
	adiw r24,1
	sts reception_complete+1,r25
	sts reception_complete,r24
	rjmp .L29
	.size	CAN_receive_handler, .-CAN_receive_handler
	.section	.rodata._Z5beginv.str1.1,"aMS",@progbits,1
.LC12:
	.string	"set speed: %ld kbps\n"
.LC13:
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
	ldi r24,lo8(.LC12)
	ldi r25,hi8(.LC12)
	push r25
	push r24
	call printfSerial
	lds r24,dataBitRate
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC13)
	ldi r25,hi8(.LC13)
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
.LC14:
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
	breq .L65
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
	brne .L64
	ldi r24,lo8(.LC14)
	ldi r25,hi8(.LC14)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
.L65:
	ldi r24,0
	rjmp .L62
.L64:
	movw r20,r16
	movw r22,r28
	subi r22,-9
	sbci r23,-1
	call memcpy
	ldi r24,lo8(1)
.L62:
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
.LC15:
	.string	"let's serial\n"
.LC16:
	.string	"init fail\n error code: "
.LC17:
	.string	"%d\n"
.LC18:
	.string	"CAN init\n"
.LC19:
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
	ldi r24,lo8(.LC15)
	ldi r25,hi8(.LC15)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r24,lo8(.LC16)
	mov r14,r24
	ldi r24,hi8(.LC16)
	mov r15,r24
	ldi r28,lo8(.LC17)
	ldi r29,hi8(.LC17)
.L69:
	call _Z5beginv
	mov r17,r24
	tst r24
	breq .L68
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
	rjmp .L69
.L68:
	ldi r22,lo8(16)
	ldi r23,lo8(39)
	ldi r24,0
	ldi r25,0
	call OsEE_atmega_startTimer1
	ldi r24,lo8(.LC18)
	ldi r25,hi8(.LC18)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(.LC19)
	ldi r25,hi8(.LC19)
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
 ;  284 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\070D7E~1.MUL\CAN_RE~1\bsw.cpp" 1
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
	breq .L73
	call _ZdaPv
.L73:
	lds r24,CAN+17
	lds r25,CAN+17+1
	sbiw r24,0
	breq .L72
	jmp _ZdaPv
.L72:
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
.global	reception_complete
	.section	.bss.reception_complete,"aw",@nobits
	.type	reception_complete, @object
	.size	reception_complete, 2
reception_complete:
	.zero	2
.global	discarding_message
	.section	.bss.discarding_message,"aw",@nobits
	.type	discarding_message, @object
	.size	discarding_message, 1
discarding_message:
	.zero	1
.global	next_seq
	.section	.bss.next_seq,"aw",@nobits
	.type	next_seq, @object
	.size	next_seq, 2
next_seq:
	.zero	2
.global	merge_buffer_length
	.section	.bss.merge_buffer_length,"aw",@nobits
	.type	merge_buffer_length, @object
	.size	merge_buffer_length, 2
merge_buffer_length:
	.zero	2
.global	merge_buffer
	.section	.bss.merge_buffer,"aw",@nobits
	.type	merge_buffer, @object
	.size	merge_buffer, 2
merge_buffer:
	.zero	2
.global	dataBitRate
	.section	.data.dataBitRate,"aw",@progbits
	.type	dataBitRate, @object
	.size	dataBitRate, 1
dataBitRate:
	.byte	1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
