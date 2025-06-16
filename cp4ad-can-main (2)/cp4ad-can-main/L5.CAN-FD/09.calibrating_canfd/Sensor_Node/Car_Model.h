#pragma once

#include <stdint.h>    
#include "ee.h"
#include "Arduino.h"

#ifdef __cplusplus
extern "C" {
#endif

struct input {
    int32_t steer;
    int32_t pan_power;
    int32_t throttle_position;
    int32_t gear_position;
};


extern int32_t target_yaw;
extern int32_t base_yaw;

extern int32_t target_temp;
extern int32_t base_temp;

extern int32_t target_rpm;
extern int32_t base_rpm;
extern struct input car_input;


int32_t control_yaw(int32_t steer);
int32_t control_temperature(int32_t pan_power);
int32_t control_rpm(int32_t throttle_position, int32_t gear_position);

#ifdef __cplusplus
}
#endif
