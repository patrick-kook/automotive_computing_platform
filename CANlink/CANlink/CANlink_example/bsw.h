#ifndef BSW_H_
#define BSW_H_

#include "ee.h"
#include "Arduino.h"
#define CAN_OK              (0)
#define CAN_FAILINIT        (1)
#define CAN_FAILTX          (2)
#define CAN_MSGAVAIL        (3)
#define CAN_NOMSG           (4)
#define CAN_CTRLERROR       (5)
#define CAN_GETTXBFTIMEOUT  (6)
#define CAN_SENDMSGTIMEOUT  (7)
#define CAN_FAIL            (0xff)

#ifdef __cplusplus
extern "C"{
#endif


void mdelay(unsigned long delay_ms);
void printfSerial(const char *fmt, ... );
byte CAN_sendMsg(unsigned long id,byte len,const byte* buf);
byte CAN_checkMsg();
byte CAN_readMsg( unsigned long *id, unsigned char *len, unsigned char *buf);

#ifdef __cplusplus
}
#endif






#endif /* BSW_H_ */
