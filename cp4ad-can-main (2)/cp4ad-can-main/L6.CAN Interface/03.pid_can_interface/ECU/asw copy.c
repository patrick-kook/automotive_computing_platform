#include "bsw.h"
 

#include "Car_Model.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

int count = 0;

bool isFirst = true;

int32_t current_yaw ;
int32_t current_temp;
int32_t current_rpm;

TASK(Task1) {
	struct can_fd_msg msg;

	if(isFirst==true){
		current_yaw = control_yaw(car_input.steer);
		current_temp = control_temperature(car_input.pan_power);
		current_rpm = control_rpm(car_input.throttle_position,car_input.gear_position);
		isFirst=false;
	}
	
	if (CAN_checkMsg() && CAN_readMsg(&msg))
	{
		handle_simple_tlv(&msg);  
		current_yaw = control_yaw(car_input.steer);
		current_temp = control_temperature(car_input.pan_power);
		current_rpm = control_rpm(car_input.throttle_position,car_input.gear_position);
	}else
	{	

		unsigned char buf_send[24];

		// target_yaw
		buf_send[0] = (target_yaw >> 24) & 0xFF;
		buf_send[1] = (target_yaw >> 16) & 0xFF;
		buf_send[2] = (target_yaw >> 8)  & 0xFF;
		buf_send[3] = (target_yaw >> 0)  & 0xFF;
	
		// current_yaw
		buf_send[4] = (current_yaw >> 24) & 0xFF;
		buf_send[5] = (current_yaw >> 16) & 0xFF;
		buf_send[6] = (current_yaw >> 8)  & 0xFF;
		buf_send[7] = (current_yaw >> 0)  & 0xFF;
	
		// target_temp
		buf_send[8]  = (target_temp >> 24) & 0xFF;
		buf_send[9]  = (target_temp >> 16) & 0xFF;
		buf_send[10] = (target_temp >> 8)  & 0xFF;
		buf_send[11] = (target_temp >> 0)  & 0xFF;
	
		// current_temp
		buf_send[12] = (current_temp >> 24) & 0xFF;
		buf_send[13] = (current_temp >> 16) & 0xFF;
		buf_send[14] = (current_temp >> 8)  & 0xFF;
		buf_send[15] = (current_temp >> 0)  & 0xFF;
	
		// target_rpm
		buf_send[16] = (target_rpm >> 24) & 0xFF;
		buf_send[17] = (target_rpm >> 16) & 0xFF;
		buf_send[18] = (target_rpm >> 8)  & 0xFF;
		buf_send[19] = (target_rpm >> 0)  & 0xFF;
	
		// current_rpm
		buf_send[20] = (current_rpm >> 24) & 0xFF;
		buf_send[21] = (current_rpm >> 16) & 0xFF;
		buf_send[22] = (current_rpm >> 8)  & 0xFF;
		buf_send[23] = (current_rpm >> 0)  & 0xFF;
	
		int value_len = 24;
		int can_id = 0x040;
		int value_type = 0x0a0;

		send_simple_tlv(can_id, value_type, buf_send, value_len);
	}


	

	TerminateTask();
};

