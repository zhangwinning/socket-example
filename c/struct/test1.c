/**
 * 结构和其他数据结构
**/
#include <stdio.h>
#include <string.h>

#define MAXTITL 41
#define MAXAUTL 31

void s_gets(char*st, int n);
struct book {
    char title[MAXTITL];    // 这里定义的是一个字符串
    char author[MAXAUTL];
    float value;
};

int main(void) {
    struct book library;
    printf("Please enter the book title \n");
    s_gets(library.title, MAXTITL);
    printf("Please enter the book author \n");
    s_gets(library.author, MAXTITL);
    printf("in the main is %s %s", library.title, library.author);

    printf("done \n");
    return 0;
}

void s_gets(char *st, int n) {
    fgets(st, n, stdin);
//    char *ret_val;
//    char *find;
//    ret_val = fgets(st, n, stdin);
////    printf("this is value is %s ", ret_val);
//    if (ret_val) {
//        find = strchr(st, '\n');    // 查找换行符
////        printf("this is value is %s \n", find);
//        if (find) {
//            *find = '\0';
//        } else {
//            while (getchar() != '\n') {
//                continue;
//            }
//        }
//    }

//    return ret_val;
}

/**
 * Q&A
 * 1. 为什么这里这么打印 printf("this is value is %s", ret_val);
 *
**/