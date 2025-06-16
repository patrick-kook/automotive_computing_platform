#include "bsw.h"
#include "Car_Model.h"

int16_t rpm;

ISR2(TimerISR)
{    
   IncrementCounter(counter1);
}

TASK(Task_CAN_ReadMsg)
{   
   struct can_msg receive_msg ={0};
   uint16_t throttle_get = 0;
   uint16_t lidar_get = 0;
   uint16_t camera_get = 0;
   uint16_t verified = 0;
   
   if(CAN_checkMsg() == true) {
      CAN_readMsg(&receive_msg);
      
      
      // printfSerial("-----------------------------------------\n");
      // printfSerial("enc + sig: %02X %02X %02X %02X %02X %02X %02X %02X\n",
      //                receive_msg.buf[0], receive_msg.buf[1], receive_msg.buf[2], receive_msg.buf[3],
      //                receive_msg.buf[4], receive_msg.buf[5], receive_msg.buf[6], receive_msg.buf[7]);

      unsigned char pub[3] = {0x5D, 0x66, 0xCB};
      unsigned char hash[3] = {0};
      unsigned char decrypted[3] = {0};
      unsigned char message[5] = {};
      unsigned char sig[3] = {};

      memcpy(message, receive_msg.buf, 5);          // msg.buf[0] ~ [4]
      memcpy(sig, receive_msg.buf + 5, 3);          // msg.buf[5] ~ [7]

      verified = micro_verify(message, pub, sig, hash, decrypted);
      // printfSerial("Hash          : %02X %02X %02X\n", hash[0], hash[1], hash[2]);
      // printfSerial("decrypted_sig : %02X %02X %02X\n", decrypted[0], decrypted[1], decrypted[2]);

      decrypt(message, decrypted);

      throttle_get |= (decrypted[0] << 8);
      throttle_get |= (decrypted[1] << 0);
      
      lidar_get |= (decrypted[2] << 8);
      lidar_get |= (decrypted[3] << 0);

      camera_get |= (decrypted[4] << 8);
      printfSerial("throttle : %hu ", throttle_get);
      printfSerial("lidar : %hu ", lidar_get);
      printfSerial("verified: %d\n", verified);


   }
   ActivateTask(SensorTask);
   if (lidar_get < 500){
      if (camera_get > 100 && camera_get < 200) {
         SetEvent(SensorTask, EventLeft);
      }
      else if (camera_get >= 0 && camera_get < 100) {
         SetEvent(SensorTask, EventRight);
      }
      else {
         SetEvent(SensorTask, EventFront);
      }
   }
   else {
    GetResource(rpm_control);
    rpm = control_rpm(throttle_get, false);
    ReleaseResource(rpm_control);
    printfSerial("camera : None ");
    printfSerial("rpm : %u ", rpm);
    }   
   TerminateTask();
};

TASK(SensorTask) {

   EventMaskType mask;
   WaitEvent(EventFront | EventRight| EventLeft);
   GetEvent(SensorTask, &mask);
   if(mask & EventFront) {
      ActivateTask(AvoidFrontTask);
      ClearEvent(EventFront);
   }
   if(mask & EventRight) {
      ActivateTask(AvoidRightTask);
      ClearEvent(EventRight);
   }
   if(mask & EventLeft) {
      ActivateTask(AvoidLeftTask);
      ClearEvent(EventLeft);
   };

   TerminateTask();

}

TASK(AvoidFrontTask) {
   GetResource(rpm_control);
   rpm = control_rpm(1000, true);
   ReleaseResource(rpm_control);
   printfSerial("rpm : %u ", rpm);
   printfSerial("camera : Front ");
   TerminateTask();
}

TASK(AvoidLeftTask) {
   GetResource(rpm_control);
   rpm = control_rpm(1000, true);
   ReleaseResource(rpm_control);
   printfSerial("rpm : %u ", rpm);
   printfSerial("camera : Left ");
   TerminateTask();
}

TASK(AvoidRightTask) {
   GetResource(rpm_control);
   rpm = control_rpm(1000, true);
   ReleaseResource(rpm_control);
   printfSerial("rpm : %u ", rpm);
   printfSerial("camera : Right ");
   TerminateTask();
}

