#!/bin/bash

echo $$ > 7.pid
a=1
mode="+"
user1()
{
mode="+"
}
user2()
{
mode="*"
}
sigterm()
{
echo "Handler Stoped"
exit
}
trap 'user1' USR1
trap 'user2' USR2
trap 'sigterm' SIGTERM
while true
do
case $mode in
"+")
let a=$a+2
;;
"*")
let a=$a*2
;;
esac
echo $a
sleep 1
done