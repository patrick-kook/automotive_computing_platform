	.file	"ee_avr8_utils.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_avr8_WriteCCPReg,"ax",@progbits
.global	osEE_avr8_WriteCCPReg
	.type	osEE_avr8_WriteCCPReg, @function
osEE_avr8_WriteCCPReg:
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
/* #APP */
 ;  87 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4.CAN\064518~1.ERR\CAN_SEND\erika\src\ee_avr8_utils.c" 1
	movw r30,  r24
	ldi  r16,  216
	out   52, r16
	st     Z,  r22
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r16
	ret
	.size	osEE_avr8_WriteCCPReg, .-osEE_avr8_WriteCCPReg
	.ident	"GCC: (GNU) 7.3.0"
