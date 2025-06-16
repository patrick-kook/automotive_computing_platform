#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

uint16_t counter = 0;


TASK(Task1) {

	struct can_msg send_msg = {0};

	///////////////////////write below/////////////////////////

	send_msg.id = 0x123;
	unsigned char len = 8;
	send_msg.len = len;

	uint16_t c_id = 0x00A;
	uint16_t acc = 8919;
	uint8_t x_center = 32;
	uint8_t y_center = 11;
	uint16_t count = counter;

	unsigned char buf_send[8];

	buf_send[0] = (c_id >> 8) & 0xff;
	buf_send[1] = (c_id >> 0) & 0xff;

	buf_send[2] = (acc >> 8) & 0xff;
	buf_send[3] = (acc >> 0) & 0xff;

	buf_send[4] = (x_center >> 0) & 0xff;

	buf_send[5] = (y_center >> 0) & 0xff;

	buf_send[6] = (count >> 8) & 0xff;
	buf_send[7] = (count >> 0) & 0xff;

	////////////////////////////////////////////////////////////
	send_msg.buf = buf_send;

	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	

	printfSerial("\n");


	counter++;
	TerminateTask();
};

