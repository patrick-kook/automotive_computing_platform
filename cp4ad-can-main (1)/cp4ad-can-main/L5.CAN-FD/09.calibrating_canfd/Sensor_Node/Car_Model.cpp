#include <math.h>   
#include <stdint.h>  
#include "Car_Model.h"
#include "bsw.h"

struct input car_input = {
    .steer = 0,
    .pan_power = 0,
    .throttle_position = 0,
    .gear_position = 0
};

int32_t target_yaw = 0;
int32_t base_yaw = -50;

int32_t target_temp = 18;
int32_t base_temp = 45;

int32_t target_rpm = 4000;
int32_t base_rpm = 1500;



static int32_t saturate(int32_t val, int32_t min_val, int32_t max_val) {
    if (val < min_val) return min_val;
    if (val > max_val) return max_val;
    return val;
}



int32_t control_yaw(int32_t steer) {

    steer = saturate(steer, -100, 100);
    int32_t rate = (steer * 15) / 100;  
    base_yaw += rate;
    base_yaw = saturate(base_yaw, -360, 360);
    if(abs(base_yaw)>359) base_yaw = 0;
    printfSerial("steer: %ld\n", steer);
    return base_yaw;
}

int32_t control_temperature(int32_t pan_power) {
    pan_power *= -1;
    pan_power = saturate(pan_power, 0, 100);
    
    printfSerial("pan_power: %ld\n", pan_power);
    
    if (pan_power == 0) {

        int32_t delta = (45 - base_temp) / 10;
        if(delta >= 0 && delta < 2) delta = 1;  
        base_temp += delta;

    } else {
        int32_t cooling_effect = (pan_power * 10) / 30;
        base_temp -= cooling_effect;
    }

    base_temp = saturate(base_temp, -20, 150);

    return base_temp;
}

int32_t control_rpm(int32_t throttle_position, int32_t gear_position) {
    throttle_position = saturate(throttle_position, 0, 100);
    gear_position = saturate(gear_position, 1, 6);
    printfSerial("throttle: %ld gear_position: %ld\n", throttle_position,gear_position);

    float gear_ratios[] = {3.5, 2.2, 1.5, 1.0, 0.8, 0.6}; 
    float final_drive_ratio = 4.1;
    float wheel_radius_m = 0.3; 

    float gear_ratio = gear_ratios[gear_position - 1] * final_drive_ratio;


    float max_engine_torque = 200.0; 
    float engine_torque = (throttle_position / 100.0f) * max_engine_torque;

 
    float engine_inertia = 0.3;
    float delta_rpm = (engine_torque / engine_inertia) * 0.1; 

    base_rpm += (int32_t)delta_rpm;


    float rpm_to_rad = 2 * M_PI / 60.0f;
    float wheel_rpm = base_rpm / gear_ratio;
    float wheel_speed_mps = wheel_rpm * rpm_to_rad * wheel_radius_m;
    float vehicle_speed_kph = wheel_speed_mps * 3.6;


    if (throttle_position == 0) {
        base_rpm -= 200; 
    }


    int32_t idle_rpm = 800;
    if (base_rpm < idle_rpm) base_rpm = idle_rpm;


    int32_t max_rpm = 6500;
    if (base_rpm > max_rpm) base_rpm = max_rpm;



    return base_rpm;
}