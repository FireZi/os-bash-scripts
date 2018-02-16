#!/bin/bash

ps -A -o pid | tail -n+2 | awk '{file="/proc/"$1"/statm"; getline line<file; close (file); split(line, a); print $1, a[2]-a[3]}' | sort -r -n -k2 | awk '{print $1 ":" $2}' >> res4.out