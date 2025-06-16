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

	int value_len = sizeof(buf_send);
	int can_id = 0x040;
	int value_type = 0x050;
	send_simple_tlv(can_id,value_type,buf_send,value_len);

	TerminateTask();
};

