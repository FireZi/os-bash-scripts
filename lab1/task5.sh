#!/bin/bash

echo "1. Run nano"
echo "2. Run Vim"
echo "3. Run links"
echo "4. Quit"
read a
case $a in
	1 )
	nano
;;
	2 )
	vi
;;
	3 )
	links
;;
	4 )
	exit
;;
esac