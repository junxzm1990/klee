#include <sys/syscall.h>
#include <time.h>
#include <unistd.h>

int clock_getres(clockid_t clock_id, struct timespec* res) __attribute__((weak));

int clock_getres(clockid_t clock_id, struct timespec* res)
{
        int retval = -1;

        switch (clock_id) {
                case CLOCK_REALTIME:
                        if (res) {
                                long clk_tck;

                                if ((clk_tck = sysconf(_SC_CLK_TCK)) < 0)
                                        clk_tck = 100;
                                res->tv_sec = 0;
                                res->tv_nsec = 1000000000 / clk_tck;
                        }
                        retval = 0;
                        break;

                default:
                      //  errno = EINVAL;
                        break;
        }

        return retval;
}
