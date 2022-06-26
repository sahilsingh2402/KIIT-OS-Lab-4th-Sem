echo "---Adding Even Numbers---"
i=0
s=0
echo "Even Numbers: "
until [ $i -eq 20 ]
do
    i=`expr $i + 1`
    if [ `expr $i % 2` -eq 0 ] 
    then
        s=`expr $s + $i`
        echo -n "$i "
    fi
done
echo ""
echo "\nSum of Even Numbers: $s"
