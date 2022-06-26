echo "---Swapping of Integers---\n"
read -p "Enter two integers: " num1 num2
echo "\n---Before Swapping---"
echo "Variable 1: $num1"
echo "Variable 2: $num2"
num1=`expr $num1 + $num2`
num2=`expr $num1 - $num2`
num1=`expr $num1 - $num2`
echo "\n---After Swapping---"
echo "Variable 1: $num1"
echo "Variable 2: $num2"