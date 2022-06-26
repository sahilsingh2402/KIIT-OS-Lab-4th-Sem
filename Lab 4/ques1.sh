echo "---Largest Number---\n"
echo "Enter 1st number: $1"
echo "Enter 2nd number: $2"
echo "\n---On Comparison---\n"
if test $1 -gt $2
then
	echo "$1 is Largest\n"
else
	echo "$2 is Largest\n"
fi