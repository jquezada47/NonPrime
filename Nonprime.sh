#!/bin/bash

checkNonPrime(){
	if [ $1 -eq 1 ]
	then
		return 0
	fi
	j=2
	while [ $j -lt $1 ]
	do
		val=`expr $1 % $j`
	if [ $val -eq 0 ]
	then
		return 0
	fi
	j=`expr $j + 1`
done
return 1
}
echo -n "Enter the value of n: "
read n
echo -n "First $n non-prime numbers are: "
counter=0
p=1
while [ $counter -lt $n ]
do
	checkNonPrime $p
if [ $? -eq 0 ]
then
        echo -n "$p "
        counter=`expr $counter + 1`
fi
p=`expr $p + 1`
done
echo ""
