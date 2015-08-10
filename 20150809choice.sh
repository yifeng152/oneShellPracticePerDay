#!/bin/bash
#Program:
#    This program shows the user's choice
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/10 WuQi First realease


function printit(){
	echo "You input" $1 
}

case $1 in
	"choice")
		printit $1
		;;
	"detect")
		printit $1
		;;
	"date")
		printit $1
		;;
	"")
		echo "Please input 'choice' or 'detect' or 'date' ex> {$0 choice}"
		;;
esac	

if [ "$1" == "choice" ];then
	read -p "Please input your choice (y / n): " yn

	if [ "$yn" == "Y" ] || [ "$yn" == "y" ];then
		echo "You input Y"
	elif [ "$yn" == "N" -o "$yn" == "n" ];then
		echo "You input N"
	else
		echo "Please input y or n"
	fi

fi

if [ "$1" == "detect" ];then

	echo "Now I will detect your Linux server's service"
	echo -e "The www,ftp,ssh,adn mail will be detect"

	testing=$( netstat -tuln | grep ":80")
	if [  "$testing" != "" ];then
		echo "WWW is running in your system"
	fi

	testing=$( netstat -tuln | grep ":22")
	if [  "$testing" != "" ];then
		echo "SSH is running in your system"
	fi

	testing=$( netstat -tuln | grep ":21")
	if [  "$testing" != "" ];then
		echo "FTP is running in your system"
	fi

	testing=$( netstat -tuln | grep ":25")
	if [  "$testing" != "" ];then
		echo "Mail is running in your system"
	fi
fi


if [ "$1" == "date" ];then
	read -p "Please input date(YYYYMMDD ex>20180410):" date2 
	date_check=$(echo $date2 | grep '[0-9]\{8\}')
	if [ "$date_check" == "" ];then
		echo "You input wrong date format"
		exit 1
	fi

	declare -i date_dem=`date --date="$date2" +%s`
	declare -i date_now=`date +%s`
	declare -i date_total=$(($date_dem -$date_now ))
	declare -i date_d=$(($date_total/60/60/24))
	if [ "$date_total" -lt "0" ];then
		echo "The day had passed before: " $((-1 * $date_d)) "days ago"
	else
		echo "another" $date_d "days left"
	fi




fi

