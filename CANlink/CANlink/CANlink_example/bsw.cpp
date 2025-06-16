#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
//can
#include <SPI.h>
#include "mcp2515_can.h"


#define TIMER1_US	10000U	/* 1 sec */

#define LEN_BUF 128
mcp2515_can CAN(9);




byte CAN_sendMsg(unsigned long id,byte len,const byte* buf)
{
	return CAN.sendMsgBuf(id,0,0,len,buf,0);
}

byte CAN_checkMsg()
{
	return CAN.checkReceive();
}
byte CAN_readMsg( unsigned long *id, unsigned char *len, unsigned char *buf)
{
	return CAN.readMsgBufID(id, len, buf);
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
	Serial.begin(9600);
	while (CAN_OK != CAN.begin(CAN_500KBPS)) {
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
