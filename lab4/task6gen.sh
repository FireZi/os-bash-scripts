#!/bin/bash

./task6hand.sh&
while true
do
read line
case $line in
"TERM")
kill -SIGTERM $(cat 6.pid)
echo "Signal sended"
exit
;;
esac
done