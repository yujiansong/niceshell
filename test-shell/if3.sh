#!/bin/bash
# 判断apache是否启动
# Author: yujiansong (E-mail: yujiansong6@163.com )

port=$(nmap -sT 192.168.198.128 | grep tcp | grep http | awk '{ print $2 }')
#使用nmap命令扫描服务器，并截取apache的服务状态，赋予变量port

if [ "$port" == "open" ]

	then
		echo "$(date) httpd is okay !" >> /tmp/httpd_acc.log
	else
		echo "$(date) httpd is reboot !" >> /tmp/httpd_error.log

fi
