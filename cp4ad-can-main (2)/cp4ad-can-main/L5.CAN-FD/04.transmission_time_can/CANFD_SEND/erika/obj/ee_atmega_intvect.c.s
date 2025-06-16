	.file	"ee_atmega_intvect.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.__vector_default,"ax",@progbits
.global	__vector_default
	.type	__vector_default, @function
__vector_default:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  61 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	.global tag___vector_default
tag___vector_default:

 ;  0 "" 2
 ;  61 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L2:
	rjmp .L2
	.size	__vector_default, .-__vector_default
	.section	.text.osEE_atmega_intvect,"ax",@progbits
.global	osEE_atmega_intvect
	.type	osEE_atmega_intvect, @function
osEE_atmega_intvect:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  65 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	.global tag___vector_default
 ldi r30, lo8(tag___vector_default)

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	osEE_atmega_intvect, .-osEE_atmega_intvect
	.section	.text.__vector_11,"ax",@progbits
.global	__vector_11
	.type	__vector_11, @function
__vector_11:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	.global tag___vector_11
tag___vector_11:

 ;  0 "" 2
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	push r24

 ;  0 "" 2
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	push r25

 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	call osEE_avr8_isr2_stub
/* #APP */
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	pop r25

 ;  0 "" 2
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	pop r24

 ;  0 "" 2
 ;  463 "C:\Users\HONGKE~1\DOCUME~1\GitHub\CP4AD-~1\L4CAN\03B18F~1.TRA\CANFD_~2\erika\src\ee_atmega_intvect.c" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_11, .-__vector_11
	.ident	"GCC: (GNU) 7.3.0"
