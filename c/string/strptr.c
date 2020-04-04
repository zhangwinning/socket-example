#include <stdio.h>

int main(void) {
    printf("%s, %p, %c \n", "Wefdsafdasfds", "are", *"space farers");
    puts("hello");
    const char m1[40] = "limit you";
    puts(m1);
    const char m2[] = "fake it ";
    printf(m2); // 不会自动换行
    puts(m2);   // puts 是会自动换行的。

//    字符数组名和其他数组名一样，是该数组首元素的地址。
    char car[10] = "Tata";
    puts(car);
    puts(&car[0]);

    printf("%p \n", car);
}