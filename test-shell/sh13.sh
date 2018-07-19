#!/bin/bash
#program:
#	Repeat question until input correct answer.
#	2016/11/14	yujiansong

while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done

echo "OK ! you input the correct answer."
