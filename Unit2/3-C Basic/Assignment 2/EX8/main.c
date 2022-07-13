#include <stdio.h>
//Simple calculator
int main() {
    float a,b,res;
    char op;
    printf("Enter operator + or - or * or divide :");
    scanf("%c", &op);
    printf("Enter two operands:");
    scanf("%f %f", &a, &b);
    switch (op) {
        case '+':
            res = a + b;
            break;
        case '-':
            res = a - b;
            break;
        case '*':
            res = a * b;
            break;
        case '/':
            res = a/b;
            break;
    }
    printf("%.1f %c %.1f = %0.1f", a, op, b, res);
    return 0;
}
