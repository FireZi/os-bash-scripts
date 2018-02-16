#!/bin/bash

res=1
mode='+'
tail -n 0 -f res5.in | while true
do
read line
case $line in
'+')
mode='+'
;;
'mult')
mode='*'
;;
[0-9]*)
if [ $mode == '+' ]
then
let res=$res+$line
else
let res=$res\*$line
fi
echo "$mode$line = $res"
;;
*)
echo "Error:("
;;
esac
done