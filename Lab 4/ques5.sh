echo "---Pallindrome Checker---\n"
read -p "Enter the 3 digit number: " num1
a=`expr $num1 / 100`
b=`expr $num1 % 100`
c=`expr $b / 10`
d=`expr $b % 10`
e=$((d * 100))
f=$((c * 10))
num2=$((a + e + f))
if [ $num1 -eq $num2 ]
    then 
        echo "It's a pallindrome"
else
    echo "Not a pallindrome"
fi