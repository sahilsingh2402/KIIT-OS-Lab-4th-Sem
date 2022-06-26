echo "---Seconds into HH:MM:SS---\n"
read -p "Enter Seconds: " sec
hour=`echo "($sec / 3600)"|bc`
mins=`echo "($sec - (3600 * $hour)) / 60"|bc`
sec=`echo "($sec - (3600 * $hour) - ($mins * 60))"|bc`
echo "HH:MM:SS: $hour hours $mins mins $sec seconds"