echo "---Perfect Number Check---"
read -p "Enter a number: " num
i=1
res=0
while [ $i -le `expr $num / 2` ]
do
    if [ `expr $num % $i` -eq 0 ]
    then
        res=`expr $res + $i`
    fi
    i=`expr $i + 1`
done
if [ $num -eq $res ]
then
    echo "$num is perfect"
else
    echo "$num is not perfect"
fi