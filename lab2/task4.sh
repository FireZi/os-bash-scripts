#!/bin/bash

grep -E -r -h "^#!\s*/\S+" /bin | sed -E "s/^#!\s*(\/\S+)/\1/" | uniq -c | sort -n | tail -n 1 | tr -d "[0-9 ]"