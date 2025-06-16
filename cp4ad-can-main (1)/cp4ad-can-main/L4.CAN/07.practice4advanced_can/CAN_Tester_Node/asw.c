#include "bsw.h"
// for error code
#include "errorflag.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

// for extern
volatile ErrorFlags error = 0;
// for counter
static int count = 0;

TASK(Task1) {
	
	// delcare error
	ErrorFlags this_error = error;

	// declare remote msg
	struct can_msg remote_msg={0};


	
	//////////////////////////////write here//////////////////////////////////////////////
	// reference : 05.remote_can
	// init msg
	unsigned char len =      ; //16 bits
	remote_msg.id =          ;
	remote_msg.len =         ;
	/////////////////////////////////////////////////////////////////////////////////////
	


	if(count%2==0){
		if(remote_msg.id==0x0ff)
		{
			// send remote msg
			printfSerial("--------------------------------------------------\n");



			//////////////////////////////write here//////////////////////////////////////////////
			// reference : 05.remote_can
			printfSerial("Send Status(0 or 1): %d\n",                );
			/////////////////////////////////////////////////////////////////////////////////////



			printfSerial("Frame ID: 0x%03x Length: %d \nRemoteFrame Send \n",remote_msg.id,remote_msg.len);
			
		}	
	}
	printfSerial("\n");
	
	// declare receive msg
	struct can_msg receive_msg ={0};
	if(count%2==1){
		if(CAN_checkMsg() == true) 
		{
			CAN_readMsg(&receive_msg);
			printfSerial("Respond data ID : 0x%03x ",receive_msg.id);
			printfSerial("Length : %d\n",receive_msg.len);



			//////////////////////////////write here//////////////////////////////////////////////
			// reference : 06.errorflag_can
			// assign to error code
			this_error |= (receive_msg.buf[        ] <<            );
			this_error |= (receive_msg.buf[        ] <<            );
			
			//print error code
			if(this_error)
			{
				printErrorFlags(     );
			}
			/////////////////////////////////////////////////////////////////////////////////////



			//free memory
			free(receive_msg.buf);
			receive_msg.buf = NULL;
		}else
		{
			printfSerial("No respond\n");
		}
	}
	// counter up
	count++;
	
	TerminateTask();
};

