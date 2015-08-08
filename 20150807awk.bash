#!/bin/bash


echo "basis exmaple pf awk"
echo "**************************"
echo "before awk###############"
last -n 5
echo "after awk################"
last -n 5 | awk '{print $1 "\t" $3}'

echo " "
echo " "
echo "change FS"
echo "**************************"
cat /etc/passwd | awk '{FS=":"}  $3< 10 {print $1 "\t" $2 "\t" $3}'
echo " "
echo "add BEGIN"
cat /etc/passwd | awk ' BEGIN {FS=":"}  $3< 10 {print $1 "\t" $2 "\t" $3}'
echo "add BEGIN"
cat /etc/passwd | awk ' BEGIN {FS=":"}  $3< 10 {print $1 "\t" $2 "\t" $3 "\tlines:" NR "\t columes" NF}'

echo " "
echo " "
echo "calculate"
echo "**************************"
echo -e "Name \t 1st \t 2nd \t 3th" > ./material/20150807awk_pay.txt
echo -e "Liu \t 26 \t 200 \t 300" >> ./material/20150807awk_pay.txt
echo -e "Wu \t\t 24 \t 210 \t 310" >> ./material/20150807awk_pay.txt
echo -e "Chen \t 24 \t 220 \t 320" >> ./material/20150807awk_pay.txt
echo -e "Zhong \t 25 \t 230 \t 330" >> ./material/20150807awk_pay.txt

cat ./material/20150807awk_pay.txt | \
awk 'NR==1 {printf "%10s %10s %10s %10s %10s\n",$1,$2,$3,$4,"Total"}
NR>=2 {total= $2 + $3 + $4;
printf "%10s %10d %10d %10d %10.2f\n",$1,$2,$3,$4,total}'

cat ./material/20150807awk_pay.txt | \
awk '{ if(NR== 1) printf "%10s %10s %10s %10s %10s\n",$1,$2,$3,$4,"Total"}
NR>=2 {total= $2 + $3 + $4;
printf "%10s %10d %10d %10d %10.2f\n",$1,$2,$3,$4,total}'
