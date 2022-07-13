#include <stdio.h>
struct Scomplex{
    float real;
    float imaginary;
};
void addComplex(struct Scomplex, struct Scomplex);
int main() {
    struct Scomplex num1,num2;
    printf("For 1st complex number\n");
    printf("Enter real and imaginary respectively:");
    scanf("%f %f",&num1.real,&num1.imaginary);
    printf("For 2st complex number\n");
    printf("Enter real and imaginary respectively:");
    scanf("%f %f",&num2.real,&num2.imaginary);
    addComplex(num1,num2);
    return 0;
}
void addComplex(struct Scomplex num1, struct Scomplex num2){
    struct Scomplex sum;
    sum.real = num1.real + num2.real;
    sum.imaginary = num1.imaginary + num2.imaginary;
    printf("Sum=%.1f+%.1fi",sum.real,sum.imaginary);
}