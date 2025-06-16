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

struct output
{
    int32_t target_yaw;
    int32_t current_yaw;
    int32_t target_temp;
    int32_t current_temp;
    int32_t target_rpm;
    int32_t current_rpm;

};

// 전역 변수
extern int32_t target_yaw;
extern int32_t base_yaw;

extern int32_t target_temp;
extern int32_t base_temp;

extern int32_t target_rpm;
extern int32_t base_rpm;

extern struct output car_output;

// 함수 선언
float control_yaw(int32_t steer);
float control_temperature(int32_t pan_power);
float control_rpm(int32_t throttle_position, int32_t gear_position);

#ifdef __cplusplus
}
#endif
