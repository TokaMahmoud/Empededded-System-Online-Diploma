#include <stdio.h>
//Write Source Code to Swap Two Numbers without temp variable.
int main() {
    float a, b;
    printf("Enter value of a:");
    scanf("%f",&a);
    printf("Enter value of b:");
    scanf("%f",&b);
    a = a+b;
    b = a-b;
    a = a-b;
    printf("After swapping, value of a = %0.2f\n", a);
    printf("After swapping, value of b = %0.2f", b);
    return 0;
}
