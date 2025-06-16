#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {
	
	//declare msg
	struct can_msg send_msg = {0};

	//init msg
	send_msg.id = 0x040;
	unsigned char len = 8;
	send_msg.len = len;

	//assign to msg
	unsigned char* buf_send = (unsigned char*)malloc(sizeof(unsigned char)*len);
	buf_send[0] = 'C';
	buf_send[1] = 'P';
	buf_send[2] = '4';
	buf_send[3] = 'A';
	buf_send[4] = 'D';
	buf_send[5] = 'C';
	buf_send[6] = 'A';
	buf_send[7] = 'N';
	send_msg.buf = buf_send;

	//print segment
	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	for(unsigned char i = 0; i < send_msg.len; i++)
	{
		printfSerial("%c ",send_msg.buf[i]);
	}
	printfSerial("\n");

	//free memory
	free(buf_send);

	
	TerminateTask();
};

