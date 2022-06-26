echo "---Prime Number Check---"
read -p "Enter the number: " num
i=2
count=0
while test $i -le `expr $num / 2`
do
    if [ `expr $num % $i` -eq 0 ]
    then
        count=1
    fi

    i=`expr $i + 1`
done 
if [ $count -eq 1 ]
    then
    echo "Not a Prime Number"
else
    echo "Prime Number"
    fi