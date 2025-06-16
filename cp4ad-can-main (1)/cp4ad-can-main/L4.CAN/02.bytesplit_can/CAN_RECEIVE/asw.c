#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


TASK(Task1) {
	
	struct can_msg receive_msg ={0};

	if(CAN_checkMsg() == true) {	
		printfSerial("--------------------------------------------------\n");
		printfSerial("Receive Status(1 or 0) : %d\n",CAN_readMsg(&receive_msg));
		printfSerial("Receive data ID : 0x%02x ",receive_msg.id);
		printfSerial("Length : %d\n",receive_msg.len);

		uint32_t int_data_get = ((uint32_t)receive_msg.buf[0] << 24) |
								((uint32_t)receive_msg.buf[1] << 16) |
								((uint32_t)receive_msg.buf[2] << 8)  |
								((uint32_t)receive_msg.buf[3] << 0);

		printfSerial("Data : %lu",int_data_get);
		printfSerial("\n");
	}

	TerminateTask();
};

