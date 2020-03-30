#include <netinet/in.h>
#include <stdio.h>
#include <string.h>
#include <arpa/inet.h>
#include <unistd.h>

#define HOST "127.0.0.1"
#define PORT 10000
#define	MAXLINE		4096	/* max text line length */
int main(int argc, char **argv) {
    int sockfd, n;
    char recvline[MAXLINE + 1];
    struct sockaddr_in servaddr;
//   在内核态创建一个 socket 套接字
//   第一个参数 AF_INET 表示网际代指 IPv4
//   第二个参数 SOCK_STREAM 表示字节流 代指 TCP 协议
    if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        printf("socket error");

//  使用 memset 把这个servaddr套接字地址清零
    memset(&servaddr, '0', sizeof(servaddr));
//  把服务器 IP 地址和端口号填入一个网际套接字地址结构中
//  网际套接字结构中 IP 地址和端口号这两个成员必须使用特定格式，因此要调用库函数 htons 把整数转换成二进制端口号
//  再次调用库函数 inet_pton 把主机号转换成合适的格式。
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);
    if (inet_pton(AF_INET, HOST, &servaddr.sin_addr) <= 0)
        printf("inet_pton error for %s", HOST);

//  建立与服务器的连接。sockfd 这个套接字将于第二个参数 servaddr 套接字指定的服务器建立 tcp 连接，套接字地址结构作为该函数的第三个参数指定。
    if (connect(sockfd, (struct sockaddr *) &servaddr, sizeof(servaddr)) < 0) {
        printf("connect error");
    }
//  一旦 socket 连接完成，server 发送数据到 client socket, 客户端经由 socket 描述符可以刦数据。

//  使用 read 函数读取服务器应答，recvline[n] 表示在字符串n位置用 0 表示结束的位置，使用标准 I/O 函数 fputs 在 recvline 读取值输出结果。
    while ((n = read(sockfd, recvline, MAXLINE)) > 0) {
        recvline[n] = 0;    /* null terminate */
//        printf("input %s, %d", recvline, n);
        if (fputs(recvline, stdout) == EOF)
            printf("fputs error");
    }
    if (n < 0) {
        printf("read error");
    }
    return 0;
}