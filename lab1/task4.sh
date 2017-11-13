#!/bin/bash

a=1
count=0

while [[ $a%2 -eq 1 ]]
do
	read a
	let count=$count+1	
done

echo "$count"