#include <stdio.h>
#include <string.h>
//Find the frequency of characters in a string
int main() {
    char s[50], c;
    int f=0;
    printf("Enter a string:");
    gets(s);
    printf("Enter a character to find frequency:");
    scanf("%c",&c);
    for (int i = 0; i < strlen(s); ++i) {
        if(s[i] == c)
            f++;
    }
    printf("Frequency of e = %d",f);
    return 0;
}
