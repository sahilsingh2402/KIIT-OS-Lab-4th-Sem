echo "---Triangle Check---"
read -p "Enter the three sides of traingle: " side1 side2 side3
if [ `expr $side1 + $side2` -gt $side3 -a `expr $side1 + $side3` -gt $side2 -a `expr $side2 + $side3` -gt $side1 ]
then
	echo "\nTraingle with sides $side1, $side2 and $side3 is possible\n"
	semi=`echo "scale=2; ($side1+$side2+$side3)/2" | bc`
	area=`echo "scale=2; sqrt($semi*($semi-$side1)*($semi-$side2)*($semi-$side3))"|bc`
	echo "Area of triangle is $area"
else
	echo "\nTraingle with sides $side1, $side2 and $side3 is not possible\n"
fi
