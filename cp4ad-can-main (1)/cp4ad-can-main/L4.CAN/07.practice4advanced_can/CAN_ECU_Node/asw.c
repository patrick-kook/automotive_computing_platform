#include "bsw.h"
#include "errorflag.h"

// error is extern_variable while this_error is local_variable
// see errorflag.h
ErrorFlags error = 0;

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {
	
    // declare error
    ErrorFlags this_error = 0;



    //////////////////////////////write here//////////////////////////////////////////////
    // reference : 06.errorflag_can
    this_error |=             ;
    this_error |=             ;
    this_error |=             ;
    this_error |=             ;
    this_error |=             ;
    /////////////////////////////////////////////////////////////////////////////////////



    error = this_error;
    //check buffer and call callback-function
	callbackRoutine();

	TerminateTask();
};

