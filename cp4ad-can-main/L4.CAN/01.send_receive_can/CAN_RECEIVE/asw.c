#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


TASK(Task1) {
	
	//init msg
	struct can_msg receive_msg ={0};

	//check receive
	if(CAN_checkMsg() == true) {
		//print
		printfSerial("--------------------------------------------------\n");
		printfSerial("Receive Status(1 or 0) : %d\n",CAN_readMsg(&receive_msg));
		printfSerial("Receive data ID : 0x%02x ",receive_msg.id);
		printfSerial("Length : %d\n",receive_msg.len);
		for (int i = 0; i < receive_msg.len; i++)
		{
		    printfSerial("%c ", receive_msg.buf[i]);
		}
		printfSerial("\n");
	}



	TerminateTask();
};

