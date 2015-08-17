#!/bin/bash
#Program:
#    Test of jobs
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/12 WuQi First realease

./20150811trap.sh > ./material/out1 &
./20150811trap.sh > ./material/out2 &
./20150811trap.sh > ./material/out3 &
echo ps
ps

echo ""
echo jobs
jobs

echo ""
echo jobs -l
jobs -l

echo ""
echo jobs -n
jobs -n

echo ""
echo jobs -p
jobs -p

echo ""
echo jobs -r
jobs -r

echo ""
echo jobs -s
jobs -s

sleep 2
echo "after sleep 2"
ps
