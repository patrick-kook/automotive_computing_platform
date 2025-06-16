#include "bsw.h"
#include <string.h>


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	const char buf_send[] = {       0x17,0x16,0x12,0x25,0x23,
							   0x00, //1
							        0x44,0x11,0x01,0x15,0x44,0x14,
							   0x00, //2
							   0x00, //3
							         0x45,0x02,0x12,
							   0x00, //4
							   0x00, //5
							   0x00, //6
							        0x12,0x12,0x14,0x25,0x25,0x13};

	int len = sizeof(buf_send);


	struct can_fd_msg send_msg = {0};
	send_msg.id = 0x040;
	send_msg.len = len;

	send_msg.buf = (unsigned char*)malloc(len);
	memcpy(send_msg.buf, buf_send, len);

	pad(&send_msg);
	
	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status: %d\n",CAN_sendMsg(send_msg));
	printfSerial("Frame ID: 0x%03X ",send_msg.id);
	printfSerial("Length: %d \nSend_Message\n",len);
	for(unsigned char i=0; i<send_msg.len;i++)
	{
		printfSerial("0x%02x ",send_msg.buf[i]);

	}
	printfSerial("\n");


	free(send_msg.buf);
	TerminateTask();
};

