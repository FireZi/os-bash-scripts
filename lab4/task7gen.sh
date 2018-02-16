#!/bin/bash

./task7hand.sh&
while true
do
read line
case $line in
"*")
kill -USR2 $(cat 7.pid)
;;	
"+")
kill -USR1 $(cat 7.pid)
;;
"TERM")
kill -SIGTERM $(cat 7.pid)
exit
;;
esac
done