for((i=1;i<=4;i++));
do
  for((j=4;j>i;j--));
  do
    echo -n "  "
  done
  for((k=1;k<=i;k++));
  do
    echo -n "$k "
  done
  for((l=i-1;l>=1;l--));
  do
    echo -n "$l "
  done
  echo -e ""
done
