#include <netinet/in.h>
#include <stdio.h>
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>

int main(int argc, char **argv) {
    int sockfd, n;
    char recvline[4096 + 1];
    struct sockaddr_in servaddr;

    if (argc != 2)
        printf("\n Usage: %s <ip of server> \n", argv[0]);

    if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        printf("socket error");

    memset(&servaddr, '0', sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(13);    /* daytime server */
    if (inet_pton(AF_INET, argv[1], &servaddr.sin_addr) <= 0)
        printf("inet_pton error for %s", argv[1]);

    if (connect(sockfd, (struct sockaddr *) &servaddr, sizeof(servaddr)) < 0) {
        printf("connect error");
    }
    while ((n = read(sockfd, recvline, 4096)) > 0) {
        recvline[n] = 0;    /* null terminate */
        if (fputs(recvline, stdout) == EOF)
            printf("fputs error");
    }

    if (n < 0) {
        printf("read error");
    }
    return 0;
}