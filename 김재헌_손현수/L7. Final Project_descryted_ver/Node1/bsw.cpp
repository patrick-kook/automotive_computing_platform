#include "ee.h"
#include "Arduino.h"
#include "bsw.h"
#include <avr/io.h>
#include <avr/interrupt.h>
//can

#include <SPI.h>
#include "lib/ACAN2517FD/ACAN2517FD.h"

#include "Car_Model.h"

#define TIMER1_US   10000U   

#define LEN_BUF 128

#define BLOCK_SIZE 5
#define KEY_SIZE 5

uint64_t key = 0xABCDE12345;

ACAN2517FD CAN(9,SPI, 2);

 // use tips : printfSerial("%d",searchRemainMemory());///////////////////////
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
//////////////////////////////////////////////////////////////////////////////

byte begin() {
    ACAN2517FDSettings settings (ACAN2517FDSettings::OSC_20MHz, 500UL * 1000UL, DataBitRateFactor::x1) ;
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
   message.type = CANFDMessage::CAN_DATA;
   message.ext = false; // 11-bit ID 사용
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
      printfSerial("%d\n",begin());
   }
   OsEE_atmega_startTimer1(TIMER1_US);
   printfSerial("CAN init\n");
}

#define  _BV(bit) (1 << (bit))   // <<--
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

   StartOS(OSDEFAULTAPPMODE);   /* never returns */

   return 0;
}

uint32_t feistel(uint32_t half, uint64_t key) {
    half ^= (uint32_t)(key & 0xFFFFFFFF);
    return (half << 3) | (half >> (32 - 3));
}

uint64_t simple_des(uint64_t input, uint64_t key40, int encrypt) {
    uint32_t left  = (input >> 20) & 0xFFFFF;
    uint32_t right = input & 0xFFFFF;
    if (encrypt) {
        for (int i = 0; i < 2; i++) {
            uint32_t temp = right;
            right = left ^ (feistel(right, key40) & 0xFFFFF);
            left = temp;
        }
    } else {
        for (int i = 0; i < 2; i++) {
            uint32_t temp = left;
            left = right ^ (feistel(left, key40) & 0xFFFFF);
            right = temp;
        }
    }

    return (((uint64_t)left << 20) | right) & 0xFFFFFFFFFFULL;
}

uint64_t bytes_to_uint64(unsigned char *block) {
    uint64_t result = 0;
    for (int i = 0; i < BLOCK_SIZE; i++) {
        result = (result << 8) | block[i];
    }
    return result;
}

void uint64_to_bytes(uint64_t value, unsigned char *block) {
    for (int i = BLOCK_SIZE-1; i >= 0; i--) {
        block[i] = value & 0xFF;
        value >>= 8;
    }
}
void encrypt(unsigned char *plaintext, unsigned char *encrypted) {
    uint64_t plain64 = bytes_to_uint64(plaintext);
    uint64_t cipher64 = simple_des(plain64, key, 1);
    uint64_to_bytes(cipher64, encrypted);
}

void decrypt(unsigned char *encrypted, unsigned char *decrypted) {
    uint64_t cipher64 = bytes_to_uint64(encrypted);
    uint64_t plain64 = simple_des(cipher64, key, 0);
    uint64_to_bytes(plain64, decrypted);
}

static void mini_hash24(const unsigned char *data, size_t len, unsigned char out[3]) {
    uint32_t h = 0xABCDEF;
    for (size_t i = 0; i < len; i++) {
        h ^= (uint32_t)data[i] + i * 13;
        h = (h << 5) | (h >> 27);
    }
    h &= 0xFFFFFF;
    out[0] = (h >> 16) & 0xFF;
    out[1] = (h >>  8) & 0xFF;
    out[2] =  h        & 0xFF;
}

static int is_prime(uint32_t x) {
    if (x < 2) return 0;
    for (uint32_t i = 2; i*i <= x; i++)
        if (x % i == 0) return 0;
    return 1;
}

static int32_t modinv32(int32_t e, int32_t phi) {
    int32_t t=0, newt=1, r=phi, newr=e;
    while (newr) {
        int32_t q = r/newr;
        int32_t tmp=newt; newt=t-q*newt; t=tmp;
        tmp=newr; newr=r-q*newr; r=tmp;
    }
    if (r>1) return -1;
    if (t<0) t+=phi;
    return t;
}

static uint32_t modexp(uint32_t b, uint32_t e, uint32_t m) {
    uint64_t r=1, base=b%m;
    while (e) {
        if (e&1) r=(r*base)%m;
        base=(base*base)%m;
        e>>=1;
    }
    return (uint32_t)r;
}

static void derive_rsa(const unsigned char priv[2], uint32_t *n, uint32_t *d) {
    uint32_t seed = (priv[0] << 8) | priv[1];

    while (1) {
        uint32_t p = ((seed >> 4) & 0x0FFF) | 0x0800;
        while (!is_prime(p)) p++;
        uint32_t q = (seed & 0x0FFF) | 0x0800;
        while (!is_prime(q)) q++;
        if (p == q) {
            seed++;
            continue;
        }
        *n = p * q;
        uint32_t phi = (p - 1) * (q - 1);
        int32_t dinv = modinv32(17, phi);

        if (dinv != -1) {
            *d = (uint32_t)dinv;
            break;
        }
        seed++;
    }
}

int micro_verify(const unsigned char message[5], const unsigned char pub[3], const unsigned char sig[3], unsigned char hash[3], unsigned char decrypted_sig[3]) {
    unsigned char h24[3];
    mini_hash24(message, 5, h24);
    uint32_t n     = ((uint32_t)pub[0]<<16)|(pub[1]<<8)|pub[2];
    uint32_t hval  = ((uint32_t)h24[0]<<16)|(h24[1]<<8)|h24[2];
    uint32_t h_mod = hval % n;
    uint32_t s     = ((uint32_t)sig[0]<<16)|(sig[1]<<8)|sig[2];
    uint32_t rec   = modexp(s, 17, n);
    hash[0] = ((uint32_t)h_mod >> 16) & 0xFF;
    hash[1] = (h_mod >>  8) & 0xFF;
    hash[2] =  h_mod        & 0xFF;
    decrypted_sig[0] = ((uint32_t)rec >> 16) & 0xFF;
    decrypted_sig[1] = (rec >>  8) & 0xFF;
    decrypted_sig[2] =  rec        & 0xFF;
    return rec == h_mod;
}
