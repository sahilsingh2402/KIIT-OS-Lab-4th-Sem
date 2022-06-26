echo "---Array in Reverse---"
read -p "Enter the size of array: " n 
echo "Enter the elements: "
for ((i=0;i<n;i++));
do
    read arr[$i]
done
echo
echo "Array Elements: "
for ((i=0;i<n;i++));
do
    echo -n ${arr[$i]} ""
done
echo
echo "Array Elements in reverse: "
for ((i=n;i>=0;i--));
do
    echo -n ${arr[$i]} ""
done
echo
