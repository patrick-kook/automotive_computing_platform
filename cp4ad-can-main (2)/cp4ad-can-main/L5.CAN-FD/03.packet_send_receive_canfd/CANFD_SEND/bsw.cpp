#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>  
//can
#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"


#define TIMER1_US	10000U	

#define LEN_BUF 128
ACAN2517FD CAN(9,SPI, 2);

void send_simple_tlv(uint32_t can_id, uint8_t value_type, const uint8_t* value_data, uint16_t value_len)
{
	/////////////////////write here /////////////////////////////



	////////////////////////////////////////////////////////////
    printfSerial("--------------------------------------------------\n");
    printfSerial("CAN ID       : 0x%03X\n", msg.id);
    printfSerial("Value_Type   : 0x%02X\n", msg.buf[0]);
    printfSerial("Value_Len    : %d\n", value_len);
    printfSerial("[VALUE]\n");
    for (uint8_t i = 2; i < msg.len; i++) {
        printfSerial("0x%02X ", msg.buf[i]);
        if ((i - 2) % 8 == 7) {
            printfSerial("\n");
        }
    }
    printfSerial("\n");
}



void pad(can_fd_msg *c_msg)
{
    CANFDMessage cpp_msg;
    cpp_msg.len = c_msg->len;

    memcpy(cpp_msg.data, c_msg->buf, c_msg->len);
    cpp_msg.pad();

    c_msg->len = cpp_msg.len;

    if (c_msg->buf) {
        free(c_msg->buf);
    }
    c_msg->buf = (unsigned char*)malloc(c_msg->len);
    memcpy(c_msg->buf, cpp_msg.data, c_msg->len);
}

byte begin() {
    ACAN2517FDSettings settings (ACAN2517FDSettings::OSC_20MHz, 125UL * 1000UL, DataBitRateFactor::x8) ;
    settings.mRequestedMode = ACAN2517FDSettings::NormalFD;
	settings.mDriverTransmitFIFOSize = 1 ;
  	settings.mDriverReceiveFIFOSize = 1 ;
	const uint32_t errorCode = CAN.begin (settings, [] { CAN.isr () ; }) ;

    return errorCode;
}

byte CAN_sendMsg(can_fd_msg msg)
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

byte CAN_readMsg(can_fd_msg *msg)
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
	printfSerial("let's serial \n");

	while (CAN_OK != begin()) {
		printfSerial("init fail\n");
		printfSerial("%d\n",begin());
	}
	OsEE_atmega_startTimer1(TIMER1_US);
	printfSerial("CAN init\n");
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
