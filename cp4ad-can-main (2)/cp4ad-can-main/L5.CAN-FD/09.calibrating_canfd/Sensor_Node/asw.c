#include "bsw.h"
 

#include "Car_Model.h"


ISR2(TimerISR)
{
    IncrementCounter(counter1);
}


bool isFirst = true;

int32_t current_yaw ;
int32_t current_temp;
int32_t current_rpm;

TASK(Task1) {
	struct can_fd_msg msg;

	if(isFirst==true){

		/////write here///////
		//hint : input list
		//----------input list-----------
		// car_input.pan_power
		// car_input.throttle_position
		// car_input.steer
		// car_input.gear_position

			current_yaw = control_yaw(                   );
			current_temp = control_temperature(          );
			current_rpm = control_rpm(          ,        );

		/////////////////////////////
		isFirst=false;
	}


	if (CAN_checkMsg() && CAN_readMsg(&msg))
	{
		handle_simple_tlv(&msg); 
		/////write here///////
		//hint : input list
		//----------input list-----------
		// car_input.pan_power
		// car_input.throttle_position
		// car_input.steer
		// car_input.gear_position
		current_yaw = control_yaw(                   );
		current_temp = control_temperature(          );
		current_rpm = control_rpm(          ,        );
		
		/////////////////////////////////////////
	}
	else
	{	
		unsigned char buf_send[24];
		//////////////write here /////////////////////
		//hint : send target & current data

		//----------send list-----------//
		// int32_t current_yaw ;
		// int32_t current_temp;
		// int32_t current_rpm;
		// int32_t target_yaw;
		// int32_t target_temp;
		// int32_t target_rpm;


		// target_yaw
		buf_send[0] = ( >> ) & 0xFF;
		buf_send[1] = ( >> ) & 0xFF;
		buf_send[2] = ( >>)  & 0xFF;
		buf_send[3] = ( >>)  & 0xFF;
	
		// current_yaw
		buf_send[4] = ( >>)  & 0xFF;
		buf_send[5] = ( >>)  & 0xFF;
		buf_send[6] = ( >>)  & 0xFF;
		buf_send[7] = ( >>)  & 0xFF;
	
		// target_temp
		buf_send[8]  = ( >>)  & 0xFF;
		buf_send[9]  = ( >>)  & 0xFF;
		buf_send[10] = ( >>)  & 0xFF;
		buf_send[11] = ( >>)  & 0xFF;
	
		// current_temp
		buf_send[12] = ( >>)  & 0xFF;
		buf_send[13] = ( >>)  & 0xFF;
		buf_send[14] = ( >>)  & 0xFF;
		buf_send[15] = ( >>)  & 0xFF;
	
		// target_rpm
		buf_send[16] = ( >>)  & 0xFF;
		buf_send[17] = ( >>)  & 0xFF;
		buf_send[18] = ( >>)  & 0xFF;
		buf_send[19] = ( >>)  & 0xFF;
	
		// current_rpm
		buf_send[20] = ( >>)  & 0xFF;
		buf_send[21] = ( >>)  & 0xFF;
		buf_send[22] = ( >>)  & 0xFF;
		buf_send[23] = ( >>)  & 0xFF;
	
		int value_len =  ;
		int can_id =     ;
		int value_type =  ;
		
		/////////////////////////////////////////////////////////
		send_simple_tlv(can_id, value_type, buf_send, value_len);
	}


	TerminateTask();
};

