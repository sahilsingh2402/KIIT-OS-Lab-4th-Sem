echo "---Printing 1 to n Numbers in reverse---"
read -p "Enter n: " n
i=0
until [ $n -eq $i ]
do
    echo -n "$n "
    n=`expr $n - 1`
done
echo ""