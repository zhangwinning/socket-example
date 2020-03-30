#include <sys/socket.h>
#include <netinet/in.h>
#include <time.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>

#define PORT 10000

int main(int argc, char **argv) {
    int					listenfd, connfd;
    struct sockaddr_in	servaddr;
    char				buff[1024];
    time_t				ticks;

//  TCP 套接字的创建和客户端一样
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

//    使用 memset 把这个servaddr套接字地址清零
    memset(&servaddr, '0', sizeof(servaddr));
    servaddr.sin_family      = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port        = htons(PORT);	/* daytime server */

//  调用 bind 函数在 listenfd 套接字上分配(赋值)一些详情，这些详情包括 AF_INET(domain)、host、PORT
    bind(listenfd, (struct sockaddr *) &servaddr, sizeof(servaddr));

//   调用 listen 函数把 listenfd 套接字转换为监听套接字，这样来自于客户的外来连接就可在该套接字上由内核接受
//   1024 系统内核允许这个监听套接字描述符上排队的最大客户连接数
//   通过调用 listen, listenfd 变成有丰富功能的监听套接字
    listen(listenfd, 1024);
    fprintf(stderr, "the server is running, the port is: %d, this socket listenfd is %d \n", PORT, listenfd);
    for ( ; ; ) {
        fprintf(stderr, "the server is blocking the accept invoke \r");
//      通常情况下，服务器进程会阻塞于 accept 调用中，等待某个客户连接并被内核接受。tcp 使用三次握手来建立连接。
//      握手完毕后 accept 返回，返回值是一个新的描述符，称为 已连接描述符，已连接描述符与客户端通信。
        connfd = accept(listenfd, (struct sockaddr *) NULL, NULL);

//       最后写入数据，返回 coofd
        ticks = time(NULL);
        snprintf(buff, sizeof(buff), "%.24s\r\n", ctime(&ticks));
        write(connfd, buff, strlen(buff));

        close(connfd);
    }
}