
//int __libc_connect(int sockfd, const struct sockaddr *saddr, socklen_t addrlen)

#define _LARGEFILE64_SOURCE

#include "sockets.h"


int getaddrinfo(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res)


 {

 printf("Hello the exp is fucking working");

printf("The address information is %s\n", node);
printf("The service information is %s\n", service);



printf("**********************This is the weak reference of getaddrinfo***********************\n");
if (node == NULL && service == NULL) {
    return EAI_NONAME;
  }

  if (hints) {
    if (hints->ai_family != AF_INET && hints->ai_family != AF_UNSPEC) {
      klee_warning("unsupported family (EAI_ADDRFAMILY)");
      return EAI_ADDRFAMILY;
    }

    if (hints->ai_socktype != SOCK_STREAM && hints->ai_socktype != 0) {
      klee_warning("unsupported socket type (EAI_SOCKTYPE)");
      return EAI_SOCKTYPE;
    }

    if (hints->ai_protocol != 0 && hints->ai_protocol != IPPROTO_TCP) {
      klee_warning("unsupported protocol (EAI_SERVICE)");
      return EAI_SERVICE;
    }

    // We kinda ignore all the flags, they don't make sense given the
    // current limitations of the model.
	
	 if (hints->ai_addr || hints->ai_addrlen || hints->ai_canonname || hints->ai_next) {
      return EAI_SYSTEM;
    }
  }

  int port = 0;

  if (service != NULL) {
    klee_warning("Getting the port number for service\n");
    port = atoi(service);
    if (port == 0 && strcmp(service, "0") != 0) {
      klee_warning("service name not numeric, unsupported by model");
      return EAI_SERVICE;
    }

    if (port < 0 || port > 65535) {
      return EAI_SERVICE;
    }
  }


  if (node != NULL) {
    if (strcmp(node, "localhost") != 0 && strcmp(node, DEFAULT_HOST_NAME) != 0) {
      klee_warning("resolving to localhost\n");
    }
	
    if(strcmp(node,"acd.se2.psu.edu")!=0)
	{
		klee_warning("The server name is wrong\n");
		return EAI_NONAME;
	}

  }


  struct addrinfo *info = (struct addrinfo*)malloc(sizeof(struct addrinfo));
  memset(info, 0, sizeof(struct addrinfo));

  struct sockaddr_in *addr = (struct sockaddr_in*)malloc(sizeof(struct sockaddr_in));
  memset(addr, 0, sizeof(struct sockaddr_in));

  info->ai_addr = (struct sockaddr*)addr;
  info->ai_addrlen = sizeof(struct sockaddr_in);
  info->ai_family = AF_INET;
  info->ai_protocol = 0;
  info->ai_socktype = SOCK_STREAM;

  addr->sin_family = AF_INET;
  addr->sin_addr.s_addr = htonl(DEFAULT_NETWORK_ADDR);
  if (port != 0)
    addr->sin_port = htons((uint16_t)port);

  *res = info;
  return 0;
 }
