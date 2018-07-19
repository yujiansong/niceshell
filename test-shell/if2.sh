#!/bin/bash
#备份/etc 数据
# Author: yujiansong ( E-mail:yujiansong6@163.com )

ntpadte asia.pool.ntp.org &>/dev/null
#同步系统时间

date=$(date +%y%m%d)
#把当前系统时间按照 年月日 格式赋予变量date

size=$(du -sh /etc)
#统计etc数据的大小，并赋予变量size

if [ -d /tmp/dbback ]

	then
		echo "Date is : $date" > /tmp/dbback/db.txt

		echo "Size is : $size" >> /tmp/dbback/db.txt

		cd /tmp/dbback

		tar -zcf etc_$date.tar.gz /etc db.txt &>/dev/null

		rm -rf /tmp/dbback/db.txt

	else
		mkdir /tmp/dbback
	
		echo "Date is : $date" > /tmp/dbback/db.txt

		echo "Size is : $size" >> /tmp/dbback/db.txt

		cd /tmp/dbback

		tar -zcf etc_$date.tar.gz /etc db.txt &>/dev/null

		rm -rf /tmp/dbback/db.txt
		
fi

