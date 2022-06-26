echo "---Swap Pairing Elements---" 
read -p "Enter the size of array: " n 
echo "Enter the elements: "
for((i=0;i<n;i++));
do
    read arr[$i]
done
echo
for ((i = 0; i<n; i++))
do
    for((j = 0; j<n; j+=2))
    do
        temp=${arr[j]}
        arr[$j]=${arr[$((j+1))]}  
        arr[$((j+1))]=$temp
    done
done
echo
echo "Array Elements: "
for((i=0;i<n;i++));
do
    echo -n ${arr[$i]} ""
done
if [ `expr $n % 2` != 0 ]
then
    echo ${arr[$n]}
fi
echo