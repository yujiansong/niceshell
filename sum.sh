#!/bin/bash
#求和

declare -i I=1
declare -i SUM=0

while [ $I -le 100 ]; do
	let SUM+=$I
	let I++
done

echo $SUM
