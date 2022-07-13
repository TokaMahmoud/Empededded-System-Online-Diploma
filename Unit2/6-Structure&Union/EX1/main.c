#include <stdio.h>
struct student{
    char name[20];
    int roll;
    float marks;
};
int main() {
    struct student data;
    printf("Enter information of students:\n");
    printf("Enter Name:");
    gets(data.name);
    printf("Enter roll number:");
    scanf("%d",&data.roll);
    printf("Enter marks:");
    scanf("%f",&data.marks);
    printf("Displaying information:\n");
    printf("name: %s\n", data.name);
    printf("Roll: %d\n", data.roll);
    printf("Marks: %.2f", data.marks);
    return 0;
}
