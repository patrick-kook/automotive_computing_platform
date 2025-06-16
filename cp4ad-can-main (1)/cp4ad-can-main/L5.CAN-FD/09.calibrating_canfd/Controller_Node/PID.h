#pragma once

#ifdef __cplusplus
extern "C" {
#endif


typedef struct {

    float integral;
    float prev_error;

} PIDState;


extern PIDState yaw_pid;
extern PIDState temp_pid;
extern PIDState rpm_pid;


float pid_controller(const float current, const float target, const float Kp, const float Ki, const float Kd, PIDState* state);

#ifdef __cplusplus
}
#endif
