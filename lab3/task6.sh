#!/bin/bash

ppid=0
avg=0
count=0
b=""
while read a
do
if [[ -n $a ]]
then
newppid=$(echo $a | grep -E -o "Parent_ProcessID=[0-9]+" | grep -o "[0-9]\+")
newavg=$(echo $a | grep -E -o "Average_Sleeping_Time=[0-9.]+" | grep -o "[0-9.]\+")
if [[ $ppid == $newppid ]]
then avg=$(echo "$avg+$newavg" | bc -l -q)
count=$(echo "$count+1" | bc -l -q)
else
avg=$(echo "$avg/$count" | bc -l -q)
b=$b"Average_Sleeping_Children_of_ParentID="$ppid" is "$avg$'\n'
avg=$newavg
ppid=$newppid
count=1
fi
b=$b$a$'\n'
fi
done < res5.out
avg=$(echo "$avg/$count" | bc -l -q)
b=$b"Average_Sleeping_Children_of_ParentID="$ppid" is "$avg$'\n'
echo "$b" > res6.out