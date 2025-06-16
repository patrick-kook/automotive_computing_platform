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


		uint32_t throttle_percent = 0;
		throttle_percent |= (uint32_t)receive_msg.buf[0] << 24;
		throttle_percent |= (uint32_t)receive_msg.buf[1] << 16;
		throttle_percent |= (uint32_t)receive_msg.buf[2] << 8;
		throttle_percent |= (uint32_t)receive_msg.buf[3] << 0;

		uint32_t meter = 0;
		meter |= (uint32_t)receive_msg.buf[4] << 24;
		meter |= (uint32_t)receive_msg.buf[5] << 16;
		meter |= (uint32_t)receive_msg.buf[6] << 8;
		meter |= (uint32_t)receive_msg.buf[7] << 0;
		

		printfSerial("Throttle Percent  : %lu", throttle_percent / 100);
		printfSerial(".%02d%% ", throttle_percent % 100);
		printfSerial("Meter Total  : %lu", meter / 1000);
		printfSerial(".%02lu Km", meter % 1000);


		printfSerial("\n");
	}

	TerminateTask();
};

