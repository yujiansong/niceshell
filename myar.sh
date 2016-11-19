#!/bin/bash
#文件归档

read -p "Three files: " FILE1 FILE2 FILE3
read -p "Destination: " DEST
read -p "Compress[gzip|bzip2|xz]: " COMP

case $COMP in

gzip)
	
	tar -zcf ${DEST}.tar.gz $FILE1 $FILE2 $FILE3 ;;
bzip2)	
	
	tar -jcf ${DEST}.tar.bz2 $FILE1 $FILE2 $FILE3 ;;

xz)
	
	tar -Jcf ${DEST}.tar.xz $FILE1 $FILE2 $FILE3 ;;

*)
	echo "Unkown"
	exit 9
	;;

esac

