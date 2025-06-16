#ifndef BSW_H_
#define BSW_H_

#include "ee.h"
#include "Arduino.h"
#define CAN_OK              (0)
#define CAN_FAILINIT        (1)
#define CAN_FAILTX          (2)
#define CAN_MSGAVAIL        (3) // dont use- hong
#define CAN_NOMSG           (4)
#define CAN_CTRLERROR       (5)
#define CAN_GETTXBFTIMEOUT  (6)
#define CAN_SENDMSGTIMEOUT  (7)
#define CAN_FAIL            (0xff)

#ifdef __cplusplus
extern "C"{
#endif

struct can_fd_msg {
    unsigned char len;
    unsigned long id;
    unsigned char* buf;
};

void mdelay(unsigned long delay_ms);
void printfSerial(const char *fmt, ... );
byte CAN_sendMsg(struct can_fd_msg msg);
byte CAN_checkMsg();
byte CAN_readMsg(struct can_fd_msg* msg);
void pad(struct can_fd_msg *c_msg);
void send_simple_tlv(uint32_t can_id, uint8_t value_type, const uint8_t* value_data, uint16_t value_len);


#ifdef __cplusplus
}
#endif






#endif /* BSW_H_ */
