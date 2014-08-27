#ifndef _LARGEFILE64_SOURCE
#define _LARGEFILE64_SOURCE
#endif
#include "sockets.h"
#include <klee/klee.h>

network_t __net;
void klee_init_network(void)
{
	printf("This is good\n");

	__net.net_addr.s_addr = htonl(DEFAULT_NETWORK_ADDR);
	__net.next_port = htons(DEFAULT_UNUSED_PORT);
	printf("The size of set to be 0 is %d\n", sizeof(__net.end_points));
		
	memset(__net.end_points,0,sizeof(__net.end_points));


}
