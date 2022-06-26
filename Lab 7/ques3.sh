num=1
rows=5
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  for((j=i; j>=1; j--))
  do
    echo -n "$j "
  done
  echo
done