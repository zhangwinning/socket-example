#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>

#define host "127.0.0.1"
#define PORT 10002

#define    MAXLINE        4096

static int	read_cnt;
static char	*read_ptr;
static char	read_buf[MAXLINE];

void str_cli(FILE *fp, int sockfd);
ssize_t	 readline(int, void *, size_t);
static ssize_t my_read(int fd, char *ptr);

int main(int argc, char **argv) {
    int sockfd;
    struct sockaddr_in servaddr;

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    memset(&servaddr, '0', sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);
    inet_pton(AF_INET, host, &servaddr.sin_addr);

    connect(sockfd, (struct sockaddr *) &servaddr, sizeof(servaddr));

    str_cli(stdin, sockfd);
    exit(0);
}

void str_cli(FILE *fp, int sockfd) {
    char sendline[MAXLINE], recvline[MAXLINE];
    printf("===");
    while (fgets(sendline, MAXLINE, fp) != NULL) {
        printf("=== %s\n", sendline);
        write(sockfd, sendline, strlen(sendline));
        if (readline(sockfd, recvline, MAXLINE) == 0) {
            printf("str_cli: server terminated prematurely");
            exit(1);
        }
        fputs(recvline, stdout);
    }
}

ssize_t readline(int fd, void *vptr, size_t maxlen) {
    ssize_t	n, rc;
    char	c, *ptr;

    ptr = vptr;
    for (n = 1; n < maxlen; n++) {
        if ( (rc = my_read(fd, &c)) == 1) {
            *ptr++ = c;
            if (c == '\n')
                break;	/* newline is stored, like fgets() */
        } else if (rc == 0) {
            *ptr = 0;
            return(n - 1);	/* EOF, n - 1 bytes were read */
        } else
            return(-1);		/* error, errno set by read() */
    }

    *ptr = 0;	/* null terminate like fgets() */
    return(n);
}

static ssize_t my_read(int fd, char *ptr){
    // below if statement be executed only once. At the first time reading
    // is successful, read_cnt will be assigned with a value of the number
    // of read characters.
    // comparing with test/readline1.c, this is reason why the performance
    // will be improved dramatically.
    // read into buffer -- means read specified size length of characters
    // into buffer. not just one , two, three... any lines.
    if (read_cnt <= 0) {
        again:
        if ( (read_cnt = read(fd, read_buf, sizeof(read_buf))) < 0) {
            if (errno == EINTR)
                goto again;
            return(-1);
        } else if (read_cnt == 0)
            return(0);
        read_ptr = read_buf;
    }

    read_cnt--;
    *ptr = *read_ptr++;
    return(1);
}