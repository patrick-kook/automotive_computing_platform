#include "bsw.h"

TASK(Task1)
{
	printfSerial("Task1 Begins...");
	mdelay(3000);
	printfSerial("Hyunsu Byunsin");
	// ActivateTask(Task2);
	// mdelay(3000);
	printfSerial("Task1 Finishes...");

	TerminateTask();
}

TASK(Task2)
{
	printfSerial("Task2 Begins...");
	mdelay(3000);
	printfSerial("Task2 Finishes...");

	TerminateTask();
}
ISR2(TimerISR)
{
	static long c = -4;
	printfSerial("\n%4ld: ", c++);
}

ISR2(ButtonISR)
{
	int a0;
	DisableAllInterrupts();
	if ((PINC & 0x01) != 0) return;
   	printfSerial("<BUTTON ISR>");
	a0 = analogRead(A0); // read ADC value
	// Write the code below.
	if (a0 < 50) { //UP
		ActivateTask(Task1);
	} else if (a0 < 200) { //DOWN
		ActivateTask(Task2);
	} else if (a0 < 200) { //LEFT
		;
	} else if (a0 < 200) { //RIGHT
		;
	} 
	EnableAllInterrupts();
}
