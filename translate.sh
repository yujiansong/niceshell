#!/bin/bash

#大小写转换

read -p "Inputing something: " STRING

while [ $STRING != 'quit' ] ; do
	echo $STRING | tr 'a-z' 'A-Z'
	read -p "Inputing something: " STRING
done
