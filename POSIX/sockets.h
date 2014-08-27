#ifndef SOCKETS_H_
#define SOCKETS_H_

//#include "fd.h"

#include "fd.h"
extern network_t __net;
in_port_t __get_unused_port(void);

int socket(int family, int type, int protocol);
int bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
int listen(int sockfd, int backlog);
int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);
int _get_socket_num(struct sockaddr* addr);
int getsockname(int sockfd, struct sockaddr *addr, socklen_t * paddrlen);
#endif

