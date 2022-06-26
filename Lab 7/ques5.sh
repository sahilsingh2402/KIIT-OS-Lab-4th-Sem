rows=4
for((i=1;i<=rows;i++));
do
    for((j=1;j<=rows-i;j++));
    do
        echo -n "  "
    done
    for((j=1;j<=i;j++));
    do
        echo -n "x   "
    done
    echo -e ""
done
for((i=rows-1;i>=1;i--));
do
    for((j=1;j<=rows-i;j++));
    do
        echo -n "  "
    done
    for((j=1;j<=i;j++));
    do
        echo -n "x   "
    done
    echo -e ""
done

