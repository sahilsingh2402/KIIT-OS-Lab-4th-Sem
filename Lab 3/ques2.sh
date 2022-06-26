echo "---Area of Circle---\n"
read -p "Enter the radius: " radius
area=`echo 3.14159 \* $radius \* $radius|bc`
echo "Area of circle is $area"