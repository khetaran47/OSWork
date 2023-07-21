#include <stdio.h>
int main() {
    int inp = 1 ;
    double avg;
    int sum = 0;
    int cnt = -1;
    while(inp > 0){
    printf("Enter number : ");
    scanf("%d",&inp);
    sum += inp;
    cnt++;
    }
    avg = (float)sum/cnt;
    printf("Summation = %d\n", sum);
    printf("CNT = %d\n", cnt);
    printf("Average = %f\n", avg);
    return 0;
}

