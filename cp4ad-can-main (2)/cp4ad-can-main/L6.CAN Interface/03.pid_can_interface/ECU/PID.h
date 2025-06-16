#include "bsw.h"
#pragma once

#ifdef __cplusplus
extern "C" {
#endif


typedef struct {

    uint16_t integral;
    uint16_t prev_error;

} PIDState;



extern PIDState rpm_pid;


uint8_t pid_controller(int16_t current, int16_t target, float Kp, float Ki, float Kd, PIDState* state);

#ifdef __cplusplus
}
#endif
