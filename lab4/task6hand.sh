#!/bin/bash

echo $$ > 6.pid
a=0
mode='run'
sigterm()
{
mode='stop'
}
trap 'sigterm' SIGTERM
while true
do
case $mode in
'run')
let a=$a+1
;;
'stop')
echo 'Handler Stoped'
exit
;;
esac
sleep 1
done