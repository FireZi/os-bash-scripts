#!/bin/bash

awk '{FS=":"; print $1, $3;}' /etc/passwd | sort -n -k 2