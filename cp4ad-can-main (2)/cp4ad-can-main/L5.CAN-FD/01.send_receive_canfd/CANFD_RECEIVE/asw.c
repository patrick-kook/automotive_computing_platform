#include "bsw.h"
#include <string.h>

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


TASK(Task1) {
	
	struct can_fd_msg receive_msg ={0};
	
	if(CAN_checkMsg()) {
		
		 if (CAN_readMsg(&receive_msg))
		 {
			printfSerial("--------------------------------------------------\n");
			printfSerial("Frame ID: 0x%03X ",receive_msg.id);
			printfSerial("Length: %d \nReceive_Message \n",receive_msg.len);
			for (int i = 0; i < receive_msg.len; i++) 
			{
				printfSerial("%c", receive_msg.buf[i]);
			}
			printfSerial("\n");
			free(receive_msg.buf);
		}
		
	}
	
	

	TerminateTask();
};

