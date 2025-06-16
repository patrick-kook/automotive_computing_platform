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
 ;  61 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\0155F9~1.HEL\erika\src\ee_atmega_intvect.c" 1
	.global tag___vector_default
tag___vector_default:

 ;  0 "" 2
 ;  61 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\0155F9~1.HEL\erika\src\ee_atmega_intvect.c" 1
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
 ;  65 "C:\Users\wjehe\OneDrive\Desktop\AUTOMO~1\ws\0155F9~1.HEL\erika\src\ee_atmega_intvect.c" 1
	.global tag___vector_default
 ldi r30, lo8(tag___vector_default)

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	osEE_atmega_intvect, .-osEE_atmega_intvect
	.ident	"GCC: (GNU) 7.3.0"
