#ifndef _LARGEFILE64_SOURCE
#define _LARGEFILE64_SOURCE
#endif
#include "sockets.h"
#include <klee/klee.h>


static void _get_endpoint_name(sym_socket *sock, end_point_t *end_point, struct sockaddr *addr,
		socklen_t *addrlen) {


	printf("you have entered the _get_endpoint_name function\n");


	printf("the size of sockaddr is %d\n", sizeof(struct sockaddr));


	printf("the size of sockaddr_in is %d\n", sizeof(struct sockaddr_in));
	socklen_t len = sizeof(struct sockaddr);
	if (sock->domain == AF_INET) {

		if (len > sizeof(struct sockaddr_in))
			len = sizeof(struct sockaddr_in);


		printf("the length to be copied is %d\n", len);

		memcpy(addr, end_point->addr, len);

		printf("You have successfully went out of the memory copy process\n");

		if(addrlen!=NULL)
			*addrlen = len;
	} else {
		assert(0 && "invalid socket");
	}
}

static void __release_end_point(end_point_t *end_point) {
	assert(end_point->allocated);
	assert(end_point->refcount > 0);

	end_point->refcount--;
	if (end_point->refcount == 0) {
		if (end_point->addr)
			free(end_point->addr);

		memset(end_point, 0, sizeof(end_point_t));
	}
}




static int _create_socket_file(void)
{
	int fd;	
	for (fd = 0; fd < MAX_SOCKET; ++fd)
	{


		printf("TTTTTTTTTTTTTTTTTTTTTTTTTTTTT the number of socket is %d\n", fd);
		printf("STATUSSTATUSSTATUSThe status of the socket is %d\n", __exe_env.sct[fd].status);

		if (!(__exe_env.sct[fd].status))// & SOCK_STATUS_CREATED))
			break;


	}
	if (fd == MAX_SOCKET) {
		errno = EMFILE;
		return -1;	
	}
	return SOCKFD(fd);
} 

static int _validate_net_socket(int domain, int type, int protocol) {
	assert(domain == AF_INET || domain == AF_UNIX);

	switch (type) {
		case SOCK_STREAM:
			if (protocol != 0 && protocol != IPPROTO_TCP) {
				klee_warning("unsupported protocol");
				errno = EPROTONOSUPPORT;
				return -1;
			}
			break;
		case SOCK_DGRAM:
			if (domain == AF_UNIX) {
				klee_warning("unsupported protocol: UDP for AF_INET only"); //TODO: ah: implement
				errno = EPROTONOSUPPORT;
				return -1;
			}
			if (protocol != 0 && protocol != IPPROTO_UDP) {
				klee_warning("unsupported protocol");
				errno = EPROTONOSUPPORT;
				return -1;
			}
			break;
		default:
			klee_warning("unsupported socket type");
			errno = EPROTONOSUPPORT;
			return -1;
	}
	return 0;
}

sym_socket * get_sym_socket(int fd)
{
	return &__exe_env.sct[SCTFD(fd)];
}

int socket(int domain, int type, int protocol) 
{

	printf("Attempting to create a socket: domain = %d, type = %d, protocol = %d\n", domain, type, protocol);

	int base_type = type & ~(SOCK_NONBLOCK | SOCK_CLOEXEC);
	int res;

	switch (domain) {
		case AF_INET:
		case AF_UNIX:
			res = _validate_net_socket(domain, base_type, protocol);
			if (res == -1)
				return -1;
			break;
		case AF_NETLINK:
			res = _validate_netlink_socket(domain, base_type, protocol);
			if (res == -1)
				return -1;
			break;
		default:
			klee_warning("unsupported socket domain");
			errno = EINVAL;
			return -1;
	}

	int socknum=_create_socket_file();
	if(socknum>=0)
	{
		char name[7]="socket?";
		name[6]=socknum+'0';

		sym_socket * sock;// = malloc(sizeof(*sock));

		sock = get_sym_socket(socknum);

		//sock = & __exe_env.sct[socknum];

		memset(sock, 0, sizeof(*sock));
		//	klee_make_symbolic(sock, sizeof(sym_socket), name);
		sock->status = SOCK_STATUS_CREATED;
		sock->type = base_type;
		sock->domain = domain;
		sock->protocol = protocol;
		//__exe_env.sct[socknum]= *sock;

		if(sock->remote_end==NULL)
			printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!the socker is null and everything is all right!\n");
	}

	printf("The number of the socket created is %d\n", socknum);
	return socknum;
}

int __check_is_socket(int sockfd)
{
	if(__exe_env.sct[SCTFD(sockfd)].status & SOCK_STATUS_CREATED)
	{
		printf("The socket is created successfully!!!AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n");
		return 1;
	}
	errno = ENOTSOCK;
	return -1;
}



in_port_t __get_unused_port(void) {
	unsigned int i;
	char found = 0;

	while (!found) {
		found = 1;

		for (i = 0; i < MAX_PORTS; i++) {
			if (!STATIC_LIST_CHECK(__net.end_points, i))
				continue;

			struct sockaddr_in *addr = (struct sockaddr_in*) __net.end_points[i].addr;

			if (__net.next_port == addr->sin_port) {
				__net.next_port = htons(ntohs(__net.next_port) + 1);
				found = 0;
				break;
			}
		}
	}

	in_port_t res = __net.next_port;

	__net.next_port = htons(ntohs(__net.next_port) + 1);

	return res;
}



static end_point_t* __find_inet_end(const struct sockaddr_in* addr) {
	assert(addr != NULL);
	assert(addr->sin_port != 0);

	printf("you have reached the find_inet function, the port to be searched is %d\n", addr->sin_port);

	unsigned int i;
	for (i = 0; i < MAX_PORTS; i++) {
		if (!STATIC_LIST_CHECK(__net.end_points, i))
			continue;

		struct sockaddr_in *crt = (struct sockaddr_in*) __net.end_points[i].addr;

		if (crt->sin_port == addr->sin_port) {
			return &__net.end_points[i];
		}
	}
	return NULL;
}

static end_point_t *__get_inet_end(const struct sockaddr_in *addr) {
	if (addr->sin_addr.s_addr != INADDR_ANY && addr->sin_addr.s_addr != htonl(INADDR_LOOPBACK)
			&& addr->sin_addr.s_addr != __net.net_addr.s_addr)
		return NULL;

	in_port_t port = addr->sin_port;
	if (port == 0) {
		port = __get_unused_port();
	} else {

		printf("the port number is not 0, you will try to locate the socket!\n");
		end_point_t* exising_endpoint = __find_inet_end(addr);
		if (exising_endpoint != NULL) {
			exising_endpoint->refcount++;
			return exising_endpoint;
		}
	}

	unsigned int i;
	STATIC_LIST_ALLOC(__net.end_points, i);

	if (i == MAX_PORTS)
		return NULL;

	__net.end_points[i].addr = (struct sockaddr*) malloc(sizeof(struct sockaddr_in));
	//	klee_make_shared(__net.end_points[i].addr, sizeof(struct sockaddr_in));
	__net.end_points[i].refcount = 1;
	__net.end_points[i].socket = NULL;

	struct sockaddr_in *newaddr = (struct sockaddr_in*) __net.end_points[i].addr;
	newaddr->sin_family = AF_INET;
	newaddr->sin_addr = __net.net_addr;
	newaddr->sin_port = port;
	return &__net.end_points[i];
}


static int _inet_stream_reach(sym_socket *sock, const struct sockaddr *addr, socklen_t addrlen) {
	if (sock->local_end == NULL) {
		// We obtain a local bind point  
		struct sockaddr_in local_addr;
		local_addr.sin_family = AF_INET;
		local_addr.sin_addr = __net.net_addr;
		local_addr.sin_port = 0; // Get an unused port
		printf("*******************************************Now get the socket for the local end!\n");
		sock->local_end = __get_inet_end(&local_addr);

		if (sock->local_end == NULL) {
			errno = EAGAIN;
			return -1;
		}
	}
	assert(sock->remote_end == NULL);

	if (addr->sa_family != AF_INET || addrlen < sizeof(struct sockaddr_in)) {
		errno = EAFNOSUPPORT;
		return -1;
	}

	sock->remote_end = __get_inet_end((struct sockaddr_in*) addr);
	if (!sock->remote_end) {
		errno = EINVAL;
		return -1;
	}

	return 0;

}

int _get_socket_num(struct sockaddr* addr)
{
	int fd;
	for (fd = 0; fd < MAX_SOCKET; fd++)
	{	
		if (__exe_env.sct[fd].local_end->addr->sa_family == addr->sa_family && strcmp(__exe_env.sct[fd].local_end->addr->sa_data, addr->sa_data)==0)// & SOCK_STATUS_CREATED))
			break;
	}

	return SOCKFD(fd);
}

static int _stream_connect(sym_socket *sock, const struct sockaddr *addr, socklen_t addrlen) {
	if (sock->status != SOCK_STATUS_CREATED) {
		if (sock->status == SOCK_STATUS_CONNECTED) {
			errno = EISCONN;
			return -1;
		} else {
			errno = EINVAL;
			return -1;
		}
	}
	// Let's obtain the end points
	if (sock->domain == AF_INET) {
		if (_inet_stream_reach(sock, addr, addrlen) == -1)
			return -1;
	}

	if (sock->remote_end->socket == NULL || sock->remote_end->socket->status != SOCK_STATUS_LISTENING
			|| sock->remote_end->socket->domain != sock->domain) {

		//__release_end_point(sock->remote_end);

		printf("The socket connection process is not right................................\n");
		sock->remote_end = NULL;
		errno = ECONNREFUSED;
		return -1;
	}

	sym_socket *remote = sock->remote_end->socket;

	if (_stream_is_full(remote->listen)) {
		__release_end_point(sock->remote_end);
		sock->remote_end = NULL;
		errno = ECONNREFUSED;
		return -1;
	}

	sock->status = SOCK_STATUS_CONNECTING;

	ssize_t res = _stream_write(remote->listen, (char*) &sock, sizeof(sym_socket*));
	assert(res == sizeof(sym_socket*));

	sock->conn_evt_queue = (event_queue_t*) malloc(sizeof(event_queue_t));

	if (sock->status == SOCK_STATUS_CLOSING) {

		free(sock);
		errno = EINVAL;
		return -1;
	}

/*
	int server_fd =  _get_socket_num(sock->remote_end->addr);

	__libc_accept(server_fd, sock->local_end->addr, NULL); 

	if (sock->status != SOCK_STATUS_CONNECTED) {
		errno = ECONNREFUSED;
		return -1;
	}
*/
	return 0;
}



int __libc_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen)
{

	//	return 1;
	printf("**********************This is the strong reference of Fucking C O N N E C T***********************\n");
	printf("The local socket numebr is %d, the remote address to be connected is \n", sockfd);

	if(!__check_is_socket(sockfd))
		return -1;

	sym_socket * sock = get_sym_socket(sockfd);

	if (sock->type == SOCK_STREAM) {
		return _stream_connect(sock, addr, addrlen);
	} 
	return 1;
}


static int _bind(sym_socket *sock, const struct sockaddr *addr, socklen_t addrlen) {
	if (sock->local_end != NULL) {
		errno = EINVAL;
		return -1;
	}

	if (addr->sa_family != sock->domain) {
		errno = EINVAL;
		return -1;
	}

	end_point_t *end_point;

	if (sock->domain == AF_INET) {
		end_point = __get_inet_end((struct sockaddr_in*) addr);
	}	

	if (end_point == NULL) {
		errno = EINVAL;
		return -1;
	}

	if (end_point->socket != NULL) {
		__release_end_point(end_point);
		errno = EADDRINUSE;
		return -1;
	}

	sock->local_end = end_point;
	end_point->socket = sock;
	printf("The bind process is finished successfully!\n");

	//if(sock->type == SOCK_DGRAM || sock->type == SOCK_RAW)
	//	sock->in = _stream_create(sizeof(datagram_t) * MAX_NUMBER_DGRAMS, 1); //todo: refactor when implement shutdown for write part

	return 0;
}

int bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen) {

	__check_is_socket(sockfd);

	sym_socket * sock =  get_sym_socket(sockfd);

	return _bind(sock, addr, addrlen);
}



int listen(int sockfd, int backlog) {

	int a=FD_SETSIZE;

	printf("The size of FD_SETSIZE is %d\n", a);

	__check_is_socket(sockfd);
	sym_socket * sock = get_sym_socket(sockfd);

	if (sock->type != SOCK_STREAM) {
		errno = EOPNOTSUPP;
		return -1;
	}

	if (sock->local_end == NULL || (sock->status != SOCK_STATUS_CREATED && sock->status
				!= SOCK_STATUS_LISTENING)) {
		errno = EOPNOTSUPP;
		return -1;
	}
	// Create the listening queue
	if (sock->status != SOCK_STATUS_LISTENING) {
		sock->status = SOCK_STATUS_LISTENING;
		sock->listen = _stream_create(backlog * sizeof(sym_socket*), 1);
	}

	printf("The listen process if finished sucessfully\n");

	return 0;
}

int __libc_accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen) {


	printf("You are in the libc_accept process ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");

	printf("the socket number of the server is %d***************************************************************************************\n", sockfd);

	__check_is_socket(sockfd);

	sym_socket * sock = get_sym_socket(sockfd);

	if (sock->type != SOCK_STREAM) {
		errno = EOPNOTSUPP;
		return -1;
	}

	if (sock->status != SOCK_STATUS_LISTENING) {
		errno = EINVAL;
		return -1;
	}


	sym_socket *remote, *local;
	end_point_t *end_point;

	ssize_t res = _stream_read(sock->listen, (char*) &remote, sizeof(sym_socket*));

	if (sock->status == SOCK_STATUS_CLOSING) {
		free(sock);
		errno = EINVAL;
		return -1;
	}

	assert(res == sizeof(sym_socket*));

	if (remote->status == SOCK_STATUS_CLOSING) {
		free(remote);


		errno = ECONNABORTED;
		return -1;
	}

	assert(remote->status == SOCK_STATUS_CONNECTING);

	remote->conn_wlist = 0;
	free(remote->conn_evt_queue);
	remote->conn_evt_queue = NULL;

	int failure = 0;
	// Get a new local port for the connection
	if (sock->domain == AF_INET) {
		struct sockaddr_in local_addr;
		local_addr.sin_family = AF_INET;
		local_addr.sin_addr = __net.net_addr;
		local_addr.sin_port = 0; // Find an unused port

		end_point = __get_inet_end(&local_addr);

		if (end_point == NULL) {
			errno = EINVAL;
			failure = 1;
		}
	} else {
		assert(0 && "invalid socket");
	}

	// Get a new file descriptor for the new socket
	int fd;
	if (!failure) {

		fd =_create_socket_file();
		if (fd == MAX_FDS) {
			__release_end_point(end_point);
			errno = ENFILE;
			failure = 1;
		}
	}

	if (failure) {
		remote->status = SOCK_STATUS_CREATED;

		__release_end_point(remote->remote_end);
		sock->remote_end = NULL;

		return -1;
	}

	// Setup socket attributes
	//local = (sym_socket*) malloc(sizeof(sym_socket));
	//klee_make_shared(local, sizeof(socket_t));


	 local=&__exe_env.sct[SCTFD(fd)];
		
	//memset(local, 0, sizeof(sym_socket));


	local->status = SOCK_STATUS_CONNECTED;
	local->domain = remote->domain;
	local->type = SOCK_STREAM;

	// Setup end points
	local->local_end = end_point;
	end_point->socket = local;
	__release_end_point(remote->remote_end);
	remote->remote_end = end_point;
	remote->remote_end->refcount++;

	local->remote_end = remote->local_end;
	local->remote_end->refcount++;

	// Setup streams
	local->in = _stream_create(STREAM_BUFFER_SIZE, 1);
	remote->out = local->in;

	local->out = _stream_create(STREAM_BUFFER_SIZE, 1);
	remote->in = local->out;

	// All is good for the remote socket
	remote->status = SOCK_STATUS_CONNECTED;
	if (addr != NULL)
		_get_endpoint_name(local, local->remote_end, addr, addrlen);

	klee_warning("Connected socket created\n");


	printf("new the socket number of the server is %d\n", fd);
	// Now return in our process
	return fd;
}

ssize_t __write_stream_socket(sym_socket *sock, const char *buf, size_t count) {
	if (sock->status != SOCK_STATUS_CONNECTED) {
		errno = ENOTCONN;
		return -1;
	}

	stream_buffer_t* out_stream = sock->out;

	if (out_stream == NULL || _stream_is_closed(out_stream)) {
		// The socket is shut down for writing
		errno = EPIPE;
		return -1;
	}

	if (count == 0) {
		return 0;
	}

	ssize_t res = _stream_write(out_stream, buf, count);

	if (sock->status == SOCK_STATUS_CLOSING) {
		free(sock);

		errno = EINVAL;
		return -1;
	}

	if (res == -1) {
		// The stream was shut down in the mean time
		errno = EINVAL;
	}

	return res;
}


ssize_t _write_socket(sym_socket *sock, const void *buf, size_t count) {
	if (sock->type == SOCK_STREAM) {
		return __write_stream_socket(sock, buf, count);
	}
	else {
		assert(0 && "invalid socket type");
	}
}


ssize_t __read_stream_socket_raw(sym_socket* sock, void *buf, size_t count) {
	printf("you are in the read stream socket raw function\n");
	if (_stream_is_empty(sock->in) && !_stream_is_closed(sock->in)) {
		errno = EAGAIN;
		printf("you are in the read stream socket raw function and the if branch\n");

		return -1;
	}

	ssize_t res = _stream_read(sock->in, buf, count);

	if (sock->status == SOCK_STATUS_CLOSING) {
		free(sock);

		errno = EINVAL;
		return -1;
	}

	if (res == -1) {
		// The stream was shut down in the mean time
		errno = EINVAL;
	}

	return res;
}


ssize_t __read_stream_socket(sym_socket* sock, void* buf, size_t count) {


	printf("you are in the read stream socket function\n");
	if(sock->status != SOCK_STATUS_CONNECTED) {
		errno = ENOTCONN;
		return -1;
	}

	if (sock->in == NULL) // The socket is shut down for reading
	{
		printf("The socket is shut down for reading\n"); 
		return 0;
	}
	if (count == 0)
		return 0;

	return __read_stream_socket_raw(sock, buf, count);
}


ssize_t _read_socket(sym_socket *sock, void *buf, size_t count) {
	if (sock->type == SOCK_STREAM) {
		return __read_stream_socket(sock, buf, count);
	} else {
		assert(0 && "invalid socket type");
	}
}


ssize_t __libc_recv(int sockfd, void * buffer, size_t len, int flags)
{

	__check_is_socket(sockfd);

	sym_socket * sock = get_sym_socket(sockfd);

	if (flags != 0) {
		klee_warning("recv() flags unsupported for now");
		//		errno = EINVAL;
		//		return -1;
	}


	printf("you are going into the read socket function\n");
	return _read_socket(sock, buffer, len);


}

int getsockname(int sockfd, struct sockaddr *addr, socklen_t * addrlen)
{
		

	if(addr==NULL)
	{
		addr=(struct sockaddr*) malloc(sizeof(struct sockaddr));	
		printf("the addr is null in the getsockname section\n");
	}
	printf("The socker number in the getsocknum is %d\n", sockfd);

	__check_is_socket(sockfd);

        sym_socket * sock = get_sym_socket(sockfd);
		if (sock->local_end == NULL) {
			errno = EINVAL;
			return -1;
		}

		_get_endpoint_name(sock, sock->local_end, addr, addrlen);

		return 0;

}




