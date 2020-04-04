#include <stdio.h>

#define MSG "this is world"
#define MAXLENGTH   81

int main() {

    char words[MAXLENGTH] = "I am a string in an array";
    const char *pt1 = "Something is pointing at me.";

    puts("Here are some string1:");
    puts(MSG);
    puts(words);
    puts(pt1);
    words[8] = 'p';
    puts(words);
}