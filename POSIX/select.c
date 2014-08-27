#ifndef _LARGEFILE64_SOURCE
#define _LARGEFILE64_SOURCE
#endif
#include "sockets.h"

#define _FD_SET(n, p)    ((p)->fds_bits[(n)/NFDBITS] |= (1 << ((n) % NFDBITS)))
#define _FD_CLR(n, p)    ((p)->fds_bits[(n)/NFDBITS] &= ~(1 << ((n) % NFDBITS)))
#define _FD_ISSET(n, p)  ((p)->fds_bits[(n)/NFDBITS] & (1 << ((n) % NFDBITS)))
#define _FD_ZERO(p)  memset((char *)(p), '\0', sizeof(*(p)))


int _is_blocking_socket(sym_socket *sock, int event) {
	assert((event == EVENT_READ) || (event == EVENT_WRITE));

	if (sock->status == SOCK_STATUS_CREATED)
		return 0;//TODO: ah: strange: why not 1??

	if (sock->status == SOCK_STATUS_CONNECTING)
		return event == EVENT_WRITE;

	if (sock->status == SOCK_STATUS_CONNECTED) {

		printf("The socker is in the block checking process and the status is connected\n");

		switch (event) {
			case EVENT_READ:
		
				printf("The current event is read\n");
				return sock->in && _stream_is_empty(sock->in) && !_stream_is_closed(sock->in);
			case EVENT_WRITE:

				printf("The current event is write\n");

				return sock->out && _stream_is_full(sock->out) && !_stream_is_closed(sock->out);
		}
	}

	if (sock->status == SOCK_STATUS_LISTENING) {
		switch (event) {
			case EVENT_READ:
				assert (!_stream_is_closed(sock->listen) && "invalid socket state");
				return _stream_is_empty(sock->listen);
			case EVENT_WRITE:
				return 0;
		}
	}

	// We should never reach here...
	assert(0 && "invalid socket state");
}


int _is_blocking(int fd, int event) {
	if (!__check_is_socket(fd)) {
		return 0;
	}

	return _is_blocking_socket(&__exe_env.sct[SCTFD(fd)], event);
}


static int _validate_fd_set(int nfds, fd_set *fds) {
	int res = 0;

	int fd;
	for (fd = MAX_FDS; fd < nfds; fd++) {
		if (!_FD_ISSET(fd, fds))
			continue;

		if (!__check_is_socket(fd)) {
			klee_warning("unallocated FD");
			return -1;
		}
		res++;
	}

	return res;
}



int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout)
{


//	return 1;

	printf("You are in the __libc_select function!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");

	if (nfds < 0 || nfds > FD_SETSIZE) {
		errno = EINVAL;
		return -1;
	}

	int totalfds = 0;

	// Validating the fds
	if (readfds) {
		int res = _validate_fd_set(nfds, readfds);
		if (res ==  -1) {
			errno = EBADF;
			return -1;
		}

		totalfds += res;
	}


	printf("You are in the __libc_select function 111111111 !!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");

	if (writefds) {
		int res = _validate_fd_set(nfds, writefds);
		if (res == -1) {
			errno = EBADF;
			return -1;
		}

		totalfds += res;
	}

	if (exceptfds) {
		int res = _validate_fd_set(nfds, exceptfds);
		if (res == -1) {
			errno = EBADF;
			return -1;
		}

		totalfds += res;
	}

	printf("You are in the __libc_select function 2222222222222222!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");
	if (timeout != NULL && totalfds == 0) {
		klee_warning("simulating timeout");
		// We just return timeout
		if (timeout->tv_sec != 0 || timeout->tv_usec != 0)
			usleep(((unsigned int)timeout->tv_sec)*1000000 + (unsigned int)timeout->tv_usec);
		return 0;
	}

	// Compute the minimum size of the FD set
	int setsize = ((nfds / NFDBITS) + ((nfds % NFDBITS) ? 1 : 0)) * (NFDBITS / 8);

	fd_set *out_readfds = NULL;
	fd_set *out_writefds = NULL;

	if (readfds) {
		out_readfds = (fd_set*)malloc(setsize);

		if(out_readfds == NULL) {
			errno = ENOMEM;
			return -1;
		}

		memset(out_readfds, 0, setsize);
	}


	printf("You are in the __libc_select function 33333333333333333333333333333333333!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");

	if (writefds) {
		out_writefds = (fd_set*)malloc(setsize);

		if(out_writefds == NULL) {
			free(out_readfds);
			errno = ENOMEM;
			return -1;
		}

		memset(out_writefds, 0, setsize);
	}

	// No out_exceptfds here. This means that the thread will hang if select()
	// is called with FDs only in exceptfds.

	wlist_id_t wlist = 0;
	int res = 0;

	printf("You are in the __libc_select function 444444444444444444444444444444!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");

	do {
		int fd;
		// First check to see if we have anything available
		for (fd = MAX_FDS; fd < nfds; fd++) {

			printf("The number of fd is %d\n", fd);

			if(!readfds)
				printf("the readfs is not true\n");
			else 
			{	
				printf("the readfs is true\n");



				if(_FD_ISSET(fd, readfds))
					printf("the read  fd is set\n");
				else 
					printf("the read fd is not set\n");


				if(_is_blocking(fd, EVENT_READ))
					printf("the read fd is blocked\n");
				else 
					printf("the read fd is not blocked\n");

			}

			if(!writefds)
				printf("the writefds is not true\n");
			else 
			{
				printf("the writefds is true\n");



				if(_FD_ISSET(fd, writefds))
					printf("the write  fd is set\n");
				else 
					printf("the write fd is not set\n");


				if(_is_blocking(fd, EVENT_WRITE))
					printf("the write fd is blocked\n");
				else 
					printf("the write fd is not blocked\n");

			}


			if (readfds && _FD_ISSET(fd, readfds) && !_is_blocking(fd, EVENT_READ)) {
				_FD_SET(fd, out_readfds);
				res++;
			}
			if (writefds && _FD_ISSET(fd, writefds) && !_is_blocking(fd, EVENT_WRITE)) {
				_FD_SET(fd, out_writefds);
				res++;
			}
		}


		printf("You are in the while loop of select, and the value of res is %d, the value of nfds is %d \n", res, nfds);

		if (res > 0)
			break;


		int fail = 0;

		// Register ourselves to the relevant FDs
		for (fd = 0; fd < nfds; fd++) {
			int events = 0;
			if (readfds && _FD_ISSET(fd, readfds)) {
				events |= EVENT_READ;
			}
			if (writefds && _FD_ISSET(fd, writefds)) {
				events |= EVENT_WRITE;
			}

		}


		// Now deregister, in order to avoid useless notifications
		for (fd = 0; fd < nfds; fd++) {
			int events = 0;
			if (readfds && _FD_ISSET(fd, readfds)) {
				events |= EVENT_READ;
			}
			if (writefds && _FD_ISSET(fd, writefds)) {
				events |= EVENT_WRITE;
			}

		}

		if (fail) {
			errno = ENOMEM;
			return -1;
		}
	} while (1);


	printf("You are in the __libc_select function 5555555555555555555555555555555555555555555!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@\n");

	if (readfds) {
		memcpy(readfds, out_readfds, setsize);
		free(out_readfds);
	}

	if (writefds) {
		memcpy(writefds, out_writefds, setsize);
		free(out_writefds);
	}

	if (exceptfds) {
		memset(exceptfds, 0, setsize);
	}

	return res;
}

