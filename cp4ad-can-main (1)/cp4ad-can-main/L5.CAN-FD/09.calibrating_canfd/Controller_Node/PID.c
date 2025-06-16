#include "PID.h"


PIDState yaw_pid = {0};
PIDState temp_pid = {0};
PIDState rpm_pid = {0};

float pid_controller(const float current, const float target, const float Kp, const float Ki, const float Kd, PIDState* state) {
    float error = target - current;
    
    state->integral += error;
    float derivative = error - state->prev_error;
    state->prev_error = error;

    float output = Kp * error + Ki * state->integral + Kd * derivative;
    return output;
}

