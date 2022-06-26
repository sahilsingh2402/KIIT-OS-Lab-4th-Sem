echo "---Character Check---\n"
read -p "Enter a character: " char
case $char in
	[0-9]) echo "Numeric Input Detected!!!\n"
    ;;
	*) case $char in
		[a-z]) echo "Lower Case Alphabet Detected\n"
        ;;
		[A-Z]) echo "Upper Case Alphabet Detected\n"
        ;;
		*) echo "Special Character Detected!!!\n";;
	esac
esac