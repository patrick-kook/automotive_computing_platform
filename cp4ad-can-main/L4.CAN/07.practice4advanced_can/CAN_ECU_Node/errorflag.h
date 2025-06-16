#ifndef ERROR_FLAGS_H
#define ERROR_FLAGS_H

#include <stdint.h>


#define RPM_CALC         (1 << 0)   // 0b0000 0000 0000 0001 : RPM 계산 오류
#define COOLANT_TEMP     (1 << 1)   // 0b0000 0000 0000 0010 : 냉각수 온도 이상
#define OIL_PRESSURE     (1 << 2)   // 0b0000 0000 0000 0100 : 오일 압력 이상
#define BATTERY_VOLTAGE  (1 << 3)   // 0b0000 0000 0000 1000 : 배터리 전압 이상
#define FUEL_PRESSURE    (1 << 4)   // 0b0000 0000 0001 0000 : 연료 압력 이상
#define ABS_ERROR        (1 << 5)   // 0b0000 0000 0010 0000 : ABS 오류
#define TRANSMISSION     (1 << 6)   // 0b0000 0000 0100 0000 : 변속기 오류
#define COMMUNICATION    (1 << 7)   // 0b0000 0000 1000 0000 : 통신 오류
#define ENGINE_OVERHEAT  (1 << 8)   // 0b0000 0001 0000 0000 : 엔진 과열
#define BRAKE_SYSTEM     (1 << 9)   // 0b0000 0010 0000 0000 : 브레이크 시스템 오류
#define AIRBAG_FAULT     (1 << 10)  // 0b0000 0100 0000 0000 : 에어백 이상
#define TIRE_PRESSURE    (1 << 11)  // 0b0000 1000 0000 0000 : 타이어 압력 경고
#define EMISSION_ERROR   (1 << 12)  // 0b0001 0000 0000 0000 : 배출가스 오류
#define SENSOR_MALFUNC   (1 << 13)  // 0b0010 0000 0000 0000 : 센서 이상
#define OVER_SPEED       (1 << 14)  // 0b0100 0000 0000 0000 : 과속 감지
#define MAINTENANCE      (1 << 15)  // 0b1000 0000 0000 0000 : 정비 필요


typedef uint16_t ErrorFlags;
// for extern
extern ErrorFlags error;


#endif // ERROR_FLAGS_H

