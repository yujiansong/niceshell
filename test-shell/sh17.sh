#!/bin/bash
#Program:
#	Use ping command to check the network's PC state.
#	2016/11/14	yujiansong

network="192.168.85"

for sitenu in $(seq 1 100)
do
	ping -c 1 -w 1 $(network).$(sitenu) &> /dev/null && result=0 || result=1

	if [ "$result" == 0 ]; then
		echo "Server $(network).$(sitenu) is up."
	else	
		echo "Server $(network).$(sitenu) is Down."
	fi
done
