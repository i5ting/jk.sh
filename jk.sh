#!/bin/sh
#=====================
#
# nohup ./jk.sh 3019 0 >jk.log 2>&1 &
#=====================

PORT=$1
COUNT=$2

while :
do
  stillRunning=$(lsof -i:$PORT|grep LISTEN|wc -l)
  if [ $stillRunning -gt $COUNT ] ; then
    echo "$PORT service was already started"
  else
    echo "$PORT service was not started"
    
    `curl http://127.0.0.1:5001/request_verify_token\?tel\=186xxxx3333`
    # `open /Applications/Thunder.app`
    sleep 600
  fi
  sleep 6
done