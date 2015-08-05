#!/bin/bash
echo "this is test for command 'tr'"


########################################
folder="./material"
if [ ! -d "$folder" ];then
	mkdir "$folder"
fi
 


echo "1.79 1.83" > ./material/20150804tr_height.txt
echo "1.65 1.59" >> ./material/20150804tr_height.txt

echo "AbcDe" > ./material/20150804tr_word.txt

echo "1234567890" > ./material/20150804tr_number.txt

echo "file writing finished"
########################################
tr 1 2 < ./material/20150804tr_height.txt
tr ' ' '\11' < ./material/20150804tr_height.txt
tr 'a-z' 'A-Z' < ./material/20150804tr_word.txt
tr '1-8' '[**]'  < ./material/20150804tr_number.txt
tr '1-8' '[A*5]B'  < ./material/20150804tr_number.txt



