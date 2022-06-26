echo "---Arithematic Operations---\n"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "\n1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division\n"
read -p "Enter Choice: " choice
add=`echo "$num1 + $num2"|bc`
sub=`echo "$num1 - $num2"|bc`
mul=`echo "$num1 * $num2"|bc`
div=`echo "scale=2;$num1 / $num2"|bc`
case $choice in
    1) echo "Addition: $add"
    ;;
    2) echo "Subtraction: $sub"
    ;;
    3) echo "Multiplication: $mul"
    ;;
    4) echo "Division: $div"
    ;;
    *) echo "Wrong Input!!!"
    ;;
esac
