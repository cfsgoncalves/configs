#!/bin/sh

ip=$(curl -s icanhazip.com);
internalIP=$(ifconfig wlp3s0 | head -2 | tail -1 | tr " " "\n" | tail -8 |head -2| tail -1)
virtualIP=$(ifconfig virbr0 | head -2 | tail -1 | tr " " "\n" | tail -8 |head -2| tail -1)

if [[ "$BLOCK_BUTTON" -eq 1 ]];
then
	netname=$(whois $ip | grep '^netname:' | awk '{print $2}' | tail -1);
	echo "$netname"
else
	echo " ($internalIP / $ip)  $virtualIP "
fi
