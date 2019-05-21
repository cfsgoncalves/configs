#!/usr/bing/sh

SPACEAVAILABLE=$(df -hT /home | cut -d ' ' -f 4)
SPACEUSED=$(df -hT /home | cut -d ' ' -f 7 | tail -1)
echo "" $SPACEUSED /$SPACEAVAILABLE 
