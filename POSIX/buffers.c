
#include "buffers.h"

#include <stdlib.h>
#include <stdio.h>
#include <klee/klee.h>


uint64_t klee_get_wlist(void) {
	static uint64_t counter = 0;
	return counter++;
}


void _event_queue_init(event_queue_t *q, unsigned count, int shared) {
	q->queue = (wlist_id_t*)malloc(count * sizeof(wlist_id_t));

	memset(q->queue, 0, count * sizeof(wlist_id_t));

	q->count = count;
}


size_t _count_iovec(const struct iovec *iov, int iovcnt) {
	size_t result = 0;
	int i;
	for (i = 0; i < iovcnt; i++)
		result += iov[i].iov_len;
	return result;
}



stream_buffer_t *_stream_create(size_t max_size, int shared) {
	stream_buffer_t *buff = (stream_buffer_t*)malloc(sizeof(stream_buffer_t));

	memset(buff, 0, sizeof(stream_buffer_t));
	buff->contents = (char*) malloc(max_size);
	buff->max_size = max_size;
	buff->max_rsize = max_size;
	buff->queued = 0;
	buff->empty_wlist = klee_get_wlist();
	buff->full_wlist = klee_get_wlist();
	_event_queue_init(&buff->evt_queue, MAX_EVENTS, shared);
	/*
	   if (shared) {
	   klee_make_shared(buff, sizeof(stream_buffer_t));
	   klee_make_shared(buff->contents, max_size);
	   }
	 */
	return buff;
}

ssize_t _stream_writev(stream_buffer_t *buff, const struct iovec *iov, int iovcnt) {
	size_t count = _count_iovec(iov, iovcnt);

	if (count == 0) {
		return 0;
	}

	if (buff->status & BUFFER_STATUS_CLOSED) {
		return 0;
	}

	while (buff->size == buff->max_size) {

		if (buff->status & BUFFER_STATUS_DESTROYING) {
			if (buff->queued == 0)
				free(buff);

			return -1;
		}

		if (buff->status & BUFFER_STATUS_CLOSED) {
			return 0;
		}
	}

	if (count > buff->max_size - buff->size)
		count = buff->max_size - buff->size;

	int i;
	size_t offset = (buff->start + buff->size) % buff->max_size;
	size_t remaining = count;

	for (i = 0; i < iovcnt; i++) {
		if (remaining == 0)
			break;

		size_t cur_count = (remaining < iov[i].iov_len) ? remaining : iov[i].iov_len;

		if (offset + cur_count > buff->max_size) {
			size_t overflow = (offset + cur_count) % buff->max_size;

			memcpy(&buff->contents[offset], iov[i].iov_base, cur_count - overflow);
			memcpy(&buff->contents[0], &((char*)iov[i].iov_base)[cur_count-overflow], overflow);
			offset = overflow;
		} else {
			memcpy(&buff->contents[offset], iov[i].iov_base, cur_count);
			offset += cur_count;
		}
		remaining -= cur_count;
	}

	buff->size += count;

	return count;
}


ssize_t _stream_write(stream_buffer_t *buff, const char *src, size_t count) {
	struct iovec iov = { .iov_base = (char*)src, .iov_len = count };

	return _stream_writev(buff, &iov, 1);
}

ssize_t _stream_readv(stream_buffer_t *buff, const struct iovec *iov, int iovcnt) {
	size_t count = _count_iovec(iov, iovcnt);

	if (count == 0) {
		return 0;
	}

	while (buff->size == 0) {
		if (buff->status & BUFFER_STATUS_CLOSED) {
			return 0;
		}

		if (buff->status & BUFFER_STATUS_DESTROYING) {
			free(buff);
			return -1;
		}
	}

	if (buff->size < count)
		count = buff->size;
	if (buff->max_rsize < count)
		count = buff->max_rsize;

	int i;
	size_t offset = buff->start;
	size_t remaining = count;

	for (i = 0; i < iovcnt; i++) {
		if (remaining == 0)
			break;

		size_t cur_count = (remaining < iov[i].iov_len) ? remaining : iov[i].iov_len;

		if (offset + cur_count > buff->max_size) {
			size_t overflow = (offset + cur_count) % buff->max_size;

			memcpy(iov[i].iov_base, &buff->contents[offset], cur_count - overflow);
			memcpy(&((char*)iov[i].iov_base)[cur_count-overflow], &buff->contents[0], overflow);
			offset = overflow;
		} else {
			memcpy(iov[i].iov_base, &buff->contents[offset], cur_count);
			offset += cur_count;
		}
		remaining -= cur_count;
	}

	buff->start = offset;
	buff->size -= count;

	return count;
}

ssize_t _stream_read(stream_buffer_t *buff, char *dest, size_t count) {
	struct iovec iov = { .iov_base = dest, .iov_len = count };
	return _stream_readv(buff, &iov, 1);
}

