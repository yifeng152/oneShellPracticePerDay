#!/bin/bash
#Program:
#    Assitant for jobControl.sh
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/13 WuQi First realease

echo ""
echo "Hello, this is $0"
echo "PID is $$"
counter=0;
while [ 0 ]
do
	counter=$(($counter+1 ))
	echo "this is $counter time"
	sleep 5
done

