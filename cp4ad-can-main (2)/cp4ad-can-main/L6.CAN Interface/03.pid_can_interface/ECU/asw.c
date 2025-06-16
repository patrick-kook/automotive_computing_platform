#include "bsw.h"
#include "Car_Model.h"
#include "PID.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

uint16_t counter = 0;
uint8_t throttle_position = 0;
int16_t current_rpm;
bool isFirst = true;

TASK(Task1) {

	struct can_msg send_msg = {0};
	if(isFirst==true){
		current_rpm = control_rpm(throttle_position);
		isFirst=false;
	}

																		      //P   //I   //D
	throttle_position = (uint8_t)pid_controller(current_rpm,   target_rpm,    0.4f, 0.0f, 0.0f,    &rpm_pid);
	current_rpm = (uint16_t)control_rpm(throttle_position);

	send_msg.id = 0x123;
	unsigned char len = 5;
	send_msg.len = len;

	unsigned char buf_send[5];
	buf_send[0] = (throttle_position >> 0) & 0xff;

	buf_send[1] = (current_rpm >> 8) & 0xff;
	buf_send[2] = (current_rpm >> 0) & 0xff;

	buf_send[3] = (target_rpm >> 8) & 0xff;
	buf_send[4] = (target_rpm >> 0) & 0xff;


	send_msg.buf = buf_send;

	printfSerial("--------------------------------------------------\n");
	printfSerial("Send Status(1 or 0) : %d\n",CAN_sendMsg(send_msg));
	printfSerial("Send data ID : 0x%02x ",send_msg.id);
	printfSerial("Length : %d\n",send_msg.len);
	printfSerial("\n");


	counter++;
	TerminateTask();
};

