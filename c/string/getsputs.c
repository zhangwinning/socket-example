#include <stdio.h>

#define STLEN   81

int main(void) {
    char words[STLEN];
    puts("Enter a string");
    gets(words);
    puts(words);
    puts("done");
    return 0;
};