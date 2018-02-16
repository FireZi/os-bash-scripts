#!/bin/bash

echo "+" > res5.in
./task5hand.sh&
while true
do
read line
if [[ $line == "QUIT" ]]; then
killall task5hand.sh
exit
fi
if [[ $line == "*" ]]; then 
	echo "mult" >> res5.in
else
echo $line >> res5.in
fi
done