echo "---Grading System---\n"
read -p "Enter subject 1 marks (out of 100): " sub1
read -p "Enter subject 2 marks (out of 100): " sub2
read -p "Enter subject 3 marks (out of 100): " sub3
sub_total=`expr $sub1 + $sub2 + $sub3`
div=`expr $sub_total / 30`
case $div in
    10) echo "O Grade\n" 
    ;;
    9) echo "O Grade\n" 
    ;;
    8) echo "E Grade\n" 
    ;;
    7) echo "A Grade\n" 
    ;;
    6) echo "B Grade\n" 
    ;;
    5) echo "C Grade\n"
    ;;
    4) echo "D Grade\n" 
    ;;
    *) echo "F Grade(Fail)\n" 
    ;;
esac