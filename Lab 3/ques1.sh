echo "---Arithematic Operations---\n"
read -p "Enter 1st number: " num1
read -p "Enter 2nd number: " num2
echo "\n---Addition---"
sum=`echo $num1 + $num2|bc`
echo "$num1 + $num2 = $sum"
echo "\n---Subtraction---"
sub=`echo $num1 - $num2|bc`
echo "$num1 - $num2 = $sub"
echo "\n---Multiplication---"
mul=`echo $num1 \* $num2|bc`
echo "$num1 * $num2 = $mul"
echo "\n---Division---"
div=`echo $num1 / $num2|bc`
echo "$num1 / $num2 = $div"