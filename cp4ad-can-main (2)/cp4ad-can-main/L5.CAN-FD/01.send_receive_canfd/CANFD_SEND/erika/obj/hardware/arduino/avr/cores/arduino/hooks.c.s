	.file	"hooks.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.__empty,"ax",@progbits
	.type	__empty, @function
__empty:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	__empty, .-__empty
	.weak	yield
	.set	yield,__empty
	.ident	"GCC: (GNU) 7.3.0"
