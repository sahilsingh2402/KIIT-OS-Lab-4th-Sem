echo "---Types of For Loops---"
echo "Using C style for loop"
for((i=1;i<=10;i++));
do
    echo -n "$i "
done
echo
echo
echo "Using loop over a number range"
for i in {1..10}
do
    echo -n "$i "
done
echo
echo
echo "Using loop over elements"
for i in 1 2 3 4 5 6 7 8 9 10
do
    echo -n "$i "
done
echo
echo

