#!/bin/bash
#Program:
#    Test fg and bg
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/13  WuQi First realease


echo "PID is $$"
echo "Start 20150813jobControl_test.sh"
./20150813jobControl_test.sh &
./20150813jobControl_test.sh &
./20150813jobControl_test.sh &
echo "Finish the test"


sleep 1
jobs

kill -9 %1
echo "kill -19 %1"

sleep 1
jobs

kill -18 %1
echo "kill -18 %1"

sleep 1
jobs


