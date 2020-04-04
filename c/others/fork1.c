#include <unistd.h>
#include <stdio.h>
int main() {
    int i;
    if (fork() == 0) {
        for ( i = 1; i < 1000; i++){
            printf("this is child process\n");
        }
    }else {
        for(i = 1; i < 1000; i++){
            printf("this is father process \n");
        }
    }
}