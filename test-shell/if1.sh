#!/bin/bash
#统计根分区使用率
#Author: yujiansong (E-mail: yujiansong6@163.com)

rate=$(df -h | grep /dev/sda5 | awk '{print $5}' | cut -d "%" -f1)
#把根分区使用率作为变量值赋予变量rate

if [ $rate -ge 10 ]
	then
		echo "/dev/sda5 is full !!!"
fi
