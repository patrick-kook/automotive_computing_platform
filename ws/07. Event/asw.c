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
	// Write the code below.
	EventMaskType mask;
	printfSerial("Task2 Begins...");
	printfSerial("Task2 Waits...");
	// Write the codre below.
	WaitEvent(Event1 | Event2);

	printfSerial("Task2 Wakes Up...");
	// Write the code below.
	GetEvent(Task2, &mask);
	if(mask & Event1) {
		// Write the code below.
		printfSerial("[Event1]");
		ClearEvent(Event1);
	}
	if (mask & Event2) {
		// Write the code below.
		printfSerial("[Event2]");
		ClearEvent(Event2);
	}
	printfSerial("Task2 Finishes...");

	TerminateTask();
}
ISR2(TimerISR)
{
	static long c = -4;
    if (c == 0) {
        // Write the code below.
		ActivateTask(Task1);
    }
	printfSerial("\n%4ld: ", c++);
}

ISR2(ButtonISR)
{
	int a0;
	DisableAllInterrupts();
	if ((PINC & 0x01) != 0) return;
	printfSerial("<BUTTON ISR>");
	a0 = analogRead(A0); // read ADC value
	if (a0 < 50) { // UP
		// Write the code below.
		SetEvent(Task2, Event1);
	} 
	else if (a0 < 200) { // DOWN
		// Write the code below.
		SetEvent(Task2, Event2);
	} 
	else if (a0 < 380) { // LEFT
		;
	} 
	else if (a0 < 520) { // RIGHT
		;
	}

	EnableAllInterrupts();
}
