	.file	"asw.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.TimerISR,"ax",@progbits
.global	TimerISR
	.type	TimerISR, @function
TimerISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	jmp IncrementCounter
	.size	TimerISR, .-TimerISR
	.section	.rodata.FuncTASK_readADC.str1.1,"aMS",@progbits,1
.LC0:
	.string	"throttle_adc : %hu "
.LC1:
	.string	"lidar_adc : %hu "
.LC2:
	.string	"CAM: %hu "
.LC3:
	.string	"\n"
	.section	.text.FuncTASK_readADC,"ax",@progbits
.global	FuncTASK_readADC
	.type	FuncTASK_readADC, @function
FuncTASK_readADC:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(15)
	call analogRead
	sts throttle_adc+1,r25
	sts throttle_adc,r24
	ldi r24,lo8(16)
	call analogRead
	sts lidar_adc+1,r25
	sts lidar_adc,r24
	lds r24,throttle_adc+1
	push r24
	lds r24,throttle_adc
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	lds r24,lidar_adc+1
	push r24
	lds r24,lidar_adc
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	lds r24,camera_adc+1
	push r24
	lds r24,camera_adc
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
	adiw r24,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	jmp TerminateTask
	.size	FuncTASK_readADC, .-FuncTASK_readADC
	.section	.rodata.ButtonISR.str1.1,"aMS",@progbits,1
.LC4:
	.string	"<BUTTON ISR>"
	.section	.text.ButtonISR,"ax",@progbits
.global	ButtonISR
	.type	ButtonISR, @function
ButtonISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call DisableAllInterrupts
	sbic 0x6,0
	rjmp .L3
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	ldi r24,lo8(14)
	call analogRead
	sts camera_adc+1,r25
	sts camera_adc,r24
	pop __tmp_reg__
	pop __tmp_reg__
	jmp EnableAllInterrupts
.L3:
/* epilogue start */
	ret
	.size	ButtonISR, .-ButtonISR
	.comm	camera_adc,2,1
	.comm	lidar_adc,2,1
	.comm	throttle_adc,2,1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
