echo "---Print numbers till 100---"
read -p "Enter how many elements to print in a line: " n
i=0
while [ $i -le 100 ]
do
    j=1
    while [ $j -le $n ] 
    do
        echo -n "$i "
        i=`expr $i + 1`
        j=`expr $j + 1`
    done
    echo ""
done
