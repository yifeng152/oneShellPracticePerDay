#!/bin/bash
#Program:
#   [1] Program create threee files, which named by user's input and data command
#	[2] User input 2 integer numbers: program will cross these two number 
#	[3] User input a filename, program will check the following:
#	1) exist? 2) file/directory? 3)file permissions
#Authors:
#    Name:WuQi  Email:wuqijssn@163.com 
#	 Github:www.github.com/yifeng152
#	 Blog:  www.cnblogs/wuqi
#History:
#2015/08/08 WuQi First realease
if [ "$1" == "file" ];then
echo -e "I will use 'touch' command to create 3 files"
read -p "Please input your filename:" fileuser

filename=${fileuser:-"filename"}

date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date  +%Y%m%d)

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"

fi



if [ "$1" == "number" ];then
echo "************************************* "
echo "************************************* "

echo -e  "You should input 2 numbers, I will cross them"
read -p "first number: " firstNumber
read -p "second number: " secondNumber
total=$(($firstNumber*$secondNumber))
echo -e "\n The result of $firstNumber X $secondNumber is ==> $total"
fi


if [ "$1" == "exist" ];then
echo "************************************* "
echo "************************************* "
test -e /dmtsai && echo "exist" || echo "Not exist"
fi


if [ "$1" == "check" ];then
echo "************************************* "
echo "************************************* "
echo -e "Please input a filename, I will check the filename's type and \
permission.\n\n"
read -p "Input a filename : " filename
test -z $filename &&  echo "You must input a filename." && exit 0
test ! -e $filename && echo "The filename '$filename' do not exist" && exit 0
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo "The filename:'$filename'  is a $filetype"
echo "And the permissions are : $perm"
fi

echo "************************************* "
echo "************************************* "
echo "Show the effect of shift function"
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"
shift
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"
shift 4
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"

