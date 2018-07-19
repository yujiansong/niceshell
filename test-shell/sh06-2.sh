#!/bin/bash
#Program
#	This program shows the user's choice
#	2016/11/14	yujiansong

read -p "Please input (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK, continue"
	exit 0
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "Oh, interrupt!"
	exit 0
fi

echo "I don't know what your choice is " && exit 0

