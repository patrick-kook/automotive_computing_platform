#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	struct can_msg send_msg = {0};

	send_msg.id = 0x40;
	int len = 8;
	send_msg.len = len;
	unsigned char* buf_send = (unsigned char*)malloc(sizeof(unsigned char)*len);
	///////////write here//////////////////////
	unsigned short short_1 = ;
	unsigned short short_2 = ;
	uint32_t int_1 = ;

	buf_send[0] = (       >> 8) & 0xff;
	buf_send[1] = (       >> 0) & 0xff;

	buf_send[2] = (       >> 8) & 0xff;
	buf_send[3] = (       >> 0) & 0xff;

	buf_send[4] = (       >> 24) & 0xff;
	buf_send[5] = (       >> 16) & 0xff;
	buf_send[6] = (       >> 8) & 0xff;
	buf_send[7] = (       >> 0) & 0xff;
	///////////////////////////////////////////
	send_msg.buf = buf_send;

	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	printfSerial("my admission : %u\n",short_1);
	printfSerial("my graduate : %u\n",short_2);
	printfSerial("my ID : %lu\n",int_1);
	printfSerial("\n");

	free(buf_send);

	TerminateTask();
};

