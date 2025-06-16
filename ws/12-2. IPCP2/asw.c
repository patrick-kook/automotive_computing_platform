#include "bsw.h"
#include "mutex.h"

MutexType M1;
MutexType M2;

ISR2(TimerISR)
{
    static long c = -5;
    printfSerial("\n%4ld: ", ++c);
    if(c == -4) {
		InitMutex(&M1, Event1);
		InitMutex(&M2, Event1);
    }
    // Write the code below.
    else if (c == 0) {
		ActivateTask(TaskL);
    }
	else if (c == 2) {
		ActivateTask(TaskM);
	}
    else if (c == 4) {
		ActivateTask(TaskH);
    }
}

// Write the code below.
TASK(TaskH)
{
	printfSerial("<TaskH begins.> ");               // 4s				
	mdelay(1000);
	printfSerial("TaskH : Try Lock(S1). ");         // 5s
	GetResource(S1);
	printfSerial("TaskH : Get Lock(S1). ");
	mdelay(3000);
	printfSerial("TaskH : Try Lock(S2). ");         // 8s
	GetResource(S2);
	printfSerial("TaskH : Get Lock(S2). ");
	mdelay(1000);
	printfSerial("TaskH : Release Lock(S2). ");     // 9s
	ReleaseResource(S2);
	mdelay(1000);
	printfSerial("TaskH : Release Lock(S1). ");     // 10s
	ReleaseResource(S1);
	mdelay(1000);
	printfSerial("<TaskH ends.> ");                 // 11s
    TerminateTask();
}

// Write the code below.
TASK(TaskM)
{
	printfSerial("<TaskM Begins.> ");               // 2s
	mdelay(3000);
	printfSerial("TaskM : Try Lock(S2), ");         // 5s
	GetResource(S2);
	printfSerial("TaskM : Get Lock(S2). ");
	mdelay(1000);
	printfSerial("TaskL : Release Lock(S2). ");     // 6s
	ReleaseResource(S1);
	mdelay(1000);
	printfSerial("<TaskM ends.> ");                 // 7s
	TerminateTask();
}

// Write the code below.
TASK(TaskL)
{
	printfSerial("<TaskL begins.> ");               // 0s
	mdelay(1000);
	printfSerial("TaskL : Try Lock(S2). ");         // 1s
	GetResource(S2);
	printfSerial("TaskL : Get Lock(S2). ");
	mdelay(2000);
	printfSerial("TaskL : Try Lock(S1). ");         // 3s
	GetResource(S1);
	printfSerial("TaskL : Get Lock(S1). ");
	mdelay(2000);
	printfSerial("TaskL : Release Lock(S1). ");     // 5s
	ReleaseResource(S1);
	mdelay(1000);
	printfSerial("TaskL : Release Lock(S2). ");     // 6s
	ReleaseResource(S2);
	mdelay(2000);
	printfSerial("<TaskL ends.> ");                 // 8s
	TerminateTask();
}
