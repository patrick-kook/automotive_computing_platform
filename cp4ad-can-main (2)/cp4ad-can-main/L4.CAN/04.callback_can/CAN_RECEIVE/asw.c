#include "bsw.h"



ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {
	
	callbackRoutine();

	TerminateTask();
};

