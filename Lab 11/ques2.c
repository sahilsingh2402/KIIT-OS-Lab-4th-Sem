#include <stdio.h>
int main()
{
    int a[10], b[10], x[10], pr[10];
    int waiting[10], turnaround[10], completion[10];
    int i, j, smallest, count = 0, time, n;
    double avg = 0, tt = 0, end;
    printf("\nEnter the number of Processes: ");
    scanf("%d", &n);
    printf("\n");
    for (i = 0; i < n; i++)
    {
        printf("Enter arrival time of P[%d]: ", i + 1);
        scanf("%d", &a[i]);
    }
    printf("\n");
    for (i = 0; i < n; i++)
    {
        printf("Enter burst time of P[%d]: ", i + 1);
        scanf("%d", &b[i]);
    }
    printf("\n");
    for (i = 0; i < n; i++)
    {
        printf("Enter priority of P[%d]: ", i + 1);
        scanf("%d", &pr[i]);
    }
    for (i = 0; i < n; i++)
        x[i] = b[i];

    pr[9] = 100000;
    for (time = 0; count != n; time++)
    {
        smallest = 9;
        for (i = 0; i < n; i++)
        {
            if (a[i] <= time && pr[smallest] > pr[i] && b[i] > 0)
                smallest = i;
        }
        b[smallest] = b[smallest] - 1;
        if (b[smallest] == 0)
        {
            count++;
            waiting[smallest] = time + 1 - a[smallest] - x[smallest];
            turnaround[smallest] = time + 1 - a[smallest];
            end = time + 1;
            completion[smallest] = end;
        }
    }
    printf("Process\t   Burst-time\t   Arrival-time\t   Waiting-time\t   Turnaround-time\t   Completion-time\t   Priority\n");
    for (i = 0; i < n; i++)
    {
        printf("P%d\t\t%d\t\t%d\t\t%d\t\t%d\t\t\t%d\t\t\t%d\n", i + 1, x[i], a[i], waiting[i], turnaround[i], completion[i], pr[i]);
        avg = avg + waiting[i];
        tt = tt + turnaround[i];
    }
    printf("\n\nAverage waiting time: %.3f", (avg / n));
    printf("\nAverage Turnaround time: %.3f\n", (tt / n));
}