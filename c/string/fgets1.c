#include <stdio.h>

#define STLEN   14

int main(void) {
    char words[STLEN];
    fgets(words, STLEN, stdin);
    printf("this is value %s", words);
    fputs(words, stdout);
}