#ifndef __COMMON_H__
#define __COMMON_H__
#include "buffers.h"
#define _IO_TYPE_SCATTER_GATHER  0x1
#define _IO_TYPE_POSITIONAL      0x2

enum {
  WAIT_READ = 1,
  WAIT_WRITE = 2
};


struct socket;

typedef struct {
  struct sockaddr *addr;

  struct socket *socket;

  unsigned int refcount;
  char allocated;
}  end_point_t;


typedef struct socket{
 // file_base_t __bdata;

  int status;
  int type;
  int domain;
  int protocol;

  end_point_t *local_end;
  end_point_t *remote_end;

  // For TCP connections
  stream_buffer_t *out;     // The output buffer
  stream_buffer_t *in;      // The input buffer

  // For connecting sockets
  event_queue_t *conn_evt_queue;
  wlist_id_t conn_wlist;         // The waiting list for the connected notif.

  // For TCP listening
  stream_buffer_t *listen;
} sym_socket;



typedef struct {
  // For TCP/IP sockets
  struct in_addr net_addr;  // The IP address of the virtual machine

  in_port_t next_port;

  end_point_t end_points[MAX_PORTS];
} network_t;


#define STATIC_LIST_CHECK(list, item) \
  (((item) < sizeof(list)/sizeof(list[0])) && (list[item].allocated))

#define STATIC_LIST_ALLOC(list, item) \
  do { \
    item = sizeof(list)/sizeof(list[0]); \
    unsigned int __i; \
    for (__i = 0; __i < sizeof(list)/sizeof(list[0]); __i++) { \
      if (!list[__i].allocated) { \
        list[__i].allocated = 1; \
        item = __i;  break; \
      } \
    } \
  } while (0)

static inline int _stream_is_empty(stream_buffer_t *buff) {
  return (buff->size == 0);
}

static inline int _stream_is_full(stream_buffer_t *buff) {
  return (buff->size == buff->max_size);
}

static inline int _stream_is_closed(stream_buffer_t *buff) {
  return (buff->status & BUFFER_STATUS_CLOSED);
}


int __check_is_socket(int sockfd);
int _is_blocking(int fd, int event);
ssize_t _write_socket(sym_socket *sock, const void *buf, size_t count);
sym_socket * get_sym_socket(int fd);
ssize_t __write_stream_socket(sym_socket *sock, const char *buf, size_t count);

#endif
