rows=5
chars=( {A..Z} )
for((i=1;i<=rows;i++));
do
    for((j=0;j<i;j++));
    do
        echo -n "${chars[j]}"
    done
    echo -e ""
done
