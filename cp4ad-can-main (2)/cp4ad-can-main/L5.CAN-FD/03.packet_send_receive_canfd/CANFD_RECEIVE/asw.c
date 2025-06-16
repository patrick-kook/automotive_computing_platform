#include "bsw.h"
#include <string.h>

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


TASK(Task1) {
    struct can_fd_msg msg;
	int zero_count = 0;

    if (CAN_checkMsg() && CAN_readMsg(&msg)) {
        handle_simple_tlv(&msg);  
		for(int i = 2 ; i < msg.len ; i++)
		{
			if(msg.buf[i]==0x00) zero_count++;
		}
        free(msg.buf);   
		printfSerial("zero_count : %d\n",zero_count);         
    }
	

    TerminateTask();
}
