#!/bin/bash
#使用script来新建quota所需的环境

groupadd myquotagrp
for username in myquota1 myquota2 myquota3 myquota4 myquota5
do
	useradd -g myquotagrp $username
	echo "password" | passwd --stdin $username
done
