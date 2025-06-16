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


		uint8_t throttle_percent = 0;
		throttle_percent |= (uint8_t)receive_msg.buf[0] << 0;


		uint16_t rpm = 0;
		rpm |= (uint16_t)receive_msg.buf[1] << 8;
		rpm |= (uint16_t)receive_msg.buf[2] << 0;

		uint16_t target_rpm = 0;
		target_rpm |= (uint16_t)receive_msg.buf[3] << 8;
		target_rpm |= (uint16_t)receive_msg.buf[4] << 0;



		printfSerial("Throttle Percent  : %u%% \n", throttle_percent);
		printfSerial("Now RPM     : %d\n", rpm);
		printfSerial("Target RPM  : %d\n", target_rpm);
		printfSerial("Diff        : %d", target_rpm-rpm);

		printfSerial("\n");
	}

	TerminateTask();
};

