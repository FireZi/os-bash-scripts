#!/bin/bash

pattern="[a-zA-Z0-9_.]+@[a-zA-Z0-9_]+\.[a-zA-Z0-9_]+"
grep -E -r -h -o $pattern /etc/* | awk '{printf("%s, ", $0)}' > emails.lst
