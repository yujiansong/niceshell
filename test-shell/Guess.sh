#!/bin/bash
PRICE=$(expr $RANDOM % 1000)
TIMES=0
echo "the goods of price between 0 and 999，can you guess the price?"
while true
do
read -p"please input the price when you guess:" INT
let TIMES++
if [ $INT -eq $PRICE ]; then
echo "congratulations, you correct! the goods price is $PRICE"
echo "you guess $TIMES times"
exit 0
elif [ $INT -gt $PRICE ]; then
echo "too high!"
else
echo "too low!"
fi
done
