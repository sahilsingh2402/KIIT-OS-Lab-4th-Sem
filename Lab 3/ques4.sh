echo "---Fahrenheit to Celsius---\n"
read -p "Enter the temperature in fahrenheit: " fahr
cels=`echo "($fahr - 32) * 0.56"|bc`
echo "$fahr F is $cels C"