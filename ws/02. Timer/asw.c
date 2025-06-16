#include "bsw.h"

TASK(Task1)
{
	printfSerial("Hello World\n");

	mdelay(3000);

	printfSerial("Goodbye World\n");
	TerminateTask();
	// Write the code below.
	
}

ISR2(TimerISR)
{
	static long c = 0;
	printfSerial("\n %4ld: ", c++);
}
// Write the code below.

