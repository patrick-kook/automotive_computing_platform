#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

uint16_t counter = 0;
uint32_t meter = 0;

TASK(Task1) {

	struct can_msg send_msg = {0};
	send_msg.id = 0x123;
	unsigned char len = 8;
	send_msg.len = len;

	//0~100.00
	uint32_t throttle_percent = compute(counter % 20);


	meter += 6 * (throttle_percent / 100);
	unsigned char buf_send[8];
	buf_send[0] = (throttle_percent >> 24) & 0xff;
	buf_send[1] = (throttle_percent >> 16) & 0xff;
	buf_send[2] = (throttle_percent >> 8) & 0xff;
	buf_send[3] = (throttle_percent >> 0) & 0xff;

	buf_send[4] = (meter >> 24) & 0xff;
	buf_send[5] = (meter >> 16) & 0xff;
	buf_send[6] = (meter >> 8) & 0xff;
	buf_send[7] = (meter >> 0) & 0xff;

	send_msg.buf = buf_send;

	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	printfSerial("\n");


	counter++;
	TerminateTask();
};

