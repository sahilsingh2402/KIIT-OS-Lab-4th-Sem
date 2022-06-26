echo "---Adding Numbers till 20---"
i=0
until [ $i -eq 20 ]
do
    i=`expr $i + 1`
    echo -n "$i "
    s=`expr $s + $i`
done
echo ""
echo "Sum: $s"
