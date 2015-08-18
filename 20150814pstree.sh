#!/bin/bash
#Program:
#    analyze 'process' with pstree
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/14 WuQi First realease

./20150814pstree_sleep.sh &

pstree -Aup ubuntu| grep -n -A2 -B3 'sh'
while [ 0 ]
do
	sleep 2
done
