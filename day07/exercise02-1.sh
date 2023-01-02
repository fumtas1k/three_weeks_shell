#!/bin/sh

# 2-1
basename $0 | sed -E 's/\.[^.]+$//' | xargs -I@ touch "day07/@_$(date '+%Y%m%d').txt"
