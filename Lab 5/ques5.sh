echo "---Area of Shapes---\n"
echo "Shapes :\n"
echo "1. Circle"
echo "2. Square"
echo "3. Rectangle"
read -p "Enter choice: " choice
case $choice in
	1) read -p "Enter the radius: " radius
    area=`echo "scale=2;3.14*$radius*$radius"|bc`
    ;;
	2) read -p "Enter the side: " side
    area=`echo "scale=2;$side*$side"|bc`
    ;;
	3) read -p "Enter length of the circle: " length
	read -p "Enter breadth of the circle: " breadth
    area=`echo "scale=2;$length*$breadth"|bc`
    ;;
	*) echo "Wrong Input!!!"
    ;;
esac
echo "The area is : $area"