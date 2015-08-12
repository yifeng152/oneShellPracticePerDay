#!/bin/bash
#Program:
#    Test of loop
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/10 WuQi First realease


#while
while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
	read -p "Please input YES/yes to stop this program:" yn
done
echo "OK! you input the correct answer"


#until
until [ "$yn" == "no" -o "$yn" == "NO" ]
do 
	read -p "Please input no/NO to stop this program:" yn
done
echo "OK! you input the correct answer"


#for
function printAnimal() 
{
	for animal in $@
	do
		echo "$animal"
	done 
}
printAnimal cat dog elephant

user=$(cut -d ':' -f1 /etc/passwd)
for username in $user
do
	echo "$username"
done

s=0
nu=12
for(( i=1; i<=$nu ; i=i+1))
do
	s=$(($s + $i))
done
echo "The result of '1+2+3+...+12' is ==> $s"
