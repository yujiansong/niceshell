#!/bin/bash
#Program
#	This script only accept the flowing parameter: one, two or three.
#History
#	2016/11/14	yujiansong


function printit(){
	echo -n "Your choice is "
}
echo "This program will print your selection !"
#read -p "Input your choice: " choice
#case $choice in

case $1 in

	"one")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;

	"two")
		printit; echo $1 | tr 'a-z' 'A-z'
		;;

	"three")
		printit; echo $1 | tr 'a-z' 'A-Z'

		;;
	*)
		echo "Usage $0 {one|two|three}"
		;;
esac
