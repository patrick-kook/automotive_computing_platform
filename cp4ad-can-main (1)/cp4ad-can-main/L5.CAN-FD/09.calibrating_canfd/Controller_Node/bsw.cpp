#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>  
//can
#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"
#include "Arduino.h"
#include "Car_Model.h"


#define TIMER1_US	10000U	

#define LEN_BUF 128
ACAN2517FD CAN(9,SPI, 2);




void send_simple_tlv(uint32_t can_id, uint8_t value_type, const uint8_t* value_data, uint16_t value_len)
{
    if (value_len > 60) {
        printfSerial("[ERROR] TLV too large for single frame\n");
        return;
    }


    uint8_t* buf = (uint8_t*)malloc(64);
    if (buf == NULL) {
        printfSerial("[ERROR] Memory allocation failed\n");
        return;
    }

    buf[0] = value_type;
    buf[1] = value_len;

    memcpy(&buf[2], value_data, value_len);

    struct can_fd_msg msg = {0};

    msg.id = can_id;
    msg.buf = buf;              
    msg.len = value_len + 2;

    pad(&msg);
    CAN_sendMsg(msg);


    free(buf); 

}

void handle_simple_tlv(can_fd_msg* msg) {
    if (!msg || !msg->buf || msg->len < 3) {
        printfSerial("[WARN] Invalid TLV Frame\n");
        return;
    }

    const uint8_t* buf = msg->buf;

    uint8_t value_type = buf[0];
    uint16_t value_len = buf[1];

    if (value_len + 2 > msg->len) {
        printfSerial("[WARN] Declared TLV length exceeds actual frame size\n");
        return;
    }

    memmove(msg->buf, msg->buf + 2, value_len);
    msg->len = value_len;
    uint8_t *new_buf = (uint8_t*)realloc(msg->buf, msg->len );
    if (new_buf != NULL) {
        msg->buf = new_buf;
    }

    printfSerial("--------------------------------------------------\n");
    printfSerial("Receive done\n");
    printfSerial("[VALUE]\n");


    
    car_output.target_yaw = (int32_t)((buf[ 0] << 24) |
                                      (buf[ 1] << 16) |
                                      (buf[ 2] <<  8) |
                                      (buf[ 3] <<  0));

    car_output.current_yaw = (int32_t)((buf[ 4] << 24) |
                                       (buf[ 5] << 16) |
                                       (buf[ 6] <<  8) |
                                       (buf[ 7] <<  0));

    car_output.target_temp = (int32_t)((buf[ 8] << 24) |
                                       (buf[ 9] << 16) |
                                       (buf[10] <<  8) |
                                        (buf[11] <<  0));

    // car_output.current_temp = (int32_t)((buf[12] << 24) |
    //                                     (buf[13] << 16) |
    //                                     (buf[14] <<  8) |
    //                                     (buf[15] <<  0));
    car_output.current_temp = (int32_t)((buf[12] << 24) |
                                        (buf[13] << 16) |
                                        (buf[14] <<  8) |
                                        (buf[15] <<  0));

    car_output.target_rpm = (int32_t)((buf[16] << 24) |
                                      (buf[17] << 16) |
                                      (buf[18] <<  8) |
                                      (buf[19] <<  0));

    car_output.current_rpm = (int32_t)((buf[20] << 24) |
                                       (buf[21] << 16) |
                                       (buf[22] <<  8) |
                                       (buf[23] <<  0));
  
    printfSerial("target_yaw   : %ld\n", car_output.target_yaw);
    printfSerial("current_yaw  : %ld\n", car_output.current_yaw);
    printfSerial("diff_yaw     : %ld\n\n", car_output.target_yaw-car_output.current_yaw);
    
    printfSerial("target_temp  : %ld\n", car_output.target_temp);
    printfSerial("current_temp : %ld\n", car_output.current_temp);
    printfSerial("diff_temp    : %ld\n\n", car_output.target_temp-car_output.current_temp);
    
    printfSerial("target_rpm   : %ld\n", car_output.target_rpm);
    printfSerial("current_rpm  : %ld\n", car_output.current_rpm);
    printfSerial("diff_rpm     : %ld\n", car_output.target_rpm-car_output.current_rpm);
    printfSerial("\n");
    free(new_buf);
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
