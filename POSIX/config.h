#ifndef __CONFIG_H__
#define __CONFIG_H__

#include <stdarg.h>
#include <unistd.h>
#include <sys/uio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <assert.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <netdb.h>
#include <sys/ioctl.h>
#define MAX_PORTS           32
#define MAX_EVENTS          4
#define DEFAULT_UNUSED_PORT     30000
#define DEFAULT_NETWORK_ADDR    ((((((192 << 8) | 168) << 8) | 1) << 8) | 1) // 192.168.1.1
#define DEFAULT_HOST_NAME       "192.168.1.1"

#define SOCK_STATUS_CREATED     (1 << 0)
#define SOCK_STATUS_LISTENING   (1 << 1)
#define SOCK_STATUS_CONNECTING  (1 << 2)
#define SOCK_STATUS_CONNECTED   (1 << 3)
#define SOCK_STATUS_CLOSING     (1 << 4)


#endif
