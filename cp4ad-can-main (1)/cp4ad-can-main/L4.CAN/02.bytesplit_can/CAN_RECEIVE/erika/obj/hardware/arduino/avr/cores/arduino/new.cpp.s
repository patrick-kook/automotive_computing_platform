	.file	"new.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text._Znwj,"ax",@progbits
.global	_Znwj
	.type	_Znwj, @function
_Znwj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp malloc
	.size	_Znwj, .-_Znwj
	.section	.text._Znaj,"ax",@progbits
.global	_Znaj
	.type	_Znaj, @function
_Znaj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp malloc
	.size	_Znaj, .-_Znaj
	.section	.text._ZnwjPv,"ax",@progbits
.global	_ZnwjPv
	.type	_ZnwjPv, @function
_ZnwjPv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r24,r22
/* epilogue start */
	ret
	.size	_ZnwjPv, .-_ZnwjPv
	.section	.text._ZdlPv,"ax",@progbits
.global	_ZdlPv
	.type	_ZdlPv, @function
_ZdlPv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp free
	.size	_ZdlPv, .-_ZdlPv
	.section	.text._ZdaPv,"ax",@progbits
.global	_ZdaPv
	.type	_ZdaPv, @function
_ZdaPv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	jmp free
	.size	_ZdaPv, .-_ZdaPv
	.ident	"GCC: (GNU) 7.3.0"
