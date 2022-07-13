#include <stdio.h>

int fun(int);

//c function to take a number and sum all digits
int main() {
    int num;
    printf("Enter a number:");
    scanf("%d", &num);
    printf("The sum: %d", fun(num));
    return 0;
}

int fun(int num){
    int sum = 0;
    while (num != 0){
        sum += (num%10);
        num /= 10;
    }
    return sum;
}
