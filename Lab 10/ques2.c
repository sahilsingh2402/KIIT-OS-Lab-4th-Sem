#include <stdio.h>
int main()
{
    int a[10], b[10], x[10];
    int waiting[10], turnaround[10], completion[10];
    int i, j, smallest, count = 0, time, n;
    double avg = 0, tt = 0, end;

    printf("Enter the number of processes: ");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        printf("Enter arrival time: ");
        scanf("%d", &a[i]);
    }
    for (i = 0; i < n; i++)
    {
        printf("Enter burst time: ");
        scanf("%d", &b[i]);
    }
    for (i = 0; i < n; i++)
        x[i] = b[i];

    b[9] = 9999;
    for (time = 0; count != n; time++)
    {
        smallest = 9;
        for (i = 0; i < n; i++)
        {
            if (a[i] <= time && b[i] < b[smallest] && b[i] > 0)
                smallest = i;
        }
        b[smallest]--;

        if (b[smallest] == 0)
        {
            count++;
            end = time + 1;
            completion[smallest] = end;
            waiting[smallest] = end - a[smallest] - x[smallest];
            turnaround[smallest] = end - a[smallest];
        }
    }
    printf("Process  Burst-time  Arrival-time  Waiting-time  Turnaround-time  Completion-time\n");
    for (i = 0; i < n; i++)
    {
        printf("P%d\t\t%d\t\t%d\t\t%d\t\t%d\t\t%d\n", i + 1, x[i], a[i], waiting[i], turnaround[i], completion[i]);
        avg = avg + waiting[i];
        tt = tt + turnaround[i];
    }
    printf("\nAverage waiting time: %.3f", avg / n);
    printf("\nAverage Turnaround time: %.3f", tt / n);
}

