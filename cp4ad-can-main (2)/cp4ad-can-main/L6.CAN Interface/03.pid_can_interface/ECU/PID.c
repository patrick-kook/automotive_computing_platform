#include "PID.h"

PIDState rpm_pid = {0};

uint8_t pid_controller(int16_t current, int16_t target, float Kp, float Ki, float Kd, PIDState* state) {
    int16_t error = target - current;

    state->integral += error;
    int16_t derivative = error - state->prev_error;
    state->prev_error = error;

    float output = Kp * error + Ki * state->integral + Kd * derivative;

    // Saturation
    if (output > 100.0f) output = 100.0f;
    if (output < 0.0f) output = 0.0f;



    return (uint8_t)output;
}
