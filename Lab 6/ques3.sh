echo "---Adding n Numbers---"
read -p "Enter n: " n
i=0
s=0
until [ $i -eq $n ]
do
    i=`expr $i + 1`
    echo -n "$i "
    s=`expr $s + $i`
    if [ $i -eq $n ] 
    then
        break
    fi
done
echo ""
echo "Sum: $s"