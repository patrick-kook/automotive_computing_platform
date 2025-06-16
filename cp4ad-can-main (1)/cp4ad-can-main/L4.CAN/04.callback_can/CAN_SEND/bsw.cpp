#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
//can
#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"



#define TIMER1_US	10000U	

#define LEN_BUF 128
ACAN2517FD CAN(9,SPI, 2);

void ID30_callback(const CANFDMessage &msg);
void ID50_callback(const CANFDMessage &msg);

byte begin() {
    ACAN2517FDSettings settings (ACAN2517FDSettings::OSC_20MHz, 125UL * 1000UL, DataBitRateFactor::x1) ;
    settings.mRequestedMode = ACAN2517FDSettings::NormalFD;

	ACAN2517FDFilters filters;
    filters.appendFrameFilter(kStandard, 0x030, ID30_callback);
    filters.appendFrameFilter(kStandard, 0x050, ID50_callback);
	

	settings.mDriverTransmitFIFOSize = 1 ;
  	settings.mDriverReceiveFIFOSize = 1 ;

	const uint32_t errorCode = CAN.begin (settings, [] { CAN.isr () ; },filters) ;
	
    return errorCode;
}

void ID30_callback(const CANFDMessage &msg) {

	printfSerial("[ID 0x30] Turn on  A/C " );

    
    printfSerial("Data Length: ");
	printfSerial("%d ",msg.len);
    printfSerial("Data: ");
    for (uint8_t i = 0; i < msg.len; i++) {
        printfSerial("%c",msg.data[i]);
        printfSerial(" ");
    }
	printfSerial("\n");
	
}

void ID50_callback(const CANFDMessage &msg) {
	printfSerial("[ID 0x50] Turn off A/C " );

    
    printfSerial("Data Length: ");
	printfSerial("%d ",msg.len);
    printfSerial("Data: ");
    for (uint8_t i = 0; i < msg.len; i++) {
        printfSerial("%c",msg.data[i]);
        printfSerial(" ");
    }
	printfSerial("\n");
	
}

byte callbackRoutine(void)
{
	
	return CAN.dispatchReceivedMessage(nullptr);
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
    if (CAN.available()) {
        CAN.receive(message);
		msg->id=message.id;
		msg->len=message.len;
		
		msg->buf=message.data;
        return true;
    }
    return false;
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
