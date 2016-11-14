#!/bin/bash
#Program
#	This program shows the user's choice
#	2016/11/14	yujiansong

read -p "Please input (Y/N): " yn

[ "$yn" == "Y" -o "$yn" == "y" ] && "OK, continue" && exit 0

[ "$yn" == "N" -o "$yn" == "n" ] && "oh, interrupt!" && exit 0

echo "I don't konw what your choice is " && exit 0
