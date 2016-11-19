#!/bin/bash


who | grep "hadoop" &> /dev/null
RETVAL=$?

while [ $RETVAL -ne 0 ]; do
	echo " `date`,hadoop is not log"
	sleep 5
	who | grep "hadoop" &> /dev/null
	RETVAL=$?
done

echo "hadoop is logged in."
