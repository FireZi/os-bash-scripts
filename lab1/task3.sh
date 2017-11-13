#!/bin/bash

full_string=""
last_string=""

while [ "$last_string" != "q" ]; do
	full_string=$full_string$last_string
	read last_string
done

echo "$full_string"