echo "---Odd Even Checker---\n"
read -p "Enter a number: " num
if [ `expr $num % 2` -eq 0 ]
then
	echo "$num is Even"
else
	echo "$num is Odd"
fi