#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <syslog.h>        /* for syslog() */

#define   MAXLINE        4096    /* max text line length */
#define host "127.0.0.1"
#define PORT 10002

void str_echo(int sockfd);

int main(int argc, char **argv) {
    int listenfd, connfd;
    pid_t childpid;
    socklen_t clilen;
    struct sockaddr_in cliaddr, servaddr;

    listenfd = socket(AF_INET, SOCK_STREAM, 0);
    memset(&servaddr, '0', sizeof(servaddr));

    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port = htons(PORT);

    bind(listenfd, (struct sockaddr *) &servaddr, sizeof(servaddr));

    listen(listenfd, 1024);
    fprintf(stderr, "the server is running, the port is: %d, this socket listenfd is %d \n", PORT, listenfd);

    for (;;) {
        clilen = sizeof(cliaddr);
        connfd = accept(listenfd, (struct sockaddr *) &cliaddr, &clilen);
        if ((childpid = fork()) == 0) {
            close(listenfd);
            str_echo(connfd);
            exit(0);
        }
        close(connfd);
    }
}

void str_echo(int sockfd) {
    ssize_t n;
    char buf[1024];

    again :
    while ((n = read(sockfd, buf, 1024)) > 0)
        write(sockfd, buf, n);

    if (n < 0 && errno == EINTR) {
        goto again;
    } else if (n < 0)
        printf("str_echo: read error");
}