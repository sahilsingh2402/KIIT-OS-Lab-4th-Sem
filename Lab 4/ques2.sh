echo "---Leap Year Checker---"
read -p "Enter the year: " year
div4=`expr $year % 4`
div100=`expr $year % 100`
div400=`expr $year % 400`
if [ $div400 -eq 0 ]
then
	echo "$year is a leap year"
else
	if [ $div100 -eq 0 ]
	then
		echo "$year is not a leap year"
	elif [ $div4 -eq 0 ]
	then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
fi