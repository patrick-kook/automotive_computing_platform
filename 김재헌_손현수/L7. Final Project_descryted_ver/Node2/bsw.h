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

#define BLOCK_SIZE 5
#define KEY_SIZE 5


#ifdef __cplusplus
extern "C"{
#endif

struct can_msg {
    unsigned char len;
    unsigned long id;
    unsigned char* buf;
    
};

void mdelay(unsigned long delay_ms);
void printfSerial(const char *fmt, ... );
byte CAN_sendMsg(struct can_msg msg);
byte CAN_checkMsg();
byte CAN_readMsg(struct can_msg* msg);

uint32_t feistel(uint32_t half, uint64_t key);
uint64_t simple_des(uint64_t input, uint64_t key, int encrypt);
uint64_t bytes_to_uint64(unsigned char *block);
void uint64_to_bytes(uint64_t value, unsigned char *block);
void encrypt(unsigned char *plaintext, unsigned char *encrypted);
void decrypt(unsigned char *encrypted, unsigned char *decrypted);


#ifdef __cplusplus
}
#endif
#endif /* BSW_H_ */

