#include "bsw.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {
	
	// declare remote msg
	struct can_msg remote_msg={0};
	remote_msg.id = 0x0ff; 
	
	// send remote msg
	if(remote_msg.id==0x0ff)
	{
		printfSerial("--------------------------------------------------\n");
		printfSerial("Send Status(0 or 1): %d\n",sendRemote(remote_msg));
		printfSerial("Frame ID: 0x%03x Length: %d \nRemoteFrame Send \n",remote_msg.id,remote_msg.len);
	}

	printfSerial("\n");

	// declare receive msg
	struct can_msg receive_msg ={0};

	// receive msg
	if(CAN_checkMsg() == true) {
		
		CAN_readMsg(&receive_msg);
		printfSerial("Respond data ID : 0x%03x ",receive_msg.id);
		printfSerial("Length : %d\n",receive_msg.len);
		for(int i=0; i<receive_msg.len; i++)
		{
			printfSerial("%d ",receive_msg.buf[i]);
		}

		//free memory
		free(receive_msg.buf);
		receive_msg.buf = NULL;
	}



	printfSerial("\n");
	TerminateTask();
};

