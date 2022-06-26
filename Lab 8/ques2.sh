echo "---Store Array in Reverse and Display---"
read -p "Enter the size of Array: " n 
echo "Enter the elements: "
for((i=0;i<n;i++));
do
    read arr[$i]
done
echo
min=0
max=$(( ${#arr[@]} -1 ))
while [[ min -lt max ]]
do
    x="${arr[$min]}"
    arr[$min]="${arr[$max]}"
    arr[$max]="$x"
    (( min++, max-- ))
done
echo "Array Elements: "
for((i=0;i<n;i++));
do
    echo -n ${arr[$i]} ""
done
echo