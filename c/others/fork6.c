#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
    int status;
    pid_t pid;

    int a = 123456;
    float b = 123.456;
    char c = 'Z';
    int *e;
    e=&a;

    //Retriving address's
    void *ap=&a, *bp=&b, *cp=&c, *ep=&e;

    printf("Parent Before Fork:\n");
    printf("Integer a: \tvalue = %d, \taddress = %p\n", a, ap);
    printf("Float b: \tvalue = %f, \taddress = %p\n", b, bp);
    printf("Char c: \tvalue = %c, \t\taddress = %p\n", c, cp);
    printf("Pointer e: \tvalue = %p, address = %p\n", e, ep);

    pid = fork();

    if(pid > 0)
    {
        pid = wait(&status);
        printf("\nParent After Fork:\n");
        printf("Integer a: \tvalue = %d, \taddress = %p\n", a, ap);
        printf("Float b: \tvalue = %f, \taddress = %p\n", b, bp);
        printf("Char c: \tvalue = %c, \t\taddress = %p\n", c, cp);
        printf("Pointer e: \tvalue = %p, address = %p\n", e, ep);

        sleep(1);
    }
    else if(pid == 0)
    {
        printf("\nChild After Fork:\n");
        printf("Integer a: \tvalue = %d, \taddress = %p\n", a, ap);
        printf("Float b: \tvalue = %f, \taddress = %p\n", b, bp);
        printf("Char c: \tvalue = %c, \t\taddress = %p\n", c, cp);
        printf("Pointer e: \tvalue = %p, address = %p\n", e, ep);
    }
    else
        printf("fork() did not work");

    return 0;
}