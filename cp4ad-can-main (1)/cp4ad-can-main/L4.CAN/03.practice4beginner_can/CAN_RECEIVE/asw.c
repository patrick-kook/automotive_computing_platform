#include "bsw.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


TASK(Task1) {
	
	struct can_msg receive_msg ={0};

	if(CAN_checkMsg() == true) {

		printfSerial("--------------------------------------------------\n");
		printfSerial("Receive Status(1 or 0) : %d\n",CAN_readMsg(&receive_msg));
		printfSerial("Receive data ID : 0x%02x ",receive_msg.id);
		printfSerial("Length : %d\n",receive_msg.len);
		///////////write here//////////////////////

		unsigned short short_1  = ((uint32_t)receive_msg.buf[      ] <<         ) |
								  ((uint32_t)receive_msg.buf[      ] <<         );

		unsigned short short_2  = ((uint32_t)receive_msg.buf[      ] <<         ) |
								  ((uint32_t)receive_msg.buf[      ] <<         );



		uint32_t int_1   	    = ((uint32_t)receive_msg.buf[      ] <<         ) |
								  ((uint32_t)receive_msg.buf[      ] <<         ) |
								  ((uint32_t)receive_msg.buf[      ] <<         ) |
								  ((uint32_t)receive_msg.buf[      ] <<         );
		
		///////////////////////////////////////////
		printfSerial("\n");

		printfSerial("my admission : %u\n",short_1);
		printfSerial("my graduate : %u\n",short_2);
		printfSerial("my ID : %lu\n",int_1);
	}



	TerminateTask();
};

