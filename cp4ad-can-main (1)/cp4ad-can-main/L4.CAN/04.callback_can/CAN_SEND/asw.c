#include "bsw.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {

	static int ticks=0;
	unsigned char len =8;
	struct can_msg send_msg;

	if(ticks%3==0)
	{
		//turn off
		send_msg.id = 0x050;
		send_msg.len = len;
		unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
		for(unsigned char i=0; i<len; i++)
		{
			buf_send[i]='0';

		}
		send_msg.buf=buf_send;

		CAN_sendMsg(send_msg);
		printfSerial("--------------------------------------------------\n");
		printfSerial("Tick: %d\n",ticks);
		printfSerial("Frame ID: 0x%02x  ",send_msg.id);
		printfSerial("Length: %d\n",send_msg.len);

		for(unsigned char i=0; i<send_msg.len;i++)
		{
			printfSerial("%c ",send_msg.buf[i]);
		}
		printfSerial("\n");
		free(buf_send);

	}

	if(ticks%3==1)
	{
		//turn on
		struct can_msg send_msg;
	
		send_msg.id = 0x030;
		send_msg.len = len;
		unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
		for(unsigned char i=0; i<len; i++)
		{
			buf_send[i]='1';
	
		}
		send_msg.buf=buf_send;

		CAN_sendMsg(send_msg);
		printfSerial("--------------------------------------------------\n");
		printfSerial("Tick: %d\n",ticks);
		printfSerial("Frame ID: 0x%02x  ",send_msg.id);
		printfSerial("Length: %d\n",send_msg.len);
		
		for(unsigned char i=0; i<send_msg.len;i++)
		{
			printfSerial("%c ",send_msg.buf[i]);
		}
		printfSerial("\n");
		free(buf_send);

	}


	if(ticks%3==2)
	{
		//Not received msg
		struct can_msg send_msg;
	
		send_msg.id = 0x060;
		send_msg.len = len;
		unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
		for(unsigned char i=0; i<len; i++)
		{
			buf_send[i]='2';
	
		}
		send_msg.buf=buf_send;

		CAN_sendMsg(send_msg);
		printfSerial("--------------------------------------------------\n");
		printfSerial("Tick: %d\n",ticks);
		printfSerial("Frame ID: 0x%02x  ",send_msg.id);
		printfSerial("Length: %d\n",send_msg.len);
		
		for(unsigned char i=0; i<send_msg.len;i++)
		{
			printfSerial("%c ",send_msg.buf[i]);
		}
		printfSerial("\n");
		free(buf_send);

	}
	ticks++;

	TerminateTask();
};

