#include <stdio.h>

#define MSG "I am a symbolic string constant"
#define MAXLENGTH 81

int main(void) {
    char words[MAXLENGTH] = "I am a string in an array.";
    const char *pt1 = "something is pointing at me.";
    puts("Here are some string:");
    puts(MSG);
    puts(words);
    puts(pt1);
    words[8] = 'p';
    puts(words);

    char greeting[50] = "Hello, and"" how are" " you"
                                               " today!";
    puts(greeting);
    return 0;
}