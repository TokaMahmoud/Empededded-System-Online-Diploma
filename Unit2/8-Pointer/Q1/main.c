#include <stdio.h>
//Write a program in C to demonstrate how to handle the pointers in the program
int main() {
    int m, *ab;
    m = 29;
    printf("Address of m : ox%x\n", &m);
    printf("Value of m : %d\n\n", m);
    ab = &m;
    printf("Address of pointer ab : ox%x\n", ab);
    printf("Content of pointer ab : %d\n\n", *ab);
    m = 34;
    printf("Address of pointer ab : ox%x\n", ab);
    printf("Content of pointer ab : %d\n\n", *ab);
    *ab = 7;
    printf("Address of m : ox%x\n", &m);
    printf("Value of m : %d\n\n", m);
    return 0;
}
