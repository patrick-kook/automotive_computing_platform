#include "bsw.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {
	
	//check msg buffer and call callback-function
	callbackRoutine();

	TerminateTask();
};

