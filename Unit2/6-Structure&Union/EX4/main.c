#include <stdio.h>
struct student{
    char name[20];
    int role;
    int marks;
};
int main() {
    struct student data[10];
    printf("Enter information of students:\n");
    for (int i = 0; i < 10; ++i) {
        data[i].role = i+1;
        printf("For roll number %d\n",data[i].role);
        printf("Enter name:");
        scanf("%s",&data[i].name);
        printf("Enter marks:");
        scanf("%d",&data[i].marks);
        printf("\n");
    }
    printf("Displaying information of students:\n");
    for (int i = 0; i < 10; ++i) {
        printf("information for roll number %d:\n",data[i].role);
        printf("Name: %s\n",data[i].name);
        printf("Marks: %d\n",data[i].marks);
        printf("\n");
    }
    return 0;
}
