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
	.section	.rodata.FuncTask1.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Task1 Begins...\n"
.LC1:
	.string	"Added 1000000 to shared\n"
.LC2:
	.string	"counter = %lu\n"
.LC3:
	.string	"Task1 Finishes...\n"
	.section	.text.FuncTask1,"ax",@progbits
.global	FuncTask1
	.type	FuncTask1, @function
FuncTask1:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r24,lo8(64)
	mov r12,r24
	ldi r24,lo8(66)
	mov r13,r24
	ldi r24,lo8(15)
	mov r14,r24
	mov r15,__zero_reg__
.L3:
	ldi r24,lo8(1)
	call GetResource
	lds r24,shared
	lds r25,shared+1
	lds r26,shared+2
	lds r27,shared+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts shared,r24
	sts shared+1,r25
	sts shared+2,r26
	sts shared+3,r27
	ldi r24,lo8(1)
	call ReleaseResource
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	brne .L3
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printfSerial
	lds r24,shared
	lds r25,shared+1
	lds r26,shared+2
	lds r27,shared+3
	push r27
	push r26
	push r25
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
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	jmp TerminateTask
	.size	FuncTask1, .-FuncTask1
	.section	.rodata.FuncTask2.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Added 1000 to shared\n"
	.section	.text.FuncTask2,"ax",@progbits
.global	FuncTask2
	.type	FuncTask2, @function
FuncTask2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,i.2386
	lds r25,i.2386+1
	lds r26,i.2386+2
	lds r27,i.2386+3
	cpi r24,-24
	ldi r18,3
	cpc r25,r18
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brsh .L6
	ldi r24,lo8(1)
	call GetResource
	lds r24,shared
	lds r25,shared+1
	lds r26,shared+2
	lds r27,shared+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts shared,r24
	sts shared+1,r25
	sts shared+2,r26
	sts shared+3,r27
	ldi r24,lo8(1)
	call ReleaseResource
.L7:
	lds r24,i.2386
	lds r25,i.2386+1
	lds r26,i.2386+2
	lds r27,i.2386+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts i.2386,r24
	sts i.2386+1,r25
	sts i.2386+2,r26
	sts i.2386+3,r27
	jmp TerminateTask
.L6:
	cpi r24,-24
	sbci r25,3
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L7
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
	push r25
	push r24
	call printfSerial
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L7
	.size	FuncTask2, .-FuncTask2
	.section	.bss.i.2386,"aw",@nobits
	.type	i.2386, @object
	.size	i.2386, 4
i.2386:
	.zero	4
.global	shared
	.section	.bss.shared,"aw",@nobits
	.type	shared, @object
	.size	shared, 4
shared:
	.zero	4
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
