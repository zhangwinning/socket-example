#include <stdio.h>

int main() {
    char title[20] = "hello";   // 这是定义字符串
    char *p;
    p = title;  // 指针p表示指向 title 的一个指针。
    printf("%s, %c, %c", p, *p, *(p+3));
}