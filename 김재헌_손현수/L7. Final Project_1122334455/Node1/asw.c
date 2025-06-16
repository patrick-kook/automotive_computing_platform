#include "bsw.h"


uint16_t throttle_adc;
uint16_t lidar_adc;
uint16_t camera_adc;



ISR2(TimerISR)
{
    IncrementCounter(counter1);
};

TASK (TASK_readADC){
    throttle_adc = analogRead(A1);
    lidar_adc = analogRead(A2);

    struct can_msg send_msg = {0};
    send_msg.id = 0x123;
    unsigned char len = 6;
    send_msg.len = len;

    unsigned char* buf_send = (unsigned char*)malloc(sizeof(unsigned char)*len);
    // buf_send[0] = (throttle_adc >> 8) & 0xff;
    // buf_send[1] = (throttle_adc >> 0) & 0xff;
    // buf_send[2] = (lidar_adc >> 8) & 0xff;  
    // buf_send[3] = (lidar_adc >> 0) & 0xff;
    // buf_send[4] = (camera_adc >> 8) & 0xff;
    // buf_send[5] = (camera_adc >> 0) & 0xff;
    // buf_send[6] = 0x00;
    // buf_send[7] = 0x00;

    // OP-TEE 부분
    
    buf_send[0] = 0x11;
    buf_send[1] = 0x22;
    buf_send[2] = 0x33;
    buf_send[3] = 0x44;
    buf_send[4] = 0x55;
    buf_send[5] = 0x00;
    buf_send[6] = 0x00;
    buf_send[7] = 0x00;

    printfSerial("\n");
    printfSerial("-----\n");
    printfSerial("raw: %x ", buf_send[0]);
    printfSerial(" %x ", buf_send[1]);
    printfSerial(" %x ", buf_send[2]);
    printfSerial(" %x ", buf_send[3]);
    printfSerial(" %x ", buf_send[4]);
    printfSerial(" %x ", buf_send[5]);
    printfSerial(" %x ", buf_send[6]);
    printfSerial(" %x \n", buf_send[7]);
    
    encrypt(buf_send, buf_send);
    printfSerial("enc : %x ", buf_send[0]);
    printfSerial(" %x ", buf_send[1]);
    printfSerial(" %x ", buf_send[2]);
    printfSerial(" %x ", buf_send[3]);
    printfSerial(" %x ", buf_send[4]);
    printfSerial(" %x ", buf_send[5]);
    printfSerial(" %x ", buf_send[6]);
    printfSerial(" %x \n", buf_send[7]);
    

    
    send_msg.buf = buf_send;
    CAN_sendMsg(send_msg);        

    // printfSerial("\n");
    // printfSerial("throttle : %hu ", throttle_adc);
    // printfSerial("lidar : %hu ", lidar_adc);
    // printfSerial("CAM: %hu \n", camera_adc);

    free(buf_send);
    TerminateTask();
};

ISR2(ButtonISR)
{
    int a0;
    DisableAllInterrupts();
    if ((PINC & 0x01) != 0) return;
    printfSerial("<BUTTON ISR>");
    camera_adc = analogRead(A0); 

    EnableAllInterrupts();
};