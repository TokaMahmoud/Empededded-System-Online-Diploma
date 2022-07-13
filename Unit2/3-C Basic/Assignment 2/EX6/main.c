#include <stdio.h>
//C program to calculate sum of natural numbers
int main() {
    int num,sum=0;
    printf("Enter an integer:");
    scanf("%d", &num);
    for (int i = 1; i <= num; ++i) {
        sum += i;
    }
    printf("Sum = %d",sum);
    return 0;
}
