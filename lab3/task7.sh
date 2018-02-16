#!/bin/bash

ps aux | tail -n+2 | sort -n -r -k4 | head -1 | awk '{print $1 ":" $2}'