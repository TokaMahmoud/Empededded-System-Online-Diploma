#include <stdio.h>
//Write a program in C to show a pointer to an array which contents are pointer to structure.
struct emp{
    char name[10];
    int id;

};

int main() {
    struct emp e1 ={"Alex",1002};
    struct emp e2 ={"Toka",4010};
    struct emp e3 ={"Rana",6734};
    struct emp *a[3] = {&e1, &e2, &e3};
    struct emp **p = a;
    for (int i = 0; i < 3; ++i) {
        printf("Employee Name: %s\n", (**p).name);
        printf("Employee ID: %d\n\n", (**p).id);
        p++;
    }
    return 0;
}
