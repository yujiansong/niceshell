#!/bin/bash 
#Filename: sleep.sh
echo -n Count:
#存储光标位置
tput sc

count=0;
while true;
do
if [ $count -lt 3600 ]; then
    let count++;
    #1s延迟
    sleep 1;
    #恢复光标位置
    tput rc
    #清除从当前光标位置到行尾之间的所有内容，使得旧count值可以被清除并写入新值
    tput ed
    echo -n $count;
else
    exit 0;
fi
done
