#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	uint32_t int_data = 2025040200; //0 ~ 4,294,967,295

	struct can_msg send_msg = {0};
	send_msg.id = 0x123;
	unsigned char len = 4;
	send_msg.len = len;

	unsigned char* buf_send = (unsigned char*)malloc(sizeof(unsigned char)*len);
	buf_send[0] = (int_data >> 24) & 0xff;
	buf_send[1] = (int_data >> 16) & 0xff;
	buf_send[2] = (int_data >> 8) & 0xff;
	buf_send[3] = (int_data >> 0) & 0xff;
	send_msg.buf = buf_send;

	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	printfSerial("Data : %lu",int_data);
	printfSerial("\n");

	free(buf_send);
	
	TerminateTask();
};

