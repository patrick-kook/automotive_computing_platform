#include "bsw.h"
#include <string.h>
#include "Arduino.h"
#include "Car_Model.h"
#include "PID.h"

ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

struct output car_output = {
    .target_yaw = 0,
    .current_yaw = 0,
    .target_temp = 0,
    .current_temp = 0,
    .target_rpm = 0,
    .current_rpm = 0
};

int count = 0;


TASK(Task1) {
    struct can_fd_msg msg;


    if(count % 2 == 0){
        if (CAN_checkMsg() && CAN_readMsg(&msg))
         {
            handle_simple_tlv(&msg);  
            count++;
        }
    }
    else
    {

        struct input car_input = {0};

        ////////////////////////write here////////////////////////////////

        // steer               :  -99 ~ +99 %
        // pan_power           : 	0 ~ 100  %
        // throttle_position   :  	0 ~ 100  %
        // gear_position       :    1 ~ 6    mode
        // hint : set pid or value
                                                                                                             //P        //I      //D
        car_input.steer             =   pid_controller(car_output.current_yaw ,    car_output.target_yaw,    2.0f,     0.0f,    0.0f,    &yaw_pid);
        car_input.pan_power         =   pid_controller(car_output.current_temp,    car_output.target_temp,   2.0f,     0.0f,    0.0f,   &temp_pid);
        car_input.throttle_position =   pid_controller(car_output.current_rpm,     car_output.target_rpm,    2.0f,     0.0f,    0.0f,    &rpm_pid);
        car_input.gear_position = 1;

        //////////////////////////////////////////////////////////////////

        unsigned char buf_send[16];

        //////////////write here /////////////////////
		//hint : send target & current data
		//----------send list-----------//
		// car_input.pan_power
		// car_input.throttle_position
		// car_input.steer
		// car_input.gear_position

        int value_len =     ;
		int can_id =        ;
		int value_type =    ;
        // steer
        buf_send[0] = (           >>        ) & 0xFF;
        buf_send[1] = (           >>        ) & 0xFF;
        buf_send[2] = (           >>        ) & 0xFF;
        buf_send[3] = (           >>        ) & 0xFF;

        // pan_power
        buf_send[4] = (           >>        ) & 0xFF;
        buf_send[5] = (           >>        ) & 0xFF;
        buf_send[6] = (           >>        ) & 0xFF;
        buf_send[7] = (           >>        ) & 0xFF;

        // throttle_position
        buf_send[8]  = (           >>        ) & 0xFF;
        buf_send[9]  = (           >>        ) & 0xFF;
        buf_send[10] = (           >>        ) & 0xFF;
        buf_send[11] = (           >>        ) & 0xFF;

        // gear_position
        buf_send[12] = (           >>        ) & 0xFF;
        buf_send[13] = (           >>        ) & 0xFF;
        buf_send[14] = (           >>        ) & 0xFF;
        buf_send[15] = (           >>        ) & 0xFF;

        ///////////////////////////////////////
        send_simple_tlv(can_id, value_type, buf_send, value_len);
        count++;

    }
    
	

    TerminateTask();
}


