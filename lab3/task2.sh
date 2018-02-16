#!/bin/bash

ps -Ao pid,stime | sort -n -r -k2 | head -1 | awk '{print $1}'