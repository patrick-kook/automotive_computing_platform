#ifndef CAN_H
#define CAN_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <net/if.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <linux/can.h>
#include <linux/can/raw.h>

int soc;
int read_can_port;

int open_port(const char *port);
void read_port(int can_id);
int close_port();
void write_port(int can_id, struct can_frame frame, unsigned char signature[3]);

#endif