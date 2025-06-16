#include <math.h>   
#include <stdint.h>  
#include "Car_Model.h"
#include "bsw.h"



int16_t target_rpm = 4000;
int16_t base_rpm = 1500;



static int8_t saturate(int8_t val, int8_t min_val, int8_t max_val) {
    if (val < min_val) return min_val;
    if (val > max_val) return max_val;
    return val;
}


int16_t control_rpm(int8_t throttle_position) {

    int16_t gear_position = 3;
    throttle_position = saturate(throttle_position, 0, 100);
    gear_position = saturate(gear_position, 1, 6);
    
   

    float gear_ratios[] = {3.5, 2.2, 1.5, 1.0, 0.8, 0.6}; 
    float final_drive_ratio = 4.1;
    float wheel_radius_m = 0.3; 

    float gear_ratio = gear_ratios[gear_position - 1] * final_drive_ratio;


    float max_engine_torque = 200.0; 
    float engine_torque = (throttle_position / 100.0f) * max_engine_torque;

 
    float engine_inertia = 0.3;
    float delta_rpm = (engine_torque / engine_inertia) * 0.1; 

    base_rpm += (int16_t)delta_rpm;


    float rpm_to_rad = 2 * M_PI / 60.0f;
    float wheel_rpm = base_rpm / gear_ratio;
    float wheel_speed_mps = wheel_rpm * rpm_to_rad * wheel_radius_m;
    float vehicle_speed_kph = wheel_speed_mps * 3.6;


    if (throttle_position == 0) {
        base_rpm -= 200; 
    }


    int16_t idle_rpm = 800;
    if (base_rpm < idle_rpm) base_rpm = idle_rpm;


    int16_t max_rpm = 6500;
    if (base_rpm > max_rpm) base_rpm = max_rpm;




    return base_rpm;
}