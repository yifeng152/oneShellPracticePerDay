#!/bin/bash
#Program:
#    use Trap to capture signal
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/12 WuQi First realease

echo trap "echo sorry, I have trapped Ctrl-C" SIGINT SIGTERM
trap "echo sorry, I have trapped Ctrl-C" SIGINT SIGTERM
echo "Running..."

count=1
while [ $count -le 5 ]
do
	echo "Loop  $count"
	count=$(($count + 1))
	sleep 2
done

echo trap - SIGINT SIGTERM
trap - SIGINT SIGTERM
#trap - SIGTERM
echo "Ending..."


echo " "
echo trap "echo this loop ends" EXIT
trap "echo this loop ends" EXIT
echo "Running..."

count=1
while [ $count -le 5 ]
do
	echo "Loop  $count"
	count=$(($count + 1))
	sleep 2
done

echo "Ending..."
