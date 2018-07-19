#!/bin/bash
#这个程序用来新建账号，功能有
#1.检查 account1.txt 是否存在，并将该文件内的账号取出
#2.新建上述文件的账号
#3.将上述账号的密码修改为强制第一次进入需要修改密码的格式
#	2016/11/15	yujiansong

#检查 account1.txt 是否存在
if [ ! -f account1.txt ]; then
	echo "所需要的账号文件不存在，请新建 account1.txt , 每行一个账号名称"
	exit 1
fi

usernames=$(cat account1.txt)

for username in $usernames

do

	useradd $usrename
	echo $username | passwd --stdin $username
	chage -d 0 $username

done
