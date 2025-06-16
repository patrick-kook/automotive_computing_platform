#include "bsw.h"






ISR2(TimerISR)
{
    IncrementCounter(counter1);
}



TASK(Task1) {

	
	uint32_t start_process=(uint32_t)micros();
	uint32_t timeout=10UL*1000UL*1000UL;

	struct can_msg send_msg = {0};
	struct can_msg receive_msg ={0};
	unsigned char len =8;

	
	send_msg.id = 0x040;
	if(len<8) len = 8; //no under 8(time stamp space)
	send_msg.len = len;
	
	unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
	send_msg.buf=buf_send;
	padding(&send_msg,0,send_msg.len-1);

	uint32_t transmissionTime=0;
	uint32_t roundtripTime=0;
	uint32_t processingTime=0;
	uint32_t receiveTimestamp1=0;
	uint32_t receiveTimestamp2=0;
	uint32_t sendTimestamp2=0;
	uint32_t sendTimestamp1 =(uint32_t)micros();
	
	
	
	int sendStatus = CAN_sendMsg(send_msg);
	
	printfSerial("send status: %d",sendStatus);
	printfSerial(" send length: %d\n",len);

	if(!sendStatus)
	{
		free(buf_send);
		TerminateTask();
	}





	while(((uint32_t)micros()-start_process)<timeout)
	{	
		
		if(CAN_checkMsg() &&CAN_readMsg(&receive_msg))
		{
			sendTimestamp2=(uint32_t)micros();
			receiveTimestamp1 = (receive_msg.buf[0] << 24) |
								(receive_msg.buf[1] << 16) |
								(receive_msg.buf[2] <<  8) |
								(receive_msg.buf[3] <<  0) ;

			receiveTimestamp2 = (receive_msg.buf[4] << 24) |
								(receive_msg.buf[5] << 16) |
								(receive_msg.buf[6] <<  8) |
								(receive_msg.buf[7] <<  0) ;
			
			processingTime=(receiveTimestamp2-receiveTimestamp1)*2;
			roundtripTime=sendTimestamp2-sendTimestamp1;
			transmissionTime=(roundtripTime-processingTime)/2;
			printfSerial("Receive length: %d \n",receive_msg.len);
			printfSerial("Go: %lu " ,sendTimestamp1);
			printfSerial("Comeback: %lu \n",sendTimestamp2);
			printfSerial("RTT(Round Trip Time): %lu \n",roundtripTime);
			printfSerial("Process_Time: %luus \n",processingTime);
			printfSerial("%d byte_Msg ",len);
			printfSerial("Transmission_Time: %luus ",transmissionTime);

			printfSerial("\n");

			free(receive_msg.buf);
			receive_msg.buf = NULL;
			break;
		}
		else
		{
			
		}
	}

	printfSerial("\n");
	printfSerial("--------------------------------------------------\n");
	
	free(buf_send);
	receive_msg.buf = NULL;
	TerminateTask();
};

