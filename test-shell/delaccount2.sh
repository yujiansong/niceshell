#!/bin/bash
#账号删除

usernames=$(cat user.passwd | cut -d ':' -f 1)
for username in $usernames
do
	echo "userdel -r $username"
	userdel -r $username
done
