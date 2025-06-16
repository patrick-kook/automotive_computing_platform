#include "bsw.h"

// for error flag
#include "errorflag.h"

// for extern
ErrorFlags error=0;

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {
	
	// delcare msg
	struct can_msg receive_msg ={0};
	// declare error
	ErrorFlags this_error = error;

	if(CAN_checkMsg() == true) {
		printfSerial("--------------------------------------------------\n");
		CAN_readMsg(&receive_msg);
        for (int i = 0; i < receive_msg.len; i++) 
		{
            this_error = (this_error << 8) | receive_msg.buf[i];
        }
		printfSerial("Receive data ID : 0x%03x \n",receive_msg.id);
		// print error code
		printErrorFlags(this_error);
	
		//free memory
		free(receive_msg.buf);
		receive_msg.buf = NULL;
	}
	TerminateTask();
};

