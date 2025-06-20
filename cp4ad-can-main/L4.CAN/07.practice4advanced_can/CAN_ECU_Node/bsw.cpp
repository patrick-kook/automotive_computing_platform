#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
//can
#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"

// for error flag
#include "errorflag.h"

#define LEN_BUF 128
#define TIMER1_US	10000U	
#define SET_BPS 125UL * 1000UL
DataBitRateFactor dataBitRate = DataBitRateFactor::x1;

ACAN2517FD CAN(9,SPI, 2);

void Remote_callback(const CANFDMessage &msg);

void printErrorFlags(ErrorFlags error) {
    
    // print binary
    printfSerial("Error Code :\n0b");
    for (int i = 15 ; i >= 0; i--) 
    {
        printfSerial("%d", (error >> i) & 0x01); //print 1 bit
        if (i % 4 == 0) printfSerial(" ");
    }
    printfSerial("\n");

    // no error
    if (error == 0) 
    {
        printfSerial("No Error\n");
        return;
    }
    
    // print error code
    printfSerial("Error :\n");

    if (error & RPM_CALC)
        printfSerial("0b0000 0000 0000 0001 - RPM calculation error\n");
    if (error & COOLANT_TEMP)
        printfSerial("0b0000 0000 0000 0010 - Coolant temperature abnormal\n");
    if (error & OIL_PRESSURE)
        printfSerial("0b0000 0000 0000 0100 - Oil pressure abnormal\n");
    if (error & BATTERY_VOLTAGE)
        printfSerial("0b0000 0000 0000 1000 - Battery voltage abnormal\n");
    if (error & FUEL_PRESSURE)
        printfSerial("0b0000 0000 0001 0000 - Fuel pressure abnormal\n");
    if (error & ABS_ERROR)
        printfSerial("0b0000 0000 0010 0000 - ABS error\n");
    if (error & TRANSMISSION)
        printfSerial("0b0000 0000 0100 0000 - Transmission system error\n");
    if (error & COMMUNICATION)
        printfSerial("0b0000 0000 1000 0000 - Communication error\n");
    if (error & ENGINE_OVERHEAT)
        printfSerial("0b0000 0001 0000 0000 - Engine overheating\n");
    if (error & BRAKE_SYSTEM)
        printfSerial("0b0000 0010 0000 0000 - Brake system error\n");
    if (error & AIRBAG_FAULT)
        printfSerial("0b0000 0100 0000 0000 - Airbag fault\n");
    if (error & TIRE_PRESSURE)
        printfSerial("0b0000 1000 0000 0000 - Tire pressure warning\n");
    if (error & EMISSION_ERROR)
        printfSerial("0b0001 0000 0000 0000 - Emission system error\n");
    if (error & SENSOR_MALFUNC)
        printfSerial("0b0010 0000 0000 0000 - Sensor malfunction\n");
    if (error & OVER_SPEED)
        printfSerial("0b0100 0000 0000 0000 - Overspeed detected\n");
    if (error & MAINTENANCE)
        printfSerial("0b1000 0000 0000 0000 - Maintenance required\n");
}

// send remote frame
byte sendRemote(can_msg msg)
{
    CANFDMessage remoteFrame;
    remoteFrame.id = msg.id;  
    remoteFrame.len = 0;
    remoteFrame.type = CANFDMessage::CAN_REMOTE;  
    return CAN.tryToSend(remoteFrame);
}

byte begin() {

    ACAN2517FDSettings settings (ACAN2517FDSettings::OSC_20MHz, SET_BPS, dataBitRate);
	printfSerial("set speed: %ld kbps\n",SET_BPS/1000UL);
	printfSerial("set message frame speed: x%d\n",(int)dataBitRate);
    settings.mRequestedMode = ACAN2517FDSettings::NormalFD;
	settings.mDriverTransmitFIFOSize = 1 ;
  	settings.mDriverReceiveFIFOSize = 1 ;



    //////////////////////////////write here//////////////////////////////////////////////
    // reference : 04.callback_can
    // set filter
    ACAN2517FDFilters filters;
    filters.appendFrameFilter(kStandard,0x0ff,Remote_callback);
    /////////////////////////////////////////////////////////////////////////////////////



	const uint32_t errorCode = CAN.begin (settings, [] { CAN.isr () ; },filters) ;
    return errorCode;
}

// check buffer and call callback-function
byte callbackRoutine(void)
{
	return CAN.dispatchReceivedMessage(nullptr);
}

// callback-function
void Remote_callback(const CANFDMessage &msg) {
    
    // error is extern_variable while this_error is local_variable
    // see errorflag.h
    if(error)
    {
        // declare msg
        struct can_msg callback_msg = {0};

        // static array
        unsigned char buf_send[2];
        
        

        //////////////////////////////write here//////////////////////////////////////////////
        // reference : 05.remote_can
        // init msg
        callback_msg.id = 0x011;
        callback_msg.len = 2;
        
        // assign error code
        buf_send[0] = (error >> 8) & 0xff;
        buf_send[1] = (error >> 0) & 0xff; 
        /////////////////////////////////////////////////////////////////////////////////////



        callback_msg.buf = buf_send;
        CAN_sendMsg(callback_msg);
        printfSerial("[ID 0x011] Respond Now ");
    }
    printfSerial("\n");
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
