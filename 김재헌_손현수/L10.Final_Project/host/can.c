#include "can.h"

int open_port(const char *port)
{
    struct ifreq ifr;
    struct sockaddr_can addr;
    soc = socket(PF_CAN, SOCK_RAW, CAN_RAW);
    if (soc < 0) {
	    printf("error!");
        return (-1);
    }
    addr.can_family = AF_CAN;
    strcpy(ifr.ifr_name, port);
    if (ioctl(soc, SIOCGIFINDEX, &ifr) < 0) {
	    printf("error!");
        return (-1);
    }
    addr.can_ifindex = ifr.ifr_ifindex;
    fcntl(soc, F_SETFL, O_NONBLOCK);
    if (bind(soc, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
	    printf("binding error!");
        return (-1);
    }

    return 0;
}

int close_port()
{
    close(soc);
    return 0;
}

void write_port(int can_id, struct can_frame frame, unsigned char signature[3]){
    frame.can_id = can_id;
    frame.can_dlc = 8;
    for (int i = 5; i < 8; i++){
        frame.data[i] = signature[i-5];
    }
    ssize_t nbytes1 = write(soc, &frame, sizeof(struct can_frame));
}