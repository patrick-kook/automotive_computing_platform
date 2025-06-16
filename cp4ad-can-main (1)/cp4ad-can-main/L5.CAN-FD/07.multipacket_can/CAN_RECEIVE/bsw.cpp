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

//write here //
#define SET_BPS 500UL * 1000UL
DataBitRateFactor dataBitRate = DataBitRateFactor::x1;
#define SEGMENT_LEN         8         
////////////////     


#define HEADER_SIZE         2       
       
#define SEGMENT_DATA_LEN    (SEGMENT_LEN - HEADER_SIZE)  
#define MAX_MESSAGE_SIZE    32767*(6-3)            


unsigned char *merge_buffer = NULL;
size_t merge_buffer_length = 0;
unsigned int next_seq = 0;
bool discarding_message = false;
int reception_complete = 0;



void show_message(unsigned char *msg, size_t msg_length)
{
    printfSerial("Received complete message, length: %d\n", (int)msg_length);
    for (size_t i = 0; i < msg_length; i++) {
        printfSerial("%03d ", msg[i]);
        if ((i + 1) % 6 == 0)
            printfSerial("\n");
    }
    printfSerial("\n");
}

void CAN_receive_handler(unsigned char *this_data, size_t this_data_length)
{
    int receive_repeat=1;

    if (reception_complete>=receive_repeat) {
        
        if(reception_complete==receive_repeat) {
            printfSerial("Reception complete. Ignoring further messages.\n");
            reception_complete++;
        }
        return;
    }

    if (this_data_length < HEADER_SIZE) {
        printfSerial("Error: No Header\n");
        return;
    }
    

    uint16_t header_field = ((uint16_t)this_data[0] << 8) | this_data[1];
    uint16_t seq = header_field & 0x7FFF;          
    bool isLast = (header_field & 0x8000) ? true : false;  


    if (discarding_message) {
        if (seq == 0) { 
            discarding_message = false;
            next_seq = 0;
            printfSerial("New message start detected (seq==0). Resuming reception.\n");
        } else {
            printfSerial("Discarding segment due to previous sequence error, seq: %u\n", seq);

            if (isLast) {
                next_seq = 0;
            }
            return;
        }
    }

    if (seq != next_seq) {
        printfSerial("Sequence error: expected %u but received %u\n", next_seq, seq);
        discarding_message = true;
        if (merge_buffer) {
            free(merge_buffer);
            merge_buffer = NULL;
        }
        merge_buffer_length = 0;
        next_seq = 0;
        return;
    }

    


    unsigned char this_payload_length = this_data_length - HEADER_SIZE;
    size_t temp_merge_length = merge_buffer_length + this_payload_length;
    
    if (temp_merge_length > MAX_MESSAGE_SIZE) {
        printfSerial("Error: Received message exceeds maximum allowed size!\n");
        if (merge_buffer) {
            free(merge_buffer);
            merge_buffer = NULL;
        }
        merge_buffer_length = 0;
        next_seq = 0;
        return;
    }
    
    printfSerial("%d memory remains  ",searchRemainMemory());

    unsigned char *new_buffer = (unsigned char *)realloc(merge_buffer, temp_merge_length);
    if (!new_buffer) {
        printfSerial("Memory allocation failed in CAN_receive_handler!\n");
        return;
    }
    merge_buffer = new_buffer;
    memcpy(merge_buffer + merge_buffer_length, this_data + HEADER_SIZE, this_payload_length);
    merge_buffer_length = temp_merge_length;
    
    next_seq++;  
    
    printfSerial("%d's Job done\n",seq);
    

    if (isLast) {
        
        show_message(merge_buffer, merge_buffer_length);
        free(merge_buffer);
        merge_buffer = NULL;
        merge_buffer_length = 0;
        next_seq = 0;
        reception_complete++; 
    }
}
int searchRemainMemory() {
    
    int low = 0;
    int high = freeMemory();
    int mid;
    int best = 0;
    void *ptr = NULL;


    while (low <= high) {
        mid = (low + high) / 2;
        ptr = malloc(mid);
        if (ptr) {
            best = mid;       
            free(ptr);
            low = mid + 1;    
        } else {
            high = mid - 1;  
        }
    }
    return best;
}
int freeMemory() {
    extern int __heap_start, *__brkval;
    int v;
    return (int)&v - (__brkval == 0 ? (int)&__heap_start : (int)__brkval);
}




ACAN2517FD CAN(9,SPI, 2);

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
