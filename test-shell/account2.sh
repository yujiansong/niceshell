#!/bin/bash
#
#这个程序主要帮你新建大量账号使用
#
#	2016/11/15	yujiansong

#1.进行账号相关的输入

echo ""
echo "例如我们学校学生的学号为： 4960c001 - 4960c060,那么: "
echo "账号开头的代码为		：4"
echo "账号层级或年级为		：960c"
echo "号码数字位数为（001-060）	：3"
echo "账号开始号码为       	：1"
echo "账号数量为		：60"
echo ""

read -p "账号开头代码(Input title name, ex> std) ======>" username_start
read -p "账号层级或年级(Input degree, ex> 1 or enter)======>" username_degree
read -p "号码部分的数字位数(Input \# of digital)======>" nu_nu
read -p "起始号码(Input start number, ex> 100)======>" nu_start
read -p "账号数量(Input amount of users, ex>100)======>" nu_amount
read -p "密码标准 1) 与账号相同 2) 随机数意义 ======>" pwm

if [ "$username_start" == "" ]; then
	echo "没有输入开头的号码，不给你执行！"; exit 1
fi

#判断数字系统
testing0=$(echo $nu_nu	| grep '[^0-9]')
testing1=$(echo $nu_amount | grep '[^0-9]')
testing2=$(echo $nu_start | grep '[^0-9]')

if [ "$testing0" != "" -o "$testing1" != "" -o "$testing2" != "" ]; then
	echo "输入的号码不对，有非数字的内容!"; exit 1
fi

if [ "$pwm" != "1" ]; then
	pwn="2"
fi

#2. 开始输入账号与密码文件!

[ -f "$accountfile" ] && mv $accountfile "$accountfile"$(date "+%Y%m%d")
nu_end=$(($nu_start+$nu_amount-1))
for (( i=$nu_start; i<$nu_end; i++ ))
do
	nu_len=${#1}
	if [ $nu_nu -lt $nu_len ]; then
		echo "数值位数($1=>$nu_len) 已经比你设置的位数($nu_nu)还大!"
		echo "程序无法继续"
		exit 1
	fi

	nu_diff=$(($nu_nu - $nu_len))
	if [ "$nu_diff" != "0" ]; then
		nu_nn=0000000000
		nu_nn=${nu_nn:1:$nu_diff}
	fi

	account=${username_start}${username_degree}${nu_nn}${1}
	if [ "$pwm" == "1" ]; then
		password="$account"
	else
		password=$(openssl rand -base64 6)
	fi
	echo "$account":"$password" | tee -a "$accountfile"
done

#3.开始新建账号与密码!
cat "$accountfile" | cut -d ':' -f1 | xargs -n 1 useradd -m
chpasswd < "$accountfile"
pwconv
echo "OK! 新建完成!"


