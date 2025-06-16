#include "bsw.h"
#include <string.h>


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	const char* lyric = "Don't you know how sweet it tastes.";
	int len = strlen(lyric);

	struct can_fd_msg send_msg = {0};
	send_msg.id = 0x040;
	send_msg.len = len;

	send_msg.buf = (unsigned char*)malloc(len);
	memcpy(send_msg.buf, lyric, len);

	pad(&send_msg);



	
	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status: %d\n",CAN_sendMsg(send_msg));
	printfSerial("Frame ID: 0x%03X ",send_msg.id);
	printfSerial("Length: %d \nSend_Message\n",len);
	for(unsigned char i=0; i<send_msg.len;i++)
	{
		printfSerial("%c",send_msg.buf[i]);
	}
	printfSerial("\n");

	free(send_msg.buf);
	TerminateTask();
};

