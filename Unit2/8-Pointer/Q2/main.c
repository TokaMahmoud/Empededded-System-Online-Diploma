#include <stdio.h>
//Write a program in C to print all the alphabets using a pointer
int main() {
    char alph[26];
    char *p = alph;
    for (int i = 0; i < 26; ++i) {
        *p = i + 'A';
        p++;
    }
    p = alph;
    printf("The Alphabets are:\n");
    for (int i = 0; i < 26; ++i) {
        printf("%c ", *p);
        p++;
    }
    return 0;
}
