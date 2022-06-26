echo "---Odd Even---\n"
read -p "Enter the number: " num
calc=`expr $num % 2`
case $calc in
    1) echo "Odd Number"
    ;;
    0) echo "Even Number"
    ;;
    *) echo "Wrong Input!!!"
    ;;
esac