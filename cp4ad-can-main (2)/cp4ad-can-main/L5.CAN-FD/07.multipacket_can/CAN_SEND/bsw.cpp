#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
//can
#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"


#define LEN_BUF 128
#define TIMER1_US	10000U	


//write here//
#define SET_BPS 500UL * 1000UL
DataBitRateFactor dataBitRate = DataBitRateFactor::x1;
#define SEGMENT_LEN         8     
/////////////                  


#define HEADER_SIZE         2   
#define SEGMENT_DATA_LEN    (SEGMENT_LEN - HEADER_SIZE)  



ACAN2517FD CAN(9,SPI, 2);

int send_full_message_can(unsigned char id, unsigned char *data, size_t full_length)
{
    
	if(full_length>32767*(6-3))
	{
		printfSerial("Too Large data");
		return -1;
	} 

    unsigned int num_segments = (full_length + SEGMENT_DATA_LEN - 1) / SEGMENT_DATA_LEN;
    int send_full_status = 1; 
    
    for(unsigned int segment_idx = 0; segment_idx < num_segments; segment_idx++)
    {

        unsigned char segment_buf[SEGMENT_LEN] = {0};
        

        size_t offset = segment_idx * SEGMENT_DATA_LEN;
        unsigned char segment_length = SEGMENT_DATA_LEN;
        if(segment_idx == num_segments - 1) {

            segment_length = full_length - offset;
        }
        

        unsigned int header_field = segment_idx & 0x7FFF; 
        if(segment_idx == num_segments - 1) {
            header_field |= 0x8000;  
        }

        segment_buf[0] = (unsigned char)(header_field >> 8);
        segment_buf[1] = (unsigned char)(header_field & 0xFF);
        

        memcpy(&segment_buf[HEADER_SIZE], data + offset, segment_length);
        
 
        int result = send_segment_can(id, segment_buf, HEADER_SIZE + segment_length, segment_idx);
        if(!result)
        {
            send_full_status = 0;
            break;
        }
        ///////write here/////
        
        //////////////////////
    }
    return send_full_status;
}

int send_segment_can(unsigned char id, unsigned char *segment_buf, unsigned char segment_buf_length, unsigned int segment_idx)
{
    struct can_msg msg;
    msg.id = id;
    msg.len = segment_buf_length;
    msg.buf = segment_buf;
    
    const int max_attempts = 3;
    int attempts = 0;
    int sendStatus = 0;
    
    while(attempts < max_attempts)
    {

        sendStatus = CAN_sendMsg(msg);
        if(sendStatus)
        {
            
            printfSerial("Segment %d sent\n", segment_idx);
            for(unsigned char i = 0; i < segment_buf_length; i++){
                 
                printfSerial(" %d", segment_buf[i]);
                
                if(i==1) printfSerial(" :");
            }
            printfSerial("\n");
            break;
        }
        attempts++;
    }
    
    if(!sendStatus)
    {
        printfSerial("Failed to send segment %d after %d attempts\n", segment_idx, attempts);
    }
    
    return sendStatus;
}



byte begin() {

    ACAN2517FDSettings settings (ACAN2517FDSettings::OSC_20MHz, SET_BPS, dataBitRate);
	printfSerial("set speed: %ld kbps\n",SET_BPS/1000UL);
	printfSerial("set message frame speed: x%d\n",(int)dataBitRate);
    settings.mRequestedMode = ACAN2517FDSettings::NormalFD;
	settings.mDriverTransmitFIFOSize = 1 ;
  	settings.mDriverReceiveFIFOSize = 1 ;
	const uint32_t errorCode = CAN.begin (settings, [] { CAN.isr () ; }) ;

    return errorCode;
}


byte CAN_sendMsg(can_msg msg)
{
	
	CANFDMessage message;
    message.id = msg.id;
	message.len = msg.len;
    memcpy(message.data, msg.buf, message.len);

    return CAN.tryToSend(message);

}
byte CAN_checkMsg()
{
	return CAN.available();
}
byte CAN_readMsg(can_msg *msg)
{
    CANFDMessage message;
    if (!CAN.available()) return false;

    CAN.receive(message);
    msg->id = message.id;
    msg->len = message.len;
    msg->buf = (byte*)malloc(msg->len);
    if (!msg->buf) {
        printfSerial("Memory allocation failed in CAN_readMsg\n");
        return false;
    }

    memcpy(msg->buf, message.data, msg->len); 

    return true;
}


void padding(struct can_msg *msg, int start_idx, int end_idx)
{
	for(;start_idx<=end_idx;start_idx++)
	{
		msg->buf[start_idx]=0;
	}
}

void mdelay(unsigned long delay_ms)
{
	unsigned long prev_ms = millis(), current_ms = millis();
	unsigned long period_ms = 20, cnt = 0;
	while (cnt < (delay_ms / period_ms)) {
		current_ms = millis();
		if (current_ms - prev_ms >= period_ms) {
			cnt++;
			prev_ms = millis();
		}
	}
}
void printfSerial(const char *fmt, ... )
{
    char buf[LEN_BUF];
    va_list args;
    va_start (args, fmt );
    vsnprintf(buf, LEN_BUF, fmt, args);
    va_end (args);
    Serial.print(buf);
}

 /* extern "C" */

void loop(void)
{
	;
}

void setup(void)
{
	Serial.begin(115200);

	SPI.begin();
	printfSerial("let's serial\n");
	int errorcode;
	while (CAN_OK != (errorcode=begin())) {
		printfSerial("init fail\n error code: ");
		printfSerial("%d\n",errorcode);
	}
	OsEE_atmega_startTimer1(TIMER1_US);
	printfSerial("CAN init\n");
	printfSerial("--------------------------------------------------\n");
}

#define  _BV(bit) (1 << (bit))	// <<--
int main(void)
{
	PORTC = _BV(PC0); // PC0 == PA0
	PCICR = _BV(PCIE1);   //PCIE1
	PCMSK1 = _BV(PCINT8);  //PCINT8
	EIFR = 0xff;
	sei();

	init();

#if defined(USBCON)
	USBDevice.attach();
#endif
	
	setup();



	StartOS(OSDEFAULTAPPMODE);	/* never returns */

	return 0;
}
