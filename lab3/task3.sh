#!/bin/bash

for i in $(ls /proc/ | grep "[0-9]\+") 
do 
if (echo $i | readlink /proc/$i/exe | grep "/sbin"); then
	echo $i >> res3.out
fi
done