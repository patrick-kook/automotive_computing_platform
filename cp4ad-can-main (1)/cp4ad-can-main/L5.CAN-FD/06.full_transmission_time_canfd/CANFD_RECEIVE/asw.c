#include "bsw.h"



ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	struct can_msg send_msg = {0};
	struct can_msg receive_msg ={0};

	send_msg.id = 0x041;
	unsigned char len =64;
	if(len<8) len = 64; //no under 8(time stamp space)
	send_msg.len = len;
	unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
	send_msg.buf=buf_send;
	padding(&send_msg,8,send_msg.len-1);


	
	uint32_t receiveTimestamp1=0;
	uint32_t receiveTimestamp2=0;

	if(CAN_checkMsg() == true) 
	{
		if (CAN_readMsg(&receive_msg))
		{

			receiveTimestamp1=(uint32_t)micros();

			send_msg.buf[0] = (receiveTimestamp1 >> 24) & 0xFF;  // 0x12
			send_msg.buf[1] = (receiveTimestamp1 >> 16) & 0xFF;  // 0x34
			send_msg.buf[2] = (receiveTimestamp1 >>  8) & 0xFF;  // 0x56
			send_msg.buf[3] = (receiveTimestamp1      ) & 0xFF;  // 0x78

			receiveTimestamp2=(uint32_t)micros();
			
			send_msg.buf[4] = (receiveTimestamp2 >> 24) & 0xFF;  // 0x12
			send_msg.buf[5] = (receiveTimestamp2 >> 16) & 0xFF;  // 0x34
			send_msg.buf[6] = (receiveTimestamp2 >>  8) & 0xFF;  // 0x56
			send_msg.buf[7] = (receiveTimestamp2      ) & 0xFF;  // 0x78

			int sendStatus = CAN_sendMsg(send_msg);
			
			printfSerial("send status: %d ",sendStatus);
			printfSerial(" send length: %d \n",len);

			if(!sendStatus)
			{
				free(receive_msg.buf);
				receive_msg.buf = NULL;
				free(buf_send);
				TerminateTask();
			}
			printfSerial("processing done\n");
			printfSerial("re1: %lu ",receiveTimestamp1);
			printfSerial("re2: %lu \n",receiveTimestamp2);
			printfSerial("Process Time: %luus\n",(receiveTimestamp2-receiveTimestamp1)*2);
			printfSerial("--------------------------------------------------\n");
			


			free(receive_msg.buf);
			receive_msg.buf = NULL;
			
		}
	}
	

	free(buf_send);

	TerminateTask();
};

