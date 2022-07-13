#include <stdio.h>
//C program to find factorial of a number
int main() {
    int num, fact = 1;
    printf("Enter an integer:");
    scanf("%d",&num);
    if(num < 0)
        printf("Error!!! Factorial of negative number doesn't exist.");
    else{
        for (int i = 2; i <= num; ++i) {
            fact *= i;
        }
        printf("Factorial = %d", fact);
    }
    return 0;
}
