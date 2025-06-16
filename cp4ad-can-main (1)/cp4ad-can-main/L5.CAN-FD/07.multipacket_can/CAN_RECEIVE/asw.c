#include "bsw.h"




ISR2(TimerISR)
{
    IncrementCounter(counter1);
}

TASK(Task1)
{
    struct can_msg receive_msg = {0};
    if (CAN_checkMsg() == true && (CAN_readMsg(&receive_msg)))
    {
        if(receive_msg.id==0x040)
        {

            CAN_receive_handler(receive_msg.buf, receive_msg.len);
            free(receive_msg.buf);
            receive_msg.buf = NULL;

        }
    
    }
    
    TerminateTask();
}