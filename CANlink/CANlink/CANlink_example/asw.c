#include "bsw.h"
unsigned char len;
unsigned long id;
unsigned char buf[8];


ISR2(TimerISR)
{

    IncrementCounter(counter1);

}




TASK(Task1)
{
	if(CAN_checkMsg() == CAN_MSGAVAIL) {
		CAN_readMsg(&id, &len, buf);
		short class_id;
		short accuracy;
		char x_center, y_center;
		unsigned short cnt;
		printfSerial("--------------------------------------------------\n");
		printfSerial("Get data from ID : %x \n",id);
		for (int i = 0; i < len; i++) {
		          if (i == 0 ) class_id = buf[i] << 8;
		          if (i == 1 ) class_id |= buf[i]  & 0x00FF;
		          if (i== 2) accuracy = buf[i] << 8;
		          if (i == 3) accuracy |= buf[i]  & 0x00FF;
		          if (i == 4) x_center = buf[i]  & 0x00FF;
		          if (i == 5) y_center = buf[i] & 0x00FF;
		          if (i == 6 ) cnt = buf[i] << 8;
		          if (i == 7 ) cnt |= buf[i] & 0x00FF;

		    }
		float accuracy_fact = (float)accuracy / 100;
		float x_center_fact = (float)x_center / 100;
		float y_center_fact = (float)y_center / 100;
		printfSerial("class_id = %d, accuracy = %2.2f%%, x_center = %.2f, y_center = %.2f, count = %d",class_id,accuracy_fact,x_center_fact, y_center_fact,cnt);


		printfSerial("\n");
	}


	TerminateTask();
};



int sum = 0;
