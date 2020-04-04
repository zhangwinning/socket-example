#include <stdio.h>

int main(void) {
    const char *mesg = "Don't be a fool";
    const char *copy;
    copy = mesg;
    printf("this is str %s \n", copy);

//  指针的 &mesg 表示: 指针 mesg 和指针 copy 分别存储到 '0x7ffee7bd4818' 和 '0x7ffee7bd4810'内存下
//  但是指针的值都是 `0x1059aff86` 表示两个指针指向的是同一个位置。
    printf("%s, %p, %p \n", mesg, &mesg, mesg);
    printf("%s, %p, %p \n", copy, &copy, copy);
}