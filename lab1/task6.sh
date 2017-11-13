#!/bin/bash

if [ "$HOME" = "$PWD" ]
then
	echo "$HOME"
	exit 0
else 
	echo "Error. You are in $PWD"
	exit 1
fi