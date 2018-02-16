#!/bin/bash

res=""
for pid in $(ps -A -o pid | tail -n +2) 
do
if [ -f "/proc/"$pid"/status" ]; then 
ppid=$(grep -E -i "ppid:\s(.+)" /proc/"$pid"/status | grep -o "[0-9]\+")
avg=$(grep -E -i "avg_atom(.+)" /proc/"$pid"/sched | grep -o "[0-9.]\+")
res=$res"ProcessID="$pid" : Parent_ProcessID="$ppid" : Average_Sleeping_Time="$avg$'\n'
fi
done
echo "$res" | sort -k2 >> res5.out