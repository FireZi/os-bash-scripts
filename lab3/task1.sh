#!/bin/bash

ps -U niyaz | wc -l
ps -U niyaz -o pid,command | sed -r "s/([0-9]+)\s(.+)$/\1:\2/"