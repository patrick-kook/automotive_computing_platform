#include "bsw.h"
#include "mutex.h"

// Write the code below.
MutexType M1;
MutexType M2;

ISR2(TimerISR)
{
    static long c = -5;
    printfSerial("\n%4ld: ", ++c);
    if(c == 0) {
    	// Write the code below.
		InitMutex(&M1, Event1);
		InitMutex(&M2, Event1);
    }
    // Write the code below.
    else if (c == 4) {
    	ActivateTask(TaskL);
    }
    else if (c == 6) {
    	ActivateTask(TaskH);
    }
}

// Write the code below.
TASK(TaskH)
{
	printfSerial("<TaskH begins.> ");               // 6s
	mdelay(1000);
	printfSerial("TaskH : Try Lock(M1). ");         // 7s
	GetMutex(&M1);
	printfSerial("TaskH : Get Lock(M1). ");
	mdelay(3000);
	printfSerial("TaskH : Try Lock(M2). ");         // 10s
	GetMutex(&M2);
	printfSerial("TaskH : Get Lock(M2). ");
	mdelay(2000);	
	printfSerial("TaskH : Release Lock(M2). ");     // 12s
	ReleaseMutex(&M2);
	mdelay(1000);
	printfSerial("TaskH : Release Lock(M1). ");     // 13s
	ReleaseMutex(&M1);
	mdelay(2000);
	printfSerial("<TaskH ends.> ");                 // 15s
    TerminateTask();
}

// Write the code below.
TASK(TaskL)
{
	printfSerial("<TaskL begins.> ");               // 4s
	mdelay(1000);
	printfSerial("TaskL : Try Lock(M2). ");         // 5s
	GetMutex(&M2);
	printfSerial("TaskL : Get Lock(M2). ");
	mdelay(2000);
	printfSerial("TaskL : Try Lock(M1). ");         // 7s
	GetMutex(&M1);
	printfSerial("TaskL : Get Lock(M1). ");
	mdelay(2000);
	printfSerial("TaskL : Release Lock(M1). ");     // 9s
	ReleaseMutex(&M1);
	mdelay(1000);
	printfSerial("TaskL : Release Lock(M2). ");     // 10s
	ReleaseMutex(&M2);
	mdelay(1000);
	printfSerial("<TaskL ends.> ");                 // 11s
	TerminateTask();
}
