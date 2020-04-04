/**
 * select/pselect/FD_CLR/FD_ISSET/ -- synchronous I/O multiplexing
**/

#include <stdio.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

int main(void) {
    fd_set rfds;
    struct timeval tv;
    int retval;

    FD_ZERO(&rfds); // clears a set
    FD_SET(0, &rfds);   // add a given file descriptor.

    tv.tv_sec = 5;
    tv.tv_usec = 0;

    printf("this is %d \n", FD_ISSET(1, &rfds));    // 判断此文件描述符是否在可读集合中。
    retval = select(1, &rfds, NULL, NULL, &tv);

    if (retval == -1) {
        perror("select()");
    } else if (retval) {
        printf("Data is available now. \n");
    } else {
        printf("No data within five seconds \n");
    }

    return 0;
}