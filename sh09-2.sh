#!/bin/bash
#Program:
#	Show "Hello" from $1...by using case ... esac
#	2016/11/14	yujiansong

case $1 in
	"hello")
		echo "Hello, are you okay ?"
		;;
	
	"")
		echo "You MUST input parameters, ex> {$0 someword}"
	 	;;
	*)
		echo "Usage $0 {hello}"
		;;
esac
