#include "bsw.h"

//for error flag
#include "errorflag.h"

// for extern
ErrorFlags error = 0;

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1) {

	// declare error code
	ErrorFlags this_error = error;
	this_error |= COOLANT_TEMP;
	this_error |= BRAKE_SYSTEM;
	this_error |= TIRE_PRESSURE;
	this_error |= MAINTENANCE;

	// declare msg
	struct can_msg send_msg={0};
	unsigned char len =2; //16 bits
	send_msg.id = 0x040;
	send_msg.len = len;
	unsigned char* buf_send=(unsigned char*)malloc(sizeof(unsigned char)*len);
	send_msg.buf=buf_send;

	// set error code
	if(this_error)
	{
		send_msg.buf[0] = (this_error >> 8) & 0xFF;
		send_msg.buf[1] = (this_error >> 0) & 0xFF;   
	}

	//print
	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(0 or 1): %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID: 0x%03x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);

	//print for binary
	for (int i = 0; i < send_msg.len; i++)
	{
		unsigned char byte = send_msg.buf[i];

		for (int bit = 7; bit >= 0; bit--) {
			printfSerial("%d", (byte >> bit) & 0b1);
			if (bit % 4 == 0 && bit != 0) {
				printfSerial(" ");  
			}
		}
		printfSerial(" ");  
	}
	printfSerial("\n");

	//free memory
	free(buf_send);
	TerminateTask();
};

