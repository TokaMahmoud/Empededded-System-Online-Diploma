#include <stdio.h>
//C program to check vowel or consonant
int main() {
    char c;
    printf("Enter an alphabet:");
    scanf("%c",&c);
    switch (c) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("%c is a vowel", c);
            break;
        default:
            printf("%c is a consonant", c);
    }
    return 0;
}
