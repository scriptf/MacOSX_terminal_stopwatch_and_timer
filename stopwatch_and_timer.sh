function stopwatch(){
  date1=`date +%s`; while true; do 
    LANG=C echo -ne "$(date -u -r $((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
  done
}

function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do
     LANG=C echo -ne "$(date -u -r $(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}


