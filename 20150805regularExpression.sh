#!/bin/bash

if [ $# == 0 ];then
	echo "Please input parameters:"
	echo "dmesg OR txt"
fi

if [ "$1" == "dmesg" ];then
	dmesg | grep 'eth'
	echo "******************"
	dmesg | grep -A1 -B2 'eth'
	echo "******************"
	dmesg | grep -A1 -B2  -n --color=auto 'eth'
fi

if [ "$1" == "txt" ];then
	echo "**********************lines with 'the'***********************"
	grep -n --color=auto 'the' ./material/regular_express.txt
	echo "**********************lines without 'the'********************"
	grep -v -n --color=auto 'the' ./material/regular_express.txt
	echo "**********************lines with 'the'(no matter lower or bigger)********************"
	grep -i -n --color=auto 'the' ./material/regular_express.txt
	echo "**********************lines with 't[ae]st'********************"
	grep -n --color=auto 't[ae]st' ./material/regular_express.txt
	echo "**********************lines with 'oo'********************"
	grep -n --color=auto 'oo' ./material/regular_express.txt
	echo "**********************lines without 'oo'starting with g ********************"
	grep -n --color=auto '[^g]oo' ./material/regular_express.txt
	echo "**********************lines without 'oo'starting with a-z ********************"
	grep -n --color=auto '[^a-z]oo' ./material/regular_express.txt
	echo "**********************lines without 'oo'starting with lower ********************"
	grep -n --color=auto '[^[:lower:]]oo' ./material/regular_express.txt
	echo "**********************lines without digit ********************"
	grep -n --color=auto '[^[:digit:]]' ./material/regular_express.txt
	echo "**********************lines starting with 'the' ********************"
	grep -n --color=auto '^the' ./material/regular_express.txt
	echo "**********************lines starting with lower ********************"
	grep -n --color=auto '^[a-z]' ./material/regular_express.txt
	echo "**********************lines not starting with character ********************"
	grep -n --color=auto '^[^a-zA-Z]' ./material/regular_express.txt
	echo "**********************lines ending with '.' ********************"
	grep -n --color=auto '\.$' ./material/regular_express.txt
	echo "**********************display lines which are not empty and not begining with #  ********************"
	grep -v -n --color=auto '^$' ./material/regular_express.txt | grep -v -n '^#'
	echo "**********************lines with g..d  ********************"
	grep -n --color=auto 'g..d' ./material/regular_express.txt
	echo "**********************lines with no less than 2 oo (* means 0 or more) ********************"
	grep -n --color=auto 'ooo*' ./material/regular_express.txt 
	echo "**********************lines with string which begins with g and ends with g********************"
	grep -n --color=auto 'g.*g' ./material/regular_express.txt 
	echo "**********************lines with 2-5 o in go..g ********************"
	grep -n --color=auto 'go\{2,5\}g' ./material/regular_express.txt 
	echo "**********************lines with 2 o in go..g ********************"
	grep -n --color=auto 'go\{2\}g' ./material/regular_express.txt 
	echo "**********************lines with 2 or more o in go..g ********************"
	grep -n --color=auto 'go\{2,\}g' ./material/regular_express.txt 
fi

