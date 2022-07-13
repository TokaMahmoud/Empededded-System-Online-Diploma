#include <stdio.h>
#include <math.h>
//c function to take an integer number and calculate it's square root
double fun(double );
int main() {
    double num;
    printf("Enter a number:");
    scanf("%lf",&num);
    printf("square root: %.3lf", fun(num));
    return 0;
}
double fun(double num){
    return sqrt(num);
}