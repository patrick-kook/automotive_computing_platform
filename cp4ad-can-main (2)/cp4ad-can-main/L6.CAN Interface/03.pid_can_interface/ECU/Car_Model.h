#pragma once

#include <stdint.h>    
#include "ee.h"
#include "Arduino.h"

#ifdef __cplusplus
extern "C" {
#endif



extern int16_t target_rpm;
extern int16_t base_rpm;

int16_t control_rpm(int8_t throttle_position);

#ifdef __cplusplus
}
#endif
