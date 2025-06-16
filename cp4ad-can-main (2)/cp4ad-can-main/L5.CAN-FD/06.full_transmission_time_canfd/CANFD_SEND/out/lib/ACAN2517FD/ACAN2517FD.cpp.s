	.file	"ACAN2517FD.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._ZL23enterU32InBufferAtIndexmPhh,"ax",@progbits
	.type	_ZL23enterU32InBufferAtIndexmPhh, @function
_ZL23enterU32InBufferAtIndexmPhh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r20
	add r30,r18
	adc r31,__zero_reg__
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
/* epilogue start */
	ret
	.size	_ZL23enterU32InBufferAtIndexmPhh, .-_ZL23enterU32InBufferAtIndexmPhh
	.section	.text._ZL20u32FromBufferAtIndexPhh,"ax",@progbits
	.type	_ZL20u32FromBufferAtIndexPhh, @function
_ZL20u32FromBufferAtIndexPhh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	add r30,r22
	adc r31,__zero_reg__
	ld r18,Z
	ldd r19,Z+1
	ldd r22,Z+2
	ldi r23,0
	ldi r25,0
	ldi r24,0
	movw r24,r22
	clr r23
	clr r22
	or r23,r19
	or r22,r18
	ldd r18,Z+3
	or r25,r18
/* epilogue start */
	ret
	.size	_ZL20u32FromBufferAtIndexPhh, .-_ZL20u32FromBufferAtIndexPhh
	.section	.text._ZL19lengthCodeForLengthh,"ax",@progbits
	.type	_ZL19lengthCodeForLengthh, @function
_ZL19lengthCodeForLengthh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(24)
	breq .L5
	brsh .L6
	cpi r24,lo8(16)
	breq .L13
	cpi r24,lo8(20)
	breq .L8
	cpi r24,lo8(12)
	brne .L4
	ldi r22,lo8(9)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L6:
	cpi r24,lo8(48)
	breq .L10
	cpi r24,lo8(64)
	breq .L11
	cpi r24,lo8(32)
	brne .L4
	ldi r22,lo8(13)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L4:
	andi r24,lo8(15)
	mov r22,r24
	ldi r23,0
	ldi r25,0
	ldi r24,0
	ret
.L8:
	ldi r22,lo8(11)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L5:
	ldi r22,lo8(12)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L10:
	ldi r22,lo8(14)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L11:
	ldi r22,lo8(15)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
.L13:
	ldi r22,lo8(10)
	ldi r23,0
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	_ZL19lengthCodeForLengthh, .-_ZL19lengthCodeForLengthh
	.section	.text._ZN12ACANFDBuffer6removeER12CANFDMessage.part.2,"ax",@progbits
	.type	_ZN12ACANFDBuffer6removeER12CANFDMessage.part.2, @function
_ZN12ACANFDBuffer6removeER12CANFDMessage.part.2:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r20,Y+6
	ldd r21,Y+7
	ldi r24,lo8(72)
	mul r24,r20
	movw r18,r0
	mul r24,r21
	add r19,r0
	clr __zero_reg__
	ld r30,Y
	ldd r31,Y+1
	add r30,r18
	adc r31,r19
	movw r26,r22
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	ldd r24,Y+10
	ldd r25,Y+11
	ldd r26,Y+12
	ldd r27,Y+13
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	std Y+10,r24
	std Y+11,r25
	std Y+12,r26
	std Y+13,r27
	ldd r24,Y+6
	ldd r25,Y+7
	ldd r26,Y+8
	ldd r27,Y+9
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Y+6,r24
	std Y+7,r25
	std Y+8,r26
	std Y+9,r27
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brne .L14
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	std Y+9,__zero_reg__
.L14:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN12ACANFDBuffer6removeER12CANFDMessage.part.2, .-_ZN12ACANFDBuffer6removeER12CANFDMessage.part.2
	.section	.text._ZN8SPIClass8transferEPvj.part.5,"ax",@progbits
	.type	_ZN8SPIClass8transferEPvj.part.5, @function
_ZN8SPIClass8transferEPvj.part.5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	out 0x2e,r18
	movw r18,r22
.L19:
	subi r18,1
	sbc r19,__zero_reg__
	breq .L17
	ldd r21,Z+1
.L18:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L18
	in r20,0x2e
	out 0x2e,r21
	st Z+,r20
	rjmp .L19
.L17:
	subi r22,1
	sbc r23,__zero_reg__
	add r24,r22
	adc r25,r23
.L20:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L20
	in r18,0x2e
	movw r30,r24
	st Z,r18
/* epilogue start */
	ret
	.size	_ZN8SPIClass8transferEPvj.part.5, .-_ZN8SPIClass8transferEPvj.part.5
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
.L24:
	st X+,__zero_reg__
	cp r26,r30
	cpc r27,r31
	brne .L24
/* epilogue start */
	ret
	.size	_ZN12CANFDMessageC2Ev, .-_ZN12CANFDMessageC2Ev
	.weak	_ZN12CANFDMessageC1Ev
	.set	_ZN12CANFDMessageC1Ev,_ZN12CANFDMessageC2Ev
	.section	.text._ZN12ACANFDBuffer12initWithSizeEm,"axG",@progbits,_ZN12ACANFDBuffer12initWithSizeEm,comdat
	.weak	_ZN12ACANFDBuffer12initWithSizeEm
	.type	_ZN12ACANFDBuffer12initWithSizeEm, @function
_ZN12ACANFDBuffer12initWithSizeEm:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r28,r24
	movw r8,r20
	movw r10,r22
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,0
	breq .L27
	call _ZdaPv
.L27:
	movw r12,r8
	ldi r24,-56
	cp r8,r24
	ldi r24,1
	cpc r9,r24
	brsh .L31
	ldi r18,lo8(72)
	mul r18,r8
	movw r24,r0
	mul r18,r9
	add r25,r0
	clr __zero_reg__
.L28:
	call _Znaj
	movw r6,r24
	movw r16,r24
	mov r15,__zero_reg__
	mov r14,__zero_reg__
.L30:
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
	movw r24,r12
	sub r24,r14
	sbc r25,r15
	sbrc r25,7
	rjmp .L29
	movw r24,r16
	call _ZN12CANFDMessageC1Ev
	subi r16,-72
	sbci r17,-1
	rjmp .L30
.L31:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L28
.L29:
	st Y,r6
	std Y+1,r7
	std Y+2,r8
	std Y+3,r9
	std Y+4,r10
	std Y+5,r11
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	std Y+9,__zero_reg__
	std Y+10,__zero_reg__
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	std Y+17,__zero_reg__
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
	pop r7
	pop r6
	ret
	.size	_ZN12ACANFDBuffer12initWithSizeEm, .-_ZN12ACANFDBuffer12initWithSizeEm
	.section	.text._ZN12ACANFDBuffer6appendERK12CANFDMessage,"axG",@progbits,_ZN12ACANFDBuffer6appendERK12CANFDMessage,comdat
	.weak	_ZN12ACANFDBuffer6appendERK12CANFDMessage
	.type	_ZN12ACANFDBuffer6appendERK12CANFDMessage, @function
_ZN12ACANFDBuffer6appendERK12CANFDMessage:
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
	movw r28,r24
	movw r30,r22
	ldd r20,Y+10
	ldd r21,Y+11
	ldd r22,Y+12
	ldd r23,Y+13
	ldd r16,Y+2
	ldd r17,Y+3
	ldd r18,Y+4
	ldd r19,Y+5
	ldi r24,lo8(1)
	cp r20,r16
	cpc r21,r17
	cpc r22,r18
	cpc r23,r19
	brlo .L36
	ldi r24,0
.L36:
	cp r20,r16
	cpc r21,r17
	cpc r22,r18
	cpc r23,r19
	brlo .+2
	rjmp .L37
	ldd r12,Y+6
	ldd r13,Y+7
	ldd r14,Y+8
	ldd r15,Y+9
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	cp r20,r16
	cpc r21,r17
	cpc r22,r18
	cpc r23,r19
	brlo .L38
	sub r20,r16
	sbc r21,r17
	sbc r22,r18
	sbc r23,r19
.L38:
	ldi r25,lo8(72)
	mul r25,r20
	movw r18,r0
	mul r25,r21
	add r19,r0
	clr __zero_reg__
	ld r26,Y
	ldd r27,Y+1
	add r26,r18
	adc r27,r19
	0:
	ld r0,Z+
	st X+,r0
	dec r25
	brne 0b
	ldd r20,Y+10
	ldd r21,Y+11
	ldd r22,Y+12
	ldd r23,Y+13
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	std Y+10,r20
	std Y+11,r21
	std Y+12,r22
	std Y+13,r23
	ldd r16,Y+14
	ldd r17,Y+15
	ldd r18,Y+16
	ldd r19,Y+17
	cp r16,r20
	cpc r17,r21
	cpc r18,r22
	cpc r19,r23
	brsh .L35
	std Y+14,r20
	std Y+15,r21
	std Y+16,r22
	std Y+17,r23
.L35:
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
.L37:
	subi r16,-1
	sbci r17,-1
	sbci r18,-1
	sbci r19,-1
	std Y+14,r16
	std Y+15,r17
	std Y+16,r18
	std Y+17,r19
	rjmp .L35
	.size	_ZN12ACANFDBuffer6appendERK12CANFDMessage, .-_ZN12ACANFDBuffer6appendERK12CANFDMessage
	.section	.text._ZN8SPIClass16beginTransactionE11SPISettings,"axG",@progbits,_ZN8SPIClass16beginTransactionE11SPISettings,comdat
	.weak	_ZN8SPIClass16beginTransactionE11SPISettings
	.type	_ZN8SPIClass16beginTransactionE11SPISettings, @function
_ZN8SPIClass16beginTransactionE11SPISettings:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,_ZN8SPIClass13interruptModeE
	tst r18
	breq .L41
	in r19,__SREG__
/* #APP */
 ;  181 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,_ZN8SPIClass13interruptModeE
	cpi r18,lo8(1)
	brne .L42
	in r18,0x1d
	sts _ZN8SPIClass13interruptSaveE,r18
	in r20,0x1d
	lds r18,_ZN8SPIClass13interruptMaskE
	com r18
	and r18,r20
	out 0x1d,r18
	out __SREG__,r19
.L41:
	out 0x2c,r24
	out 0x2d,r25
/* epilogue start */
	ret
.L42:
	sts _ZN8SPIClass13interruptSaveE,r19
	rjmp .L41
	.size	_ZN8SPIClass16beginTransactionE11SPISettings, .-_ZN8SPIClass16beginTransactionE11SPISettings
	.section	.text._ZN8SPIClass10transfer16Ej,"axG",@progbits,_ZN8SPIClass10transfer16Ej,comdat
	.weak	_ZN8SPIClass10transfer16Ej
	.type	_ZN8SPIClass10transfer16Ej, @function
_ZN8SPIClass10transfer16Ej:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in __tmp_reg__,0x2c
	sbrc __tmp_reg__,5
	rjmp .L47
	out 0x2e,r25
/* #APP */
 ;  225 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L48:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L48
	in r25,0x2e
	out 0x2e,r24
/* #APP */
 ;  229 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L49:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L49
	in r24,0x2e
	ret
.L47:
	out 0x2e,r24
/* #APP */
 ;  234 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L51:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L51
	in r24,0x2e
	out 0x2e,r25
/* #APP */
 ;  238 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L52:
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L52
	in r25,0x2e
/* epilogue start */
	ret
	.size	_ZN8SPIClass10transfer16Ej, .-_ZN8SPIClass10transfer16Ej
	.section	.text._ZN8SPIClass14endTransactionEv,"axG",@progbits,_ZN8SPIClass14endTransactionEv,comdat
	.weak	_ZN8SPIClass14endTransactionEv
	.type	_ZN8SPIClass14endTransactionEv, @function
_ZN8SPIClass14endTransactionEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_ZN8SPIClass13interruptModeE
	tst r24
	breq .L57
	in r25,__SREG__
/* #APP */
 ;  273 "C:\Users\HONGKE~1\DOCUME~1\GitHub\test\L5D965~1.CAN\05ABF5~1.TRA\CANFD_~2/SPI.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,_ZN8SPIClass13interruptModeE
	lds r24,_ZN8SPIClass13interruptSaveE
	cpi r18,lo8(1)
	brne .L59
	out 0x1d,r24
	out __SREG__,r25
	ret
.L59:
	out __SREG__,r24
.L57:
/* epilogue start */
	ret
	.size	_ZN8SPIClass14endTransactionEv, .-_ZN8SPIClass14endTransactionEv
	.section	.text._ZN10ACAN2517FD8assertCSEv,"axG",@progbits,_ZN10ACAN2517FD8assertCSEv,comdat
	.weak	_ZN10ACAN2517FD8assertCSEv
	.type	_ZN10ACAN2517FD8assertCSEv, @function
_ZN10ACAN2517FD8assertCSEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,53
	ld r30,X+
	ld r31,X
	sbiw r26,53+1
	ld r25,Z
	adiw r26,55
	ld r24,X
	com r24
	and r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	_ZN10ACAN2517FD8assertCSEv, .-_ZN10ACAN2517FD8assertCSEv
	.section	.text._ZN10ACAN2517FD10deassertCSEv,"axG",@progbits,_ZN10ACAN2517FD10deassertCSEv,comdat
	.weak	_ZN10ACAN2517FD10deassertCSEv
	.type	_ZN10ACAN2517FD10deassertCSEv, @function
_ZN10ACAN2517FD10deassertCSEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,53
	ld r30,X+
	ld r31,X
	sbiw r26,53+1
	ld r25,Z
	adiw r26,55
	ld r24,X
	or r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	_ZN10ACAN2517FD10deassertCSEv, .-_ZN10ACAN2517FD10deassertCSEv
	.section	.text._ZN10ACAN2517FDC2EhR8SPIClassh,"ax",@progbits
.global	_ZN10ACAN2517FDC2EhR8SPIClassh
	.type	_ZN10ACAN2517FDC2EhR8SPIClassh, @function
_ZN10ACAN2517FDC2EhR8SPIClassh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldi r24,lo8(80)
	std Z+2,r24
	std Z+3,__zero_reg__
	std Z+5,r21
	std Z+4,r20
	std Z+6,r22
	std Z+7,r18
	std Z+8,__zero_reg__
	std Z+9,__zero_reg__
	ldi r24,lo8(1)
	std Z+10,r24
	std Z+11,__zero_reg__
	std Z+12,__zero_reg__
	std Z+13,__zero_reg__
	std Z+14,__zero_reg__
	std Z+15,__zero_reg__
	std Z+16,__zero_reg__
	std Z+18,__zero_reg__
	std Z+17,__zero_reg__
	std Z+19,__zero_reg__
	std Z+20,__zero_reg__
	std Z+21,__zero_reg__
	std Z+22,__zero_reg__
	std Z+23,__zero_reg__
	std Z+24,__zero_reg__
	std Z+25,__zero_reg__
	std Z+26,__zero_reg__
	std Z+27,__zero_reg__
	std Z+28,__zero_reg__
	std Z+29,__zero_reg__
	std Z+30,__zero_reg__
	std Z+31,__zero_reg__
	std Z+32,__zero_reg__
	std Z+33,__zero_reg__
	std Z+34,__zero_reg__
	std Z+36,__zero_reg__
	std Z+35,__zero_reg__
	std Z+37,__zero_reg__
	std Z+38,__zero_reg__
	std Z+39,__zero_reg__
	std Z+40,__zero_reg__
	std Z+41,__zero_reg__
	std Z+42,__zero_reg__
	std Z+43,__zero_reg__
	std Z+44,__zero_reg__
	std Z+45,__zero_reg__
	std Z+46,__zero_reg__
	std Z+47,__zero_reg__
	std Z+48,__zero_reg__
	std Z+49,__zero_reg__
	std Z+50,__zero_reg__
	std Z+51,__zero_reg__
	std Z+52,__zero_reg__
/* epilogue start */
	ret
	.size	_ZN10ACAN2517FDC2EhR8SPIClassh, .-_ZN10ACAN2517FDC2EhR8SPIClassh
.global	_ZN10ACAN2517FDC1EhR8SPIClassh
	.set	_ZN10ACAN2517FDC1EhR8SPIClassh,_ZN10ACAN2517FDC2EhR8SPIClassh
	.section	.text._ZN10ACAN2517FD9availableEv,"ax",@progbits
.global	_ZN10ACAN2517FD9availableEv
	.type	_ZN10ACAN2517FD9availableEv, @function
_ZN10ACAN2517FD9availableEv:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r16,r24
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  785 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r28,lo8(1)
	movw r30,r16
	ldd r24,Z+27
	ldd r25,Z+28
	ldd r26,Z+29
	ldd r27,Z+30
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L67
	ldi r28,0
.L67:
/* #APP */
 ;  791 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	mov r24,r28
/* epilogue start */
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD9availableEv, .-_ZN10ACAN2517FD9availableEv
	.section	.text._ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm,"ax",@progbits
.global	_ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm
	.type	_ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm, @function
_ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	movw r30,r22
	movw r24,r20
	movw r22,r18
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	movw r18,r30
	andi r19,15
	ori r19,32
	std Y+1,r19
	std Y+2,r18
	ldi r18,lo8(2)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call _ZL23enterU32InBufferAtIndexmPhh
	movw r24,r16
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(6)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
/* epilogue start */
	adiw r28,6
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
	.size	_ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm, .-_ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm
	.section	.text._ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh,"ax",@progbits
.global	_ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	.type	_ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh, @function
_ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh:
	push r16
	push r17
	push r28
	push r29
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24
	andi r23,15
	ori r23,32
	std Y+1,r23
	std Y+2,r22
	std Y+3,r20
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(3)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh, .-_ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	.section	.text._ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj,"ax",@progbits
.global	_ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	.type	_ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj, @function
_ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	andi r23,15
	ori r23,48
	std Y+1,r23
	std Y+2,r22
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(6)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
	ldi r22,lo8(2)
	movw r24,r28
	adiw r24,1
	call _ZL20u32FromBufferAtIndexPhh
/* epilogue start */
	adiw r28,6
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
	.size	_ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj, .-_ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	.section	.text._ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage,"ax",@progbits
.global	_ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage
	.type	_ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage, @function
_ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage:
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
	subi r28,78
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 78 */
/* stack size = 96 */
.L__stack_usage = 96
	movw r10,r24
	movw r16,r22
	ldi r22,lo8(112)
	ldi r23,0
	call _ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	movw r2,r22
	ldi r18,-4
	sub r3,r18
	movw r26,r16
	ld r4,X+
	ld r5,X+
	ld r6,X+
	ld r7,X
	sbiw r26,3
	adiw r26,4
	ld r9,X
	tst r9
	breq .L72
	movw r26,r6
	movw r24,r4
	ldi r19,18
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r19
	brne 1b
	andi r25,7
	clr r26
	clr r27
	ldi r20,11
	1:
	lsl r4
	rol r5
	rol r6
	rol r7
	dec r20
	brne 1b
	clr r4
	ldi r30,248
	and r5,r30
	ldi r30,31
	and r7,r30
	or r4,r24
	or r5,r25
	or r6,r26
	or r7,r27
.L72:
	movw r26,r16
	adiw r26,7
	ld r8,X
	mov r24,r8
	call _ZL19lengthCodeForLengthh
	movw r12,r22
	movw r14,r24
	tst r9
	breq .L73
	set
	bld r12,4
.L73:
	movw r30,r16
	ldd r24,Z+5
	cpi r24,lo8(2)
	brne .+2
	rjmp .L87
	cpi r24,lo8(3)
	brne .+2
	rjmp .L76
	cpse r24,__zero_reg__
	rjmp .L74
	set
	bld r12,5
.L74:
	mov r9,__zero_reg__
	ldi r30,3
	add r8,r30
	adc r9,__zero_reg__
	asr r9
	ror r8
	asr r9
	ror r8
	movw r24,r8
	mov __tmp_reg__,r9
	lsl r0
	sbc r26,r26
	sbc r27,r27
	adiw r28,75-60
	std Y+60,r24
	std Y+61,r25
	std Y+62,r26
	std Y+63,r27
	sbiw r28,75-60
	movw r30,r28
	adiw r30,3
	ldi r24,lo8(72)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ldi r27,15
	and r3,r27
	set
	bld r3,5
	std Y+1,r3
	std Y+2,r2
	ldi r18,lo8(2)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r6
	movw r22,r4
	call _ZL23enterU32InBufferAtIndexmPhh
	ldi r18,lo8(6)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r14
	movw r22,r12
	call _ZL23enterU32InBufferAtIndexmPhh
	subi r16,-8
	sbci r17,-1
	ldi r18,lo8(10)
	mov r15,r18
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
.L80:
	adiw r28,75-60
	ldd r24,Y+60
	ldd r25,Y+61
	ldd r26,Y+62
	ldd r27,Y+63
	sbiw r28,75-60
	cp r4,r24
	cpc r5,r25
	cpc r6,r26
	cpc r7,r27
	brsh .L79
	movw r26,r16
	ld r22,X+
	ld r23,X+
	ld r24,X+
	ld r25,X+
	movw r16,r26
	mov r18,r15
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call _ZL23enterU32InBufferAtIndexmPhh
	ldi r27,-1
	sub r4,r27
	sbc r5,r27
	sbc r6,r27
	sbc r7,r27
	ldi r30,lo8(4)
	add r15,r30
	rjmp .L80
.L76:
	movw r26,r10
	adiw r26,11
	ld r24,X
	cpse r24,__zero_reg__
	rjmp .L78
.L87:
	set
	bld r12,7
	rjmp .L74
.L78:
	ldi r27,192
	or r12,r27
	rjmp .L74
.L79:
	movw r24,r10
	call _ZN10ACAN2517FD8assertCSEv
	movw r22,r8
	lsl r22
	rol r23
	lsl r22
	rol r23
	subi r22,-10
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r10
	call _ZN10ACAN2517FD10deassertCSEv
	ldi r20,lo8(3)
	ldi r22,lo8(105)
	ldi r23,0
	movw r24,r10
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
/* epilogue start */
	subi r28,-78
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
	pop r3
	pop r2
	ret
	.size	_ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage, .-_ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage
	.section	.text._ZN10ACAN2517FD17transmitInterruptEv,"ax",@progbits
.global	_ZN10ACAN2517FD17transmitInterruptEv
	.type	_ZN10ACAN2517FD17transmitInterruptEv, @function
_ZN10ACAN2517FD17transmitInterruptEv:
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
	movw r30,r16
	ldd r24,Z+45
	ldd r25,Z+46
	ldd r26,Z+47
	ldd r27,Z+48
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L89
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	adiw r24,35
	call _ZN12ACANFDBuffer6removeER12CANFDMessage.part.2
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage
.L88:
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
.L89:
	ldi r20,lo8(-112)
	ldi r22,lo8(104)
	ldi r23,0
	movw r24,r16
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	movw r30,r16
	std Z+9,__zero_reg__
	rjmp .L88
	.size	_ZN10ACAN2517FD17transmitInterruptEv, .-_ZN10ACAN2517FD17transmitInterruptEv
	.section	.text._ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj,"ax",@progbits
.global	_ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj
	.type	_ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj, @function
_ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r24
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	andi r23,15
	ori r23,48
	std Y+1,r23
	std Y+2,r22
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(4)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
	ldd r24,Y+3
	ldd r25,Y+4
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj, .-_ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj
	.section	.text._ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj,"ax",@progbits
.global	_ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	.type	_ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj, @function
_ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj:
	push r16
	push r17
	push r28
	push r29
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24
	std Y+3,__zero_reg__
	andi r23,15
	ori r23,48
	std Y+1,r23
	std Y+2,r22
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(3)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
	ldd r24,Y+3
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj, .-_ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	.section	.text._ZN10ACAN2517FD3endEv,"ax",@progbits
.global	_ZN10ACAN2517FD3endEv
	.type	_ZN10ACAN2517FD3endEv, @function
_ZN10ACAN2517FD3endEv:
	push r12
	push r13
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  537 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Y+7
	cpi r24,lo8(-1)
	breq .L94
	cpi r24,lo8(2)
	brne .+2
	rjmp .L100
	cpi r24,lo8(3)
	brne .+2
	rjmp .L101
	ldi r24,lo8(-1)
.L95:
	call detachInterrupt
.L94:
	call millis
	movw r12,r22
	movw r14,r24
.L97:
	ldi r20,lo8(12)
	ldi r22,lo8(3)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	ldi r22,lo8(2)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	mov r17,r24
	swap r17
	lsr r17
	andi r17,lo8(7)
	cpi r17,lo8(4)
	breq .L96
	call millis
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cpi r22,3
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L97
.L96:
	movw r24,r28
	call _ZN10ACAN2517FD8assertCSEv
	ldi r25,0
	ldi r24,0
	call _ZN8SPIClass10transfer16Ej
	movw r24,r28
	call _ZN10ACAN2517FD10deassertCSEv
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,0
	breq .L98
	call _ZdaPv
.L98:
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r28
	adiw r24,17
	call _ZN12ACANFDBuffer12initWithSizeEm
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r28
	adiw r24,35
	call _ZN12ACANFDBuffer12initWithSizeEm
/* #APP */
 ;  576 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	ldi r24,lo8(1)
	cpi r17,lo8(4)
	breq .L99
	ldi r24,0
.L99:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L100:
	ldi r24,0
	rjmp .L95
.L101:
	ldi r24,lo8(1)
	rjmp .L95
	.size	_ZN10ACAN2517FD3endEv, .-_ZN10ACAN2517FD3endEv
	.section	.text._ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage,"ax",@progbits
.global	_ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage
	.type	_ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage, @function
_ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r18,Z+9
	tst r18
	breq .L116
	adiw r24,35
/* epilogue start */
	pop r29
	pop r28
	jmp _ZN12ACANFDBuffer6appendERK12CANFDMessage
.L116:
	movw r28,r24
	call _ZN10ACAN2517FD24appendInControllerTxFIFOERK12CANFDMessage
	ldi r22,lo8(108)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	sbrc r24,0
	rjmp .L115
	ldi r20,lo8(-111)
	ldi r22,lo8(104)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	ldi r24,lo8(1)
	std Y+9,r24
.L115:
	ldi r24,lo8(1)
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage, .-_ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage
	.section	.text._ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage,"ax",@progbits
.global	_ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage
	.type	_ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage, @function
_ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage:
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
	subi r28,80
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 80 */
/* stack size = 97 */
.L__stack_usage = 97
	movw r26,r24
	adiw r26,8
	ld r3,X
	cpse r3,__zero_reg__
	rjmp .L120
.L124:
	mov r3,__zero_reg__
.L119:
	mov r24,r3
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
	ret
.L120:
	movw r10,r22
	movw r16,r24
	ldi r22,lo8(84)
	ldi r23,0
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	sbrs r24,4
	rjmp .L122
	ldi r20,lo8(-17)
	ldi r22,lo8(84)
	ldi r23,0
	movw r24,r16
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
.L123:
	ldi r22,lo8(88)
	ldi r23,0
	movw r24,r16
	call _ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	movw r30,r22
	subi r31,-4
	adiw r28,75-62
	std Y+63,r31
	std Y+62,r30
	sbiw r28,75-62
	movw r26,r10
	ld r4,X+
	ld r5,X+
	ld r6,X+
	ld r7,X
	sbiw r26,3
	adiw r26,4
	ld r9,X
	tst r9
	breq .L125
	movw r26,r6
	movw r24,r4
	ldi r19,18
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r19
	brne 1b
	andi r25,7
	clr r26
	clr r27
	ldi r20,11
	1:
	lsl r4
	rol r5
	rol r6
	rol r7
	dec r20
	brne 1b
	clr r4
	ldi r30,248
	and r5,r30
	ldi r30,31
	and r7,r30
	or r4,r24
	or r5,r25
	or r6,r26
	or r7,r27
.L125:
	movw r26,r10
	adiw r26,7
	ld r8,X
	mov r24,r8
	call _ZL19lengthCodeForLengthh
	movw r12,r22
	movw r14,r24
	tst r9
	breq .L126
	set
	bld r12,4
.L126:
	movw r30,r10
	ldd r24,Z+5
	cpi r24,lo8(2)
	brne .+2
	rjmp .L143
	cpi r24,lo8(3)
	brne .+2
	rjmp .L129
	cpse r24,__zero_reg__
	rjmp .L127
	set
	bld r12,5
.L127:
	mov r9,__zero_reg__
	ldi r30,3
	add r8,r30
	adc r9,__zero_reg__
	asr r9
	ror r8
	asr r9
	ror r8
	movw r24,r8
	mov __tmp_reg__,r9
	lsl r0
	sbc r26,r26
	sbc r27,r27
	adiw r28,77-60
	std Y+60,r24
	std Y+61,r25
	std Y+62,r26
	std Y+63,r27
	sbiw r28,77-60
	movw r30,r28
	adiw r30,3
	ldi r24,lo8(72)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	adiw r28,75-62
	ldd r22,Y+62
	ldd r23,Y+63
	sbiw r28,75-62
	andi r23,15
	ori r23,32
	std Y+1,r23
	std Y+2,r22
	ldi r18,lo8(2)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r6
	movw r22,r4
	call _ZL23enterU32InBufferAtIndexmPhh
	ldi r18,lo8(6)
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r24,r14
	movw r22,r12
	call _ZL23enterU32InBufferAtIndexmPhh
	ldi r27,8
	add r10,r27
	adc r11,__zero_reg__
	ldi r18,lo8(10)
	mov r7,r18
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L133:
	adiw r28,77-60
	ldd r24,Y+60
	ldd r25,Y+61
	ldd r26,Y+62
	ldd r27,Y+63
	sbiw r28,77-60
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brsh .L132
	movw r26,r10
	ld r22,X+
	ld r23,X+
	ld r24,X+
	ld r25,X+
	movw r10,r26
	mov r18,r7
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call _ZL23enterU32InBufferAtIndexmPhh
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
	sbc r14,r27
	sbc r15,r27
	ldi r30,lo8(4)
	add r7,r30
	rjmp .L133
.L122:
	sbrs r24,0
	rjmp .L124
	rjmp .L123
.L129:
	movw r26,r16
	adiw r26,11
	ld r24,X
	cpse r24,__zero_reg__
	rjmp .L131
.L143:
	set
	bld r12,7
	rjmp .L127
.L131:
	ldi r27,192
	or r12,r27
	rjmp .L127
.L132:
	movw r24,r16
	call _ZN10ACAN2517FD8assertCSEv
	movw r22,r8
	lsl r22
	rol r23
	lsl r22
	rol r23
	subi r22,-10
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	movw r24,r16
	call _ZN10ACAN2517FD10deassertCSEv
	ldi r20,lo8(3)
	ldi r22,lo8(81)
	ldi r23,0
	movw r24,r16
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	rjmp .L119
	.size	_ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage, .-_ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage
	.section	.text._ZN10ACAN2517FD9tryToSendERK12CANFDMessage,"ax",@progbits
.global	_ZN10ACAN2517FD9tryToSendERK12CANFDMessage
	.type	_ZN10ACAN2517FD9tryToSendERK12CANFDMessage, @function
_ZN10ACAN2517FD9tryToSendERK12CANFDMessage:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r22
	ldd r18,Y+7
	ldd r19,Y+5
	cpi r19,lo8(2)
	brsh .L145
	cpi r18,lo8(9)
	brlo .L146
.L150:
	ldi r28,0
	rjmp .L144
.L145:
	cpi r18,lo8(9)
	brlo .L146
	cpi r18,lo8(12)
	breq .L146
	mov r19,r18
	andi r19,lo8(-5)
	cpi r19,lo8(16)
	breq .L146
	cpi r18,lo8(24)
	breq .L146
	mov r19,r18
	andi r19,lo8(-17)
	cpi r19,lo8(32)
	breq .L146
	cpi r18,lo8(64)
	brne .L150
.L146:
	movw r16,r24
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  594 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Y+6
	cpse r24,__zero_reg__
	rjmp .L148
	ldd r25,Y+7
	movw r30,r16
	ldd r24,Z+12
	cp r24,r25
	brlo .L153
	movw r22,r28
	movw r24,r16
	call _ZN10ACAN2517FD21enterInTransmitBufferERK12CANFDMessage
.L166:
	mov r28,r24
.L149:
/* #APP */
 ;  610 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
.L144:
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L148:
	cpi r24,lo8(-1)
	brne .L152
	ldd r25,Y+7
	movw r30,r16
	ldd r24,Z+13
	cp r24,r25
	brlo .L153
	movw r22,r28
	movw r24,r16
	call _ZN10ACAN2517FD10sendViaTXQERK12CANFDMessage
	rjmp .L166
.L152:
	ldi r28,lo8(1)
	rjmp .L149
.L153:
	ldi r28,0
	rjmp .L149
	.size	_ZN10ACAN2517FD9tryToSendERK12CANFDMessage, .-_ZN10ACAN2517FD9tryToSendERK12CANFDMessage
	.section	.text._ZN10ACAN2517FD16receiveInterruptEv,"ax",@progbits
.global	_ZN10ACAN2517FD16receiveInterruptEv
	.type	_ZN10ACAN2517FD16receiveInterruptEv, @function
_ZN10ACAN2517FD16receiveInterruptEv:
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
	subi r28,-109
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 147 */
/* stack size = 165 */
.L__stack_usage = 165
	movw r6,r24
	ldi r22,lo8(100)
	ldi r23,0
	call _ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	movw r12,r22
	movw r24,r28
	subi r24,-75
	sbci r25,-1
	call _ZN12CANFDMessageC1Ev
	movw r30,r28
	adiw r30,3
	ldi r24,lo8(72)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ldi r27,-4
	sub r13,r27
	ldi r30,15
	and r13,r30
	ldi r31,48
	or r13,r31
	std Y+1,r13
	std Y+2,r12
	movw r24,r6
	call _ZN10ACAN2517FD8assertCSEv
	ldi r22,lo8(74)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call _ZN8SPIClass8transferEPvj.part.5
	ldi r22,lo8(2)
	movw r24,r28
	adiw r24,1
	call _ZL20u32FromBufferAtIndexPhh
	adiw r28,75-60
	std Y+60,r22
	std Y+61,r23
	std Y+62,r24
	std Y+63,r25
	sbiw r28,75-60
	ldi r22,lo8(6)
	movw r24,r28
	adiw r24,1
	call _ZL20u32FromBufferAtIndexPhh
	movw r8,r22
	movw r10,r24
	movw r26,r24
	movw r24,r22
	andi r24,15
	clr r25
	clr r26
	clr r27
	subi r24,lo8(-(_ZZN10ACAN2517FD16receiveInterruptEvE7kLength))
	sbci r25,hi8(-(_ZZN10ACAN2517FD16receiveInterruptEvE7kLength))
	movw r26,r24
	ld r12,X
	adiw r28,82-63
	std Y+63,r12
	sbiw r28,82-63
	mov r13,__zero_reg__
	ldi r27,3
	add r12,r27
	adc r13,__zero_reg__
	asr r13
	ror r12
	asr r13
	ror r12
	mov __tmp_reg__,r13
	lsl r0
	sbc r14,r14
	sbc r15,r15
	ldi r16,lo8(75)
	ldi r17,0
	add r16,r28
	adc r17,r29
	subi r16,-8
	sbci r17,-1
	ldi r30,lo8(10)
	subi r28,lo8(-147)
	sbci r29,hi8(-147)
	st Y,r30
	subi r28,lo8(147)
	sbci r29,hi8(147)
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	movw r4,r2
.L169:
	cp r2,r12
	cpc r3,r13
	cpc r4,r14
	cpc r5,r15
	brsh .L168
	subi r28,lo8(-147)
	sbci r29,hi8(-147)
	ld r22,Y
	subi r28,lo8(147)
	sbci r29,hi8(147)
	movw r24,r28
	adiw r24,1
	call _ZL20u32FromBufferAtIndexPhh
	movw r26,r16
	st X+,r22
	st X+,r23
	st X+,r24
	st X+,r25
	movw r16,r26
	ldi r27,-1
	sub r2,r27
	sbc r3,r27
	sbc r4,r27
	sbc r5,r27
	subi r28,lo8(-147)
	sbci r29,hi8(-147)
	ld r30,Y
	subi r28,lo8(147)
	sbci r29,hi8(147)
	subi r30,lo8(-(4))
	subi r28,lo8(-147)
	sbci r29,hi8(-147)
	st Y,r30
	subi r28,lo8(147)
	sbci r29,hi8(147)
	rjmp .L169
.L168:
	movw r24,r6
	call _ZN10ACAN2517FD10deassertCSEv
	ldi r20,lo8(1)
	ldi r22,lo8(93)
	ldi r23,0
	movw r24,r6
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	movw r26,r10
	movw r24,r8
	ldi r20,11
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r20
	brne 1b
	andi r24,lo8(31)
	adiw r28,81-63
	std Y+63,r24
	sbiw r28,81-63
	sbrs r8,5
	rjmp .L170
	adiw r28,80-63
	std Y+63,__zero_reg__
	sbiw r28,80-63
.L171:
	ldi r24,lo8(1)
	movw r22,r10
	movw r20,r8
	andi r20,16
	clr r21
	clr r22
	clr r23
	sbrs r8,4
	ldi r24,0
.L174:
	adiw r28,79-63
	std Y+63,r24
	sbiw r28,79-63
	or r20,r21
	or r20,r22
	or r20,r23
	breq .L175
	adiw r28,75-60
	ldd r24,Y+60
	ldd r25,Y+61
	ldd r26,Y+62
	ldd r27,Y+63
	sbiw r28,75-60
	movw r20,r24
	movw r22,r26
	ldi r18,11
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r18
	brne 1b
	andi r22,3
	clr r23
	ldi r19,18
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r19
	brne 1b
	clr r24
	clr r25
	andi r26,252
	andi r27,31
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	adiw r28,75-60
	std Y+60,r24
	std Y+61,r25
	std Y+62,r26
	std Y+63,r27
	sbiw r28,75-60
.L175:
	movw r22,r28
	subi r22,-75
	sbci r23,-1
	movw r24,r6
	adiw r24,17
	call _ZN12ACANFDBuffer6appendERK12CANFDMessage
	movw r26,r6
	adiw r26,19
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	sbiw r26,19+3
	adiw r26,27
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brne .L167
	movw r30,r6
	std Z+10,__zero_reg__
	ldd r24,Z+7
	cpi r24,lo8(-1)
	breq .L167
	ldi r22,lo8(30)
	ldi r23,0
	movw r24,r6
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	mov r20,r24
	andi r20,lo8(-3)
	ldi r22,lo8(30)
	ldi r23,0
	movw r24,r6
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
.L167:
/* epilogue start */
	subi r28,109
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
	pop r3
	pop r2
	ret
.L170:
	ldi r24,lo8(1)
	sbrs r8,7
	rjmp .L185
	ldi r24,lo8(2)
	sbrc r8,6
	ldi r24,lo8(3)
.L185:
	adiw r28,80-63
	std Y+63,r24
	sbiw r28,80-63
	rjmp .L171
	.size	_ZN10ACAN2517FD16receiveInterruptEv, .-_ZN10ACAN2517FD16receiveInterruptEv
	.section	.text._ZN10ACAN2517FD13isr_poll_coreEv,"ax",@progbits
.global	_ZN10ACAN2517FD13isr_poll_coreEv
	.type	_ZN10ACAN2517FD13isr_poll_coreEv, @function
_ZN10ACAN2517FD13isr_poll_coreEv:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
.L187:
	ldi r22,lo8(28)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj
	movw r14,r24
	ldd r17,Y+10
	tst r17
	breq .L188
	sbrs r24,1
	rjmp .L198
	movw r24,r28
	call _ZN10ACAN2517FD16receiveInterruptEv
.L188:
	sbrs r15,2
	rjmp .L189
	ldi r20,lo8(-17)
	ldi r22,lo8(108)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
.L218:
	movw r24,r28
	call _ZN10ACAN2517FD17transmitInterruptEv
	ldi r17,lo8(1)
	rjmp .L190
.L198:
	ldi r17,0
	rjmp .L188
.L189:
	sbrc r14,0
	rjmp .L218
.L190:
	sbrs r14,2
	rjmp .L191
	ldi r20,lo8(-5)
	ldi r22,lo8(28)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	ldi r17,lo8(1)
.L191:
	sbrs r14,3
	rjmp .L192
	ldi r20,lo8(-9)
	ldi r22,lo8(28)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	ldi r17,lo8(1)
.L192:
	sbrs r15,4
	rjmp .L193
	ldi r20,lo8(-17)
	ldi r22,lo8(29)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	ldi r17,lo8(1)
.L193:
	sbrc r15,3
	rjmp .L194
	cpse r17,__zero_reg__
	rjmp .L187
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	jmp _ZN8SPIClass14endTransactionEv
.L194:
	ldd r24,Y+16
	cpi r24,lo8(-1)
	breq .L197
	subi r24,lo8(-(1))
	std Y+16,r24
.L197:
	ldi r20,lo8(-9)
	ldi r22,lo8(96)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	rjmp .L187
	.size	_ZN10ACAN2517FD13isr_poll_coreEv, .-_ZN10ACAN2517FD13isr_poll_coreEv
	.section	.text._ZN10ACAN2517FD4pollEv,"ax",@progbits
.global	_ZN10ACAN2517FD4pollEv
	.type	_ZN10ACAN2517FD4pollEv, @function
_ZN10ACAN2517FD4pollEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  862 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call _ZN10ACAN2517FD13isr_poll_coreEv
/* #APP */
 ;  864 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	_ZN10ACAN2517FD4pollEv, .-_ZN10ACAN2517FD4pollEv
	.section	.text._ZN10ACAN2517FD3isrEv,"ax",@progbits
.global	_ZN10ACAN2517FD3isrEv
	.type	_ZN10ACAN2517FD3isrEv, @function
_ZN10ACAN2517FD3isrEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp _ZN10ACAN2517FD13isr_poll_coreEv
	.size	_ZN10ACAN2517FD3isrEv, .-_ZN10ACAN2517FD3isrEv
	.section	.text._ZN10ACAN2517FD7receiveER12CANFDMessage,"ax",@progbits
.global	_ZN10ACAN2517FD7receiveER12CANFDMessage
	.type	_ZN10ACAN2517FD7receiveER12CANFDMessage, @function
_ZN10ACAN2517FD7receiveER12CANFDMessage:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r14,r22
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  804 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r24,Y+27
	ldd r25,Y+28
	ldd r26,Y+29
	ldd r27,Y+30
	ldi r17,lo8(1)
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L222
	ldi r17,0
.L222:
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L223
	movw r22,r14
	movw r24,r28
	adiw r24,17
	call _ZN12ACANFDBuffer6removeER12CANFDMessage.part.2
.L223:
	ldd r24,Y+7
	cpi r24,lo8(-1)
	brne .L224
	ldi r24,lo8(1)
	std Y+10,r24
	movw r24,r28
	call _ZN10ACAN2517FD13isr_poll_coreEv
.L225:
/* #APP */
 ;  820 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L224:
	ldd r24,Y+10
	cpse r24,__zero_reg__
	rjmp .L225
	ldi r24,lo8(1)
	std Y+10,r24
	ldi r22,lo8(30)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	mov r20,r24
	ori r20,lo8(2)
	ldi r22,lo8(30)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
	rjmp .L225
	.size	_ZN10ACAN2517FD7receiveER12CANFDMessage, .-_ZN10ACAN2517FD7receiveER12CANFDMessage
	.section	.text._ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE,"ax",@progbits
.global	_ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE
	.type	_ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE, @function
_ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE:
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
/* stack size = 80 */
.L__stack_usage = 80
	movw r14,r24
	movw r12,r22
	movw r24,r28
	adiw r24,1
	call _ZN12CANFDMessageC1Ev
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r14
	call _ZN10ACAN2517FD7receiveER12CANFDMessage
	mov r16,r24
	tst r24
	breq .L229
	ldd r17,Y+7
	mov r22,r17
	ldi r23,0
	ldi r25,0
	ldi r24,0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L232
	movw r30,r12
	icall
.L232:
	movw r26,r14
	ld r18,X+
	ld r19,X
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L229
	mov r24,r17
	ldi r25,0
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r30,0
	breq .L229
	movw r24,r28
	adiw r24,1
	icall
.L229:
	mov r24,r16
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
	ret
	.size	_ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE, .-_ZN10ACAN2517FD23dispatchReceivedMessageEPFvmE
	.section	.text._ZN10ACAN2517FD14writeRegister8Ejh,"ax",@progbits
.global	_ZN10ACAN2517FD14writeRegister8Ejh
	.type	_ZN10ACAN2517FD14writeRegister8Ejh, @function
_ZN10ACAN2517FD14writeRegister8Ejh:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r16,r22
	mov r15,r20
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1113 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	mov r20,r15
	movw r22,r16
	movw r24,r28
	call _ZN10ACAN2517FD36writeRegister8Assume_SPI_transactionEjh
/* #APP */
 ;  1119 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN10ACAN2517FD14writeRegister8Ejh, .-_ZN10ACAN2517FD14writeRegister8Ejh
	.section	.text._ZN10ACAN2517FD13readRegister8Ej,"ax",@progbits
.global	_ZN10ACAN2517FD13readRegister8Ej
	.type	_ZN10ACAN2517FD13readRegister8Ej, @function
_ZN10ACAN2517FD13readRegister8Ej:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1131 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r22,r16
	movw r24,r28
	call _ZN10ACAN2517FD35readRegister8Assume_SPI_transactionEj
	mov r28,r24
/* #APP */
 ;  1137 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD13readRegister8Ej, .-_ZN10ACAN2517FD13readRegister8Ej
	.section	.text._ZN10ACAN2517FD14readRegister16Ej,"ax",@progbits
.global	_ZN10ACAN2517FD14readRegister16Ej
	.type	_ZN10ACAN2517FD14readRegister16Ej, @function
_ZN10ACAN2517FD14readRegister16Ej:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1150 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r22,r16
	movw r24,r28
	call _ZN10ACAN2517FD36readRegister16Assume_SPI_transactionEj
	movw r28,r24
/* #APP */
 ;  1156 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD14readRegister16Ej, .-_ZN10ACAN2517FD14readRegister16Ej
	.section	.text._ZN10ACAN2517FD15writeRegister32Ejm,"ax",@progbits
.global	_ZN10ACAN2517FD15writeRegister32Ejm
	.type	_ZN10ACAN2517FD15writeRegister32Ejm, @function
_ZN10ACAN2517FD15writeRegister32Ejm:
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
	movw r28,r24
	movw r16,r22
	movw r12,r18
	movw r14,r20
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1169 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r20,r14
	movw r18,r12
	movw r22,r16
	movw r24,r28
	call _ZN10ACAN2517FD37writeRegister32Assume_SPI_transactionEjm
/* #APP */
 ;  1175 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN10ACAN2517FD15writeRegister32Ejm, .-_ZN10ACAN2517FD15writeRegister32Ejm
	.section	.text._ZN10ACAN2517FD14readRegister32Ej,"ax",@progbits
.global	_ZN10ACAN2517FD14readRegister32Ej
	.type	_ZN10ACAN2517FD14readRegister32Ej, @function
_ZN10ACAN2517FD14readRegister32Ej:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	movw r14,r22
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1187 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r22,r14
	movw r24,r28
	call _ZN10ACAN2517FD36readRegister32Assume_SPI_transactionEj
	movw r12,r22
	movw r14,r24
/* #APP */
 ;  1193 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call _ZN8SPIClass14endTransactionEv
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN10ACAN2517FD14readRegister32Ej, .-_ZN10ACAN2517FD14readRegister32Ej
	.section	.text._ZN10ACAN2517FD20currentOperationModeEv,"ax",@progbits
.global	_ZN10ACAN2517FD20currentOperationModeEv
	.type	_ZN10ACAN2517FD20currentOperationModeEv, @function
_ZN10ACAN2517FD20currentOperationModeEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(2)
	ldi r23,0
	call _ZN10ACAN2517FD13readRegister8Ej
	swap r24
	lsr r24
	andi r24,lo8(7)
/* epilogue start */
	ret
	.size	_ZN10ACAN2517FD20currentOperationModeEv, .-_ZN10ACAN2517FD20currentOperationModeEv
	.section	.text._ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv,"ax",@progbits
.global	_ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv
	.type	_ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv, @function
_ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv:
	push r12
	push r13
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	call _ZN10ACAN2517FD20currentOperationModeEv
	ldi r17,0
	cpi r24,lo8(7)
	brne .L249
	ldd r20,Y+15
	ldi r22,lo8(3)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD14writeRegister8Ejh
	call millis
	movw r12,r22
	movw r14,r24
.L252:
	ldi r22,lo8(2)
	ldi r23,0
	movw r24,r28
	call _ZN10ACAN2517FD13readRegister8Ej
	ldi r25,0
	ldi r18,5
	1:
	asr r25
	ror r24
	dec r18
	brne 1b
	ldd r18,Y+15
	andi r18,lo8(7)
	ldi r19,0
	ldi r17,lo8(1)
	cp r24,r18
	cpc r25,r19
	breq .L251
	ldi r17,0
.L251:
	cp r24,r18
	cpc r25,r19
	breq .L249
	call millis
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cpi r22,11
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L252
.L249:
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv, .-_ZN10ACAN2517FD34recoverFromRestrictedOperationModeEv
	.section	.text._ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE,"ax",@progbits
.global	_ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE
	.type	_ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE, @function
_ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r22
	ldi r22,lo8(3)
	ldi r23,0
	jmp _ZN10ACAN2517FD14writeRegister8Ejh
	.size	_ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE, .-_ZN10ACAN2517FD16setOperationModeEN18ACAN2517FDSettings13OperationModeE
	.section	.text._ZN10ACAN2517FD11reset2517FDEv,"ax",@progbits
.global	_ZN10ACAN2517FD11reset2517FDEv
	.type	_ZN10ACAN2517FD11reset2517FDEv, @function
_ZN10ACAN2517FD11reset2517FDEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN8SPIClass16beginTransactionE11SPISettings
/* #APP */
 ;  1249 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r24,r28
	call _ZN10ACAN2517FD8assertCSEv
	ldi r25,0
	ldi r24,0
	call _ZN8SPIClass10transfer16Ej
	movw r24,r28
	call _ZN10ACAN2517FD10deassertCSEv
/* #APP */
 ;  1257 "C:\Users\hongkerous2619\Documents\GitHub\test\L5. CAN-FD\05.transmission_time_canfd\CANFD_SEND\lib\ACAN2517FD\ACAN2517FD.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r29
	pop r28
	jmp _ZN8SPIClass14endTransactionEv
	.size	_ZN10ACAN2517FD11reset2517FDEv, .-_ZN10ACAN2517FD11reset2517FDEv
	.section	.text._ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters,"ax",@progbits
.global	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters
	.type	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters, @function
_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters:
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
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 21 */
.L__stack_usage = 21
	std Y+3,r25
	std Y+2,r24
	movw r16,r22
	movw r4,r20
	movw r6,r18
	movw r26,r22
	adiw r26,19
	ld r24,X
	ldi r21,lo8(4)
	mov r12,r21
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	tst r24
	breq .L258
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L258:
	movw r24,r16
	call _ZNK18ACAN2517FDSettings24CANBitSettingConsistencyEv
	or r22,r23
	or r22,r24
	or r22,r25
	breq .L259
	set
	bld r12,3
.L259:
	ldd r30,Y+2
	ldd r31,Y+3
	ldd r24,Z+7
	cpi r24,lo8(2)
	brne .+2
	rjmp .L310
	cpi r24,lo8(3)
	breq .+2
	rjmp .L351
	ldi r30,lo8(1)
	std Y+1,r30
	rjmp .L260
.L307:
	set
	bld r14,3
	ldi r31,lo8(-1)
	std Y+1,r31
	rjmp .L262
.L265:
	cpi r24,lo8(33)
	brsh .+2
	rjmp .L266
	set
	bld r13,1
	rjmp .L266
.L267:
	cpi r24,lo8(33)
	brsh .+2
	rjmp .L268
	set
	bld r13,3
	rjmp .L268
.L273:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L278
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,7
	ld r24,X
	cpi r24,lo8(-1)
	breq .L275
	ldi r22,lo8(2)
	call pinMode
.L275:
	ldd r30,Y+2
	ldd r31,Y+3
	ldd r24,Z+6
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  221 "../lib/ACAN2517FD/ACAN2517FD.h" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  221 "../lib/ACAN2517FD/ACAN2517FD.h" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,53+1
	st X,r21
	st -X,r20
	sbiw r26,53
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  222 "../lib/ACAN2517FD/ACAN2517FD.h" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	adiw r26,55
	st X,r30
	ldi r22,lo8(1)
	call pinMode
	ldi r24,lo8(82)
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+2,r24
	ldi r24,lo8(1)
	std Z+3,r24
	call millis
	movw r8,r22
	movw r10,r24
.L277:
	ldi r20,lo8(12)
	ldi r22,lo8(3)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	ldi r22,lo8(2)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD13readRegister8Ej
	ldi r25,0
	ldi r18,5
	1:
	asr r25
	ror r24
	dec r18
	brne 1b
	cpi r24,lo8(4)
	breq .L276
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,3
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L277
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
.L276:
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD11reset2517FDEv
	ldi r26,lo8(32)
	mov r2,r26
	mov r3,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	inc r8
.L280:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L278
	movw r20,r10
	movw r18,r8
	ldi r22,0
	ldi r23,lo8(4)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	ldi r22,0
	ldi r23,lo8(4)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14readRegister32Ej
	cp r22,r8
	cpc r23,r9
	cpc r24,r10
	cpc r25,r11
	breq .L279
	ldi r31,lo8(2)
	mov r12,r31
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L279:
	lsl r8
	rol r9
	rol r10
	rol r11
	ldi r31,1
	sub r2,r31
	sbc r3,__zero_reg__
	brne .L280
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L278
	movw r26,r16
	ld r24,X
	subi r24,lo8(-(-1))
	ldi r20,0
	mov r11,__zero_reg__
	cpi r24,lo8(7)
	brsh .L281
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(CSWTCH.137))
	sbci r31,hi8(-(CSWTCH.137))
	ld r11,Z
	subi r24,lo8(-(CSWTCH.138))
	sbci r25,hi8(-(CSWTCH.138))
	movw r30,r24
	ld r20,Z
.L281:
	or r20,r11
	movw r26,r16
	adiw r26,24
	ld r24,X
	cpi r24,lo8(4)
	breq .L282
	ldi r27,lo8(32)
	mul r24,r27
	movw r24,r0
	clr __zero_reg__
	or r20,r24
.L282:
	ldi r22,0
	ldi r23,lo8(14)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	tst r11
	brne .+2
	rjmp .L278
	call millis
	movw r8,r22
	movw r10,r24
.L284:
	ldi r22,lo8(1)
	ldi r23,lo8(14)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD13readRegister8Ej
	mov r2,r24
	com r2
	mov r30,r2
	andi r30,lo8(1)
	mov r2,r30
	sbrc r24,0
	rjmp .L286
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,3
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L286
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	ldi r23,lo8(2)
	mov r14,r23
	mov r15,__zero_reg__
	rjmp .L278
.L286:
	cpse r2,__zero_reg__
	rjmp .L284
	rjmp .L278
.L315:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(2)
	rjmp .L297
.L300:
	ldi r20,lo8(3)
	ldi r22,lo8(30)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	ldi r20,lo8(4)
	ldi r22,lo8(31)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r26,r16
	adiw r26,13
	ld r8,X+
	ld r9,X
	ldi r27,1
	sub r8,r27
	sbc r9,__zero_reg__
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	mov r11,r10
	mov r10,r9
	mov r9,r8
	clr r8
	movw r30,r16
	ldd r24,Z+15
	ldd r25,Z+16
	sbiw r24,1
	ldi r27,0
	ldi r26,0
	or r8,r24
	or r9,r25
	or r10,r26
	or r11,r27
	mov r11,r10
	mov r10,r9
	mov r9,r8
	clr r8
	ldd r24,Z+17
	subi r24,1
	sbc r25,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	movw r18,r24
	movw r20,r26
	or r18,r8
	or r19,r9
	or r20,r10
	or r21,r11
	mov r21,r20
	mov r20,r19
	mov r19,r18
	clr r18
	ldd r24,Z+18
	subi r24,1
	sbc r25,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r18,r24
	or r19,r25
	or r20,r26
	or r21,r27
	ldi r22,lo8(4)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	movw r26,r16
	adiw r26,9
	ld r24,X
	ldi r25,lo8(1)
	cpi r24,lo8(1)
	brne .L302
	ldi r25,0
.L302:
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+11,r25
	cpi r24,lo8(1)
	brne .+2
	rjmp .L303
	movw r26,r16
	adiw r26,13
	ld r8,X+
	ld r9,X
	ldi r27,1
	sub r8,r27
	sbc r9,__zero_reg__
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	mov r11,r10
	mov r10,r9
	mov r9,r8
	clr r8
	movw r30,r16
	ldd r24,Z+10
	subi r24,1
	sbc r25,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r8,r24
	or r9,r25
	or r10,r26
	or r11,r27
	mov r11,r10
	mov r10,r9
	mov r9,r8
	clr r8
	ldd r24,Z+11
	subi r24,1
	sbc r25,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	movw r18,r24
	movw r20,r26
	or r18,r8
	or r19,r9
	or r20,r10
	or r21,r11
	mov r21,r20
	mov r20,r19
	mov r19,r18
	clr r18
	ldd r24,Z+12
	subi r24,1
	sbc r25,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r18,r24
	or r19,r25
	or r20,r26
	or r21,r27
	ldi r22,lo8(8)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
.L303:
	movw r26,r16
	adiw r26,25
	ld r20,X
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+15,r20
	ldi r22,lo8(3)
	ldi r23,0
	movw r24,r30
	call _ZN10ACAN2517FD14writeRegister8Ejh
	call millis
	movw r8,r22
	movw r10,r24
.L305:
	ldi r22,lo8(2)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD13readRegister8Ej
	swap r24
	lsr r24
	andi r24,lo8(7)
	movw r26,r16
	adiw r26,25
	ld r25,X
	cp r24,r25
	breq .L304
	call millis
	sub r22,r8
	sbc r23,r9
	sbc r24,r10
	sbc r25,r11
	cpi r22,11
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L305
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r14
.L304:
	ldd r30,Y+2
	ldd r31,Y+3
	ldd r24,Z+7
	cpi r24,lo8(-1)
	breq .L306
	ldi r21,0
	ldi r20,0
	movw r22,r4
	ldd r24,Y+1
	call attachInterrupt
	ldd r24,Y+1
	call _ZN8SPIClass14usingInterruptEh
.L306:
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,9
	st X,__zero_reg__
	sbiw r26,9
	adiw r26,16
	st X,__zero_reg__
.L257:
	movw r24,r14
	movw r22,r12
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
.L351:
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L317
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	breq .+2
	rjmp .L307
	ldi r27,lo8(-1)
	std Y+1,r27
	rjmp .L262
.L310:
	std Y+1,__zero_reg__
.L260:
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .L262
	set
	bld r12,5
.L262:
	movw r26,r16
	adiw r26,32
	ld r24,X
	cpi r24,lo8(33)
	brlo .L263
	set
	bld r13,7
.L263:
	movw r30,r16
	ldd r24,Z+34
	cpi r24,lo8(32)
	brlo .L264
	set
	bld r13,5
.L264:
	movw r26,r16
	adiw r26,39
	ld r24,X
	cpse r24,__zero_reg__
	rjmp .L265
	set
	bld r13,0
.L266:
	movw r30,r16
	ldd r24,Z+28
	cpse r24,__zero_reg__
	rjmp .L267
	set
	bld r13,2
.L268:
	movw r26,r16
	adiw r26,30
	ld r24,X
	cpi r24,lo8(32)
	brlo .L269
	set
	bld r13,6
.L269:
	movw r24,r16
	call _ZNK18ACAN2517FDSettings8ramUsageEv
	cpi r22,1
	sbci r23,8
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L270
	set
	bld r13,4
.L270:
	movw r30,r6
	ld r24,Z
	cpi r24,lo8(33)
	brlo .L271
	set
	bld r12,7
.L271:
	movw r26,r6
	adiw r26,5
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .L272
	set
	bld r12,6
.L272:
	movw r30,r16
	ldd r24,Z+20
	subi r24,lo8(-(64))
	sbrs r24,7
	rjmp .L273
	set
	bld r14,4
.L278:
	movw r26,r16
	adiw r26,1
	ld r22,X+
	ld r23,X+
	ld r24,X+
	ld r25,X
	sbiw r26,1+3
	lsl r22
	rol r23
	rol r24
	rol r25
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	mov r8,__zero_reg__
	ldi r22,lo8(18)
	mov r9,r22
	ldi r22,lo8(122)
	mov r10,r22
	mov r11,__zero_reg__
	ldi r24,0
.L288:
	cp r18,r8
	cpc r19,r9
	cpc r20,r10
	cpc r21,r11
	brsh .L287
	lsr r11
	ror r10
	ror r9
	ror r8
	subi r24,lo8(-(1))
	cpi r24,lo8(6)
	brne .L288
	ldi r24,lo8(7)
.L287:
	mov r25,r24
	ori r25,lo8(-96)
	lsr r25
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+2,r25
	com r24
	andi r24,lo8(1)
	std Z+3,r24
	ldi r26,lo8(32)
	mov r2,r26
	mov r3,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	inc r8
.L291:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L257
	movw r20,r10
	movw r18,r8
	ldi r22,0
	ldi r23,lo8(4)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	ldi r22,0
	ldi r23,lo8(4)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14readRegister32Ej
	cp r22,r8
	cpc r23,r9
	cpc r24,r10
	cpc r25,r11
	breq .L290
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	ldi r31,lo8(4)
	mov r14,r31
	mov r15,__zero_reg__
.L290:
	lsl r8
	rol r9
	rol r10
	rol r11
	ldi r31,1
	sub r2,r31
	sbc r3,__zero_reg__
	brne .L291
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L257
	movw r26,r16
	adiw r26,26
	ld r20,X+
	ld r21,X
	ldi r23,0
	ldi r22,0
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,35
	call _ZN12ACANFDBuffer12initWithSizeEm
	movw r30,r16
	ldd r20,Z+36
	ldd r21,Z+37
	ldi r23,0
	ldi r22,0
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,17
	call _ZN12ACANFDBuffer12initWithSizeEm
	mov r10,__zero_reg__
	ldi r23,lo8(4)
	mov r11,r23
.L292:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r22,r10
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	ldi r31,4
	add r10,r31
	adc r11,__zero_reg__
	cp r10,__zero_reg__
	ldi r18,12
	cpc r11,r18
	brne .L292
	movw r26,r16
	adiw r26,24
	ld r24,X
	ldi r20,lo8(35)
	cpi r24,lo8(4)
	breq .L293
	ldi r20,lo8(3)
.L293:
	movw r30,r16
	ldd r24,Z+21
	cpse r24,__zero_reg__
	ori r20,lo8(16)
.L294:
	movw r26,r16
	adiw r26,22
	ld r24,X
	cpse r24,__zero_reg__
	ori r20,lo8(64)
.L295:
	ldi r22,lo8(7)
	ldi r23,lo8(14)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r30,r16
	ldd r24,Z+23
	ldi r20,lo8(96)
	cpse r24,__zero_reg__
	rjmp .L296
	ldi r20,lo8(64)
.L296:
	ldi r23,0
	ldi r22,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r26,r16
	adiw r26,20
	ld r18,X
	tst r18
	brne .+2
	rjmp .L315
	andi r18,lo8(127)
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	sbc r20,r20
	sbc r21,r21
	mov r21,r20
	mov r20,r19
	mov r19,r18
	clr r18
	ori r20,2
	ori r21,2
.L297:
	ldi r22,lo8(12)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	movw r30,r16
	ldd r20,Z+35
	swap r20
	lsl r20
	andi r20,lo8(-32)
	ldd r24,Z+34
	or r20,r24
	ldi r22,lo8(82)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r26,r16
	adiw r26,32
	ld r24,X
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L298
	ldi r25,0
.L298:
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+8,r25
	movw r26,r16
	adiw r26,33
	ld r20,X
	ldi r27,lo8(32)
	mul r20,r27
	movw r20,r0
	clr __zero_reg__
	subi r24,lo8(-(-1))
	or r20,r24
	ldi r22,lo8(83)
	ldi r23,0
	movw r24,r30
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r30,r16
	ldd r24,Z+33
	call _ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,13
	st X,r22
	sbiw r26,13
	adiw r26,8
	ld r24,X
	ldi r20,0
	cpse r24,__zero_reg__
	ldi r20,lo8(16)
.L299:
	ori r20,lo8(1)
	ldi r22,lo8(2)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r30,r16
	ldd r20,Z+38
	ldi r31,lo8(32)
	mul r20,r31
	movw r24,r0
	clr __zero_reg__
	movw r26,r16
	adiw r26,39
	ld r20,X
	subi r20,lo8(-(-1))
	or r20,r24
	ldi r22,lo8(95)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	ldi r20,lo8(9)
	ldi r22,lo8(92)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r30,r16
	ldd r24,Z+38
	call _ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,14
	st X,r22
	sbiw r26,14
	movw r30,r16
	ldd r20,Z+31
	swap r20
	lsl r20
	andi r20,lo8(-32)
	ldd r24,Z+30
	or r20,r24
	ldi r22,lo8(106)
	ldi r23,0
	movw r24,r26
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r26,r16
	adiw r26,29
	ld r20,X
	ldi r27,lo8(32)
	mul r20,r27
	movw r24,r0
	clr __zero_reg__
	movw r30,r16
	ldd r20,Z+28
	subi r20,lo8(-(-1))
	or r20,r24
	ldi r22,lo8(107)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	ldi r20,lo8(-112)
	ldi r22,lo8(104)
	ldi r23,0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r26,r16
	adiw r26,29
	ld r24,X
	call _ZN18ACAN2517FDSettings20objectSizeForPayloadENS_11PayloadSizeE
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+12,r22
	movw r26,r6
	adiw r26,1
	ld r10,X+
	ld r11,X
	sbiw r26,1+1
	ld r24,X
	ldi r25,0
	lsl r24
	rol r25
	call _Znaj
	ldd r30,Y+2
	ldd r31,Y+3
	std Z+1,r25
	st Z,r24
	mov r2,__zero_reg__
.L301:
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L300
	movw r26,r10
	adiw r26,10
	ld r20,X+
	ld r21,X
	mov r8,r2
	mov r9,__zero_reg__
	movw r18,r8
	lsl r18
	rol r19
	ldd r30,Y+2
	ldd r31,Y+3
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	movw r26,r24
	st X+,r20
	st X,r21
	movw r6,r8
	ldi r25,3
	1:
	lsl r6
	rol r7
	dec r25
	brne 1b
	movw r30,r10
	ldd r18,Z+2
	ldd r19,Z+3
	ldd r20,Z+4
	ldd r21,Z+5
	movw r22,r6
	subi r22,12
	sbci r23,-2
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	movw r26,r10
	adiw r26,6
	ld r18,X+
	ld r19,X+
	ld r20,X+
	ld r21,X
	sbiw r26,6+3
	movw r22,r6
	subi r22,16
	sbci r23,-2
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD15writeRegister32Ejm
	movw r22,r8
	subi r22,48
	sbci r23,-2
	ldi r20,lo8(-127)
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN10ACAN2517FD14writeRegister8Ejh
	movw r30,r10
	ld r10,Z
	ldd r11,Z+1
	inc r2
	rjmp .L301
.L317:
	ldi r31,lo8(-1)
	std Y+1,r31
	ldi r24,lo8(16)
	mov r12,r24
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L260
	.size	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters, .-_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters
	.section	.text._ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE,"ax",@progbits
.global	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE
	.type	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE, @function
_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE:
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
/* stack size = 16 */
.L__stack_usage = 16
	movw r16,r24
	movw r14,r22
	movw r12,r20
	std Y+1,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	std Y+8,__zero_reg__
	ldi r24,lo8(12)
	ldi r25,0
	call _Znwj
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	std Z+8,__zero_reg__
	std Z+9,__zero_reg__
	std Z+11,__zero_reg__
	std Z+10,__zero_reg__
	ldd r24,Y+2
	ldd r25,Y+3
	or r24,r25
	brne .L353
	std Y+3,r31
	std Y+2,r30
.L354:
	std Y+5,r31
	std Y+4,r30
	ldd r24,Y+1
	subi r24,lo8(-(1))
	std Y+1,r24
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r20,r12
	movw r22,r14
	movw r24,r16
	call _ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvERK17ACAN2517FDFilters
	movw r12,r22
	movw r14,r24
.L356:
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,0
	breq .L352
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	call _ZdlPv
	std Y+3,r17
	std Y+2,r16
	rjmp .L356
.L353:
	ldd r26,Y+4
	ldd r27,Y+5
	st X+,r30
	st X,r31
	rjmp .L354
.L352:
	movw r24,r14
	movw r22,r12
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
	ret
	.size	_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE, .-_ZN10ACAN2517FD5beginERK18ACAN2517FDSettingsPFvvE
	.section	.text._ZN10ACAN2517FD35performSleepModeToConfigurationModeEv,"ax",@progbits
.global	_ZN10ACAN2517FD35performSleepModeToConfigurationModeEv
	.type	_ZN10ACAN2517FD35performSleepModeToConfigurationModeEv, @function
_ZN10ACAN2517FD35performSleepModeToConfigurationModeEv:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ldi r22,0
	ldi r23,lo8(14)
	call _ZN10ACAN2517FD13readRegister8Ej
	ldi r17,lo8(1)
	sbrc r24,2
	rjmp .L366
	ldi r17,0
.L357:
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
.L366:
	mov r20,r24
	andi r20,lo8(-5)
	ldi r22,0
	ldi r23,lo8(14)
	movw r24,r28
	call _ZN10ACAN2517FD14writeRegister8Ejh
.L360:
	ldi r22,lo8(1)
	ldi r23,lo8(14)
	movw r24,r28
	call _ZN10ACAN2517FD13readRegister8Ej
	sbrs r24,2
	rjmp .L360
	rjmp .L357
	.size	_ZN10ACAN2517FD35performSleepModeToConfigurationModeEv, .-_ZN10ACAN2517FD35performSleepModeToConfigurationModeEv
	.section	.text._ZN10ACAN2517FD13errorCountersEv,"ax",@progbits
.global	_ZN10ACAN2517FD13errorCountersEv
	.type	_ZN10ACAN2517FD13errorCountersEv, @function
_ZN10ACAN2517FD13errorCountersEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(52)
	ldi r23,0
	jmp _ZN10ACAN2517FD14readRegister32Ej
	.size	_ZN10ACAN2517FD13errorCountersEv, .-_ZN10ACAN2517FD13errorCountersEv
	.section	.text._ZN10ACAN2517FD9diagInfosEi,"ax",@progbits
.global	_ZN10ACAN2517FD9diagInfosEi
	.type	_ZN10ACAN2517FD9diagInfosEi, @function
_ZN10ACAN2517FD9diagInfosEi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	or r22,r23
	brne .L370
	ldi r22,lo8(56)
	ldi r23,0
.L369:
	jmp _ZN10ACAN2517FD14readRegister32Ej
.L370:
	ldi r22,lo8(60)
	ldi r23,0
	rjmp .L369
	.size	_ZN10ACAN2517FD9diagInfosEi, .-_ZN10ACAN2517FD9diagInfosEi
	.section	.text._ZN10ACAN2517FD11gpioSetModeEhh,"ax",@progbits
.global	_ZN10ACAN2517FD11gpioSetModeEhh
	.type	_ZN10ACAN2517FD11gpioSetModeEhh, @function
_ZN10ACAN2517FD11gpioSetModeEhh:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	cpi r22,lo8(2)
	brsh .L371
	mov r29,r20
	mov r28,r22
	movw r16,r24
	ldi r22,lo8(4)
	ldi r23,lo8(14)
	call _ZN10ACAN2517FD13readRegister8Ej
	cpse r29,__zero_reg__
	rjmp .L373
	ldi r18,lo8(1)
	ldi r19,0
	mov r0,r28
	rjmp 2f
	1:
	lsl r18
	2:
	dec r0
	brpl 1b
	or r24,r18
.L377:
	cpse r28,__zero_reg__
	rjmp .L374
	andi r24,lo8(3)
.L374:
	mov r20,r24
	ldi r22,lo8(4)
	ldi r23,lo8(14)
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZN10ACAN2517FD14writeRegister8Ejh
.L373:
	cpi r29,lo8(1)
	brne .L374
	ldi r18,lo8(1)
	ldi r19,0
	mov r0,r28
	rjmp 2f
	1:
	lsl r18
	2:
	dec r0
	brpl 1b
	com r18
	and r24,r18
	rjmp .L377
.L371:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD11gpioSetModeEhh, .-_ZN10ACAN2517FD11gpioSetModeEhh
	.section	.text._ZN10ACAN2517FD9gpioWriteEhh,"ax",@progbits
.global	_ZN10ACAN2517FD9gpioWriteEhh
	.type	_ZN10ACAN2517FD9gpioWriteEhh, @function
_ZN10ACAN2517FD9gpioWriteEhh:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	cpi r22,lo8(2)
	brsh .L378
	mov r16,r20
	mov r17,r22
	movw r28,r24
	ldi r22,lo8(5)
	ldi r23,lo8(14)
	call _ZN10ACAN2517FD13readRegister8Ej
	ldi r18,lo8(1)
	ldi r19,0
	rjmp 2f
	1:
	lsl r18
	2:
	dec r17
	brpl 1b
	cpse r16,__zero_reg__
	rjmp .L380
	com r18
	and r18,r24
.L381:
	mov r20,r18
	ldi r22,lo8(5)
	ldi r23,lo8(14)
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZN10ACAN2517FD14writeRegister8Ejh
.L380:
	or r18,r24
	rjmp .L381
.L378:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN10ACAN2517FD9gpioWriteEhh, .-_ZN10ACAN2517FD9gpioWriteEhh
	.section	.text._ZN10ACAN2517FD8gpioReadEh,"ax",@progbits
.global	_ZN10ACAN2517FD8gpioReadEh
	.type	_ZN10ACAN2517FD8gpioReadEh, @function
_ZN10ACAN2517FD8gpioReadEh:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22
	ldi r22,lo8(6)
	ldi r23,lo8(14)
	call _ZN10ACAN2517FD13readRegister8Ej
	ldi r25,0
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r28
	brpl 1b
	andi r24,lo8(1)
/* epilogue start */
	pop r28
	ret
	.size	_ZN10ACAN2517FD8gpioReadEh, .-_ZN10ACAN2517FD8gpioReadEh
	.section	.text._ZN10ACAN2517FD21configureGPIO0AsXSTBYEv,"ax",@progbits
.global	_ZN10ACAN2517FD21configureGPIO0AsXSTBYEv
	.type	_ZN10ACAN2517FD21configureGPIO0AsXSTBYEv, @function
_ZN10ACAN2517FD21configureGPIO0AsXSTBYEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldi r22,lo8(4)
	ldi r23,lo8(14)
	call _ZN10ACAN2517FD13readRegister8Ej
	mov r20,r24
	ori r20,lo8(64)
	ldi r22,lo8(4)
	ldi r23,lo8(14)
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	jmp _ZN10ACAN2517FD14writeRegister8Ejh
	.size	_ZN10ACAN2517FD21configureGPIO0AsXSTBYEv, .-_ZN10ACAN2517FD21configureGPIO0AsXSTBYEv
	.section	.rodata.CSWTCH.138,"a",@progbits
	.type	CSWTCH.138, @object
	.size	CSWTCH.138, 7
CSWTCH.138:
	.byte	16
	.byte	0
	.byte	16
	.byte	0
	.byte	16
	.byte	0
	.byte	16
	.section	.rodata.CSWTCH.137,"a",@progbits
	.type	CSWTCH.137, @object
	.size	CSWTCH.137, 7
CSWTCH.137:
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZZN10ACAN2517FD16receiveInterruptEvE7kLength,"a",@progbits
	.type	_ZZN10ACAN2517FD16receiveInterruptEvE7kLength, @object
	.size	_ZZN10ACAN2517FD16receiveInterruptEvE7kLength, 16
_ZZN10ACAN2517FD16receiveInterruptEvE7kLength:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	12
	.byte	16
	.byte	20
	.byte	24
	.byte	32
	.byte	48
	.byte	64
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
