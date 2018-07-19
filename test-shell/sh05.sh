#!/bin/bash
#Program
#	User input a filename,programes will check the flowing;
#	1). exist ? 2). file/directory? 3). file permissions
#	2016/11/14
#	yujiansong

echo -e "Please input a filename, I will check the filename's type and permission. \n\n"
read -p "Input a filename: " filename

test -z $filename && "You MUST input a filename." && exit 0

test ! -e $filename && "The filename '$filename' DO NOT exist" && exit 0

test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"

test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo "The filename: $filename is a $filetype"
echo "And the permissions are : $perm"
