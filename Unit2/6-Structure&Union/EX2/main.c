#include <stdio.h>
//Add two distances in inch-feet
struct Sdistance{
    int feet;
    float inch;
};
int main() {
    struct Sdistance d1,d2,sum;
    printf("Enter information for 1st distance:\n");
    printf("Enter feet:");
    scanf("%d",&d1.feet);
    printf("Enter inch:");
    scanf("%f",&d1.inch);
    printf("Enter information for 2st distance:\n");
    printf("Enter feet:");
    scanf("%d",&d2.feet);
    printf("Enter inch:");
    scanf("%f",&d2.inch);
    sum.feet = d1.feet + d2.feet;
    sum.inch = d1.inch + d2.inch;
    if(sum.inch>12){
        sum.feet++;
        sum.inch -= 12;
    }
    printf("Sum of distances=%d'-%.1f\"",sum.feet,sum.inch);
    return 0;
}
