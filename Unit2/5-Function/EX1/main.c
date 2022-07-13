//Prime Numbers between two intervals

#include <stdio.h>

int prime(int num);

int main() {
    int num1,num2;
    printf("Enter two numbers(intervals):");
    scanf("%d %d",&num1, &num2);
    printf("Prime numbers between %d and %d are: ",num1,num2);
    for (int i = num1; i <= num2; ++i) {
        if(prime(i))
            printf("%d ", i);
    }
    return 0;
}
int prime(int num){
    for (int j = 2; j < num; ++j) {
        if(num%j==0)
            return 0;
    }
    return 1;
}