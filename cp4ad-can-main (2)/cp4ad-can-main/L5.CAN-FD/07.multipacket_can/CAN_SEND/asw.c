#include "bsw.h"

unsigned short len = 6*40;


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	unsigned char id = 0x040; 
	unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
	
	for(unsigned short i=0; i<len; i++)
	{
		buf_send[i]=(unsigned char)(i%256);
	}
	
	int sendStatus = send_full_message_can(id,buf_send,len);

	printfSerial("--------------------------------------------------\n");
	printfSerial("send status: %d ",sendStatus);
	printfSerial("frame id: 0x%2x length: %d send_message ",id,len);
	
	printfSerial("\n");

	free(buf_send);
	buf_send = NULL;
	
	TerminateTask();
};

