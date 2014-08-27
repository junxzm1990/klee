/*

#ifndef _LARGEFILE64_SOURCE
#define _LARGEFILE64_SOURCE
#endif
#include "sockets.h"

int symbol_server_response(int fd)
{
	sym_socket * client = &__exe_env.sct[SCTFD(fd)];	
	int server_fd =_get_socket_num(client->remote_end->addr); 

	char buf[STREAM_BUFFER_SIZE];

	int flags=0;

	recv(server_fd, buf, STREAM_BUFFER_SIZE, flags);
}


*/


