# 1 "C:\\Users\\HONGKE~1\\DOCUME~1\\GitHub\\test\\L5D965~1.CAN\\09678D~1.CAL\\CANFD_~1\\PID.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\HONGKE~1\\DOCUME~1\\GitHub\\test\\L5D965~1.CAN\\09678D~1.CAL\\CANFD_~1\\PID.c"
# 1 "C:\\Users\\HONGKE~1\\DOCUME~1\\GitHub\\test\\L5D965~1.CAN\\09678D~1.CAL\\CANFD_~1\\PID.h" 1
       






typedef struct {

    float integral;
    float prev_error;

} PIDState;


extern PIDState yaw_pid;
extern PIDState temp_pid;
extern PIDState rpm_pid;


float pid_controller(const float current, const float target, const float Kp, const float Ki, const float Kd, PIDState* state);
# 2 "C:\\Users\\HONGKE~1\\DOCUME~1\\GitHub\\test\\L5D965~1.CAN\\09678D~1.CAL\\CANFD_~1\\PID.c" 2


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
