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
		
		///////////////////////write below/////////////////////////////

		uint16_t c_id;
		c_id |= receive_msg.buf[0] << 8;
		c_id |= receive_msg.buf[1] << 0;

		uint16_t acc_raw;
		acc_raw |= receive_msg.buf[2] << 8;
		acc_raw |= receive_msg.buf[3] << 0;


		uint8_t x_center_raw;
		x_center_raw |= receive_msg.buf[4] << 0;


		uint8_t y_center_raw;
		y_center_raw |= receive_msg.buf[5] << 0;


		uint16_t count;
		count |= receive_msg.buf[6] << 8;
		count |= receive_msg.buf[7] << 0;
		

		//////////////////////////////////////////////////////////////////////

		printfSerial("Class ID : 0x%03X ", c_id);
		printfSerial("Accuracy : %d.%02d ", acc_raw / 100, acc_raw % 100);
		printfSerial("X_center : %d.%02d ", x_center_raw / 100, x_center_raw % 100);
		printfSerial("Y_center : %d.%02d ", y_center_raw / 100, y_center_raw % 100);
		printfSerial("Count : %d ", count);

		printfSerial("\n");
	}

	TerminateTask();
};

