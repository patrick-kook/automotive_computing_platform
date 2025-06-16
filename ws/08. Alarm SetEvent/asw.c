#include "bsw.h"

TASK(Task1)
{
	printfSerial("Task1 Begins...");
	mdelay(3000);
	ActivateTask(Task2);
	mdelay(3000);
	printfSerial("Task1 Finishes...");

	TerminateTask();
}

TASK(Task2)
{
	EventMaskType mask;
	printfSerial("Task2 Begins...");
	printfSerial("Task2 Waits...");
	WaitEvent(Event1);
	printfSerial("Task2 Wakes Up...");
	GetEvent(Task2, &mask);
	if(mask & Event1) {
		printfSerial("[Event1]");
		ClearEvent(Event1);
	}
	printfSerial("Task2 Finishes...");

	TerminateTask();
}

ISR2(TimerISR)
{
	static long c = -4;
    if (c == 0) {
        ActivateTask(Task1);
    }
    //Write the code below.
	IncrementCounter(counter1);
	printfSerial("\n%4ld: ", c++);
}

