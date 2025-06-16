#include "bsw.h"

TASK(Task1)
{
	printfSerial("Task1 Begins...");
	mdelay(3000);
	// Write the code below.
	ActivateTask(Task2);
	mdelay(3000);
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
	// Write the code below.
	if (c == 0)
		ActivateTask(Task1);	
	printfSerial("\n%4ld: ", c++);
}
