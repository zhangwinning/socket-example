#include<stdio.h>
#include<stdlib.h>

int main()
{
//  定义字符串
    char recvline[10];

    recvline[0] = 'a';
    recvline[1] = 'b';
    recvline[2] = 0;
    printf("this is %s", recvline);
    return 0;
}