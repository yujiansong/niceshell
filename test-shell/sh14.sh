#!/bin/bash
#Program:
#	Use loop to calculate "1+2+3+...+100" result.
#	2016/11/14	yujiansong

s=0
i=0
while [ "$1" != "100" ]

do
	i=$(($i+1))
	s=$(($s+$i))
done

echo "The result of '1+2+3...+100' is ==> $s"
