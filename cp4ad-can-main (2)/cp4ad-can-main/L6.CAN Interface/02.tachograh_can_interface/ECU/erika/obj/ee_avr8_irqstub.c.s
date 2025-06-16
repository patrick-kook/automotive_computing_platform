	.file	"ee_avr8_irqstub.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.osEE_avr8_isr1_stub,"ax",@progbits
.global	osEE_avr8_isr1_stub
	.type	osEE_avr8_isr1_stub, @function
osEE_avr8_isr1_stub:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  70 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
 ;  110 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	icall
/* #APP */
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
 ;  82 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	osEE_avr8_isr1_stub, .-osEE_avr8_isr1_stub
	.section	.text.osEE_avr8_isr2_stub,"ax",@progbits
.global	osEE_avr8_isr2_stub
	.type	osEE_avr8_isr2_stub, @function
osEE_avr8_isr2_stub:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  92 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
/* #NOAPP */
	call osEE_activate_isr2
/* #APP */
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
 ;  104 "C:\Users\HONGKE~1\DOCUME~1\GitHub\L6B38F~1.CAN\INTERF~1\CAN_SEND\erika\src\ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	osEE_avr8_isr2_stub, .-osEE_avr8_isr2_stub
	.ident	"GCC: (GNU) 7.3.0"
