	.file	"mutex.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.InitMutex,"ax",@progbits
.global	InitMutex
	.type	InitMutex, @function
InitMutex:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+4,__zero_reg__
	std Z+3,r23
	std Z+2,r22
/* epilogue start */
	ret
	.size	InitMutex, .-InitMutex
	.section	.rodata.GetMutex.str1.1,"aMS",@progbits,1
.LC0:
	.string	"  -->  BLock"
	.section	.text.GetMutex,"ax",@progbits
.global	GetMutex
	.type	GetMutex, @function
GetMutex:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,1
	brne .L3
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	movw r24,r28
	adiw r24,4
	call GetTaskID
	ldd r24,Y+2
	ldd r25,Y+3
	call WaitEvent
	pop __tmp_reg__
	pop __tmp_reg__
.L3:
	ldi r24,lo8(1)
	ldi r25,0
	std Y+1,r25
	st Y,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	GetMutex, .-GetMutex
	.section	.text.ReleaseMutex,"ax",@progbits
.global	ReleaseMutex
	.type	ReleaseMutex, @function
ReleaseMutex:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,1
	brne .L4
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ldd r24,Z+4
	tst r24
	breq .L4
	ldd r22,Z+2
	ldd r23,Z+3
	jmp SetEvent
.L4:
/* epilogue start */
	ret
	.size	ReleaseMutex, .-ReleaseMutex
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
