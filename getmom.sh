#!/bin/bash
d=${1:-2019-09-27}
a=${2:-2020-12-31}
y=$(date --date="$a+1 day" +%Y-%m-%d)
while [ "$d" != "$y" ]; do 
 if [ $(grep $d /scripts/attendance.txt | wc -l) -gt 0 ] && [ $(grep $d /scripts/attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+'|wc -l) -gt 0 ]
 then
  b=$(grep $d /scripts/attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+')
  c=$(cat /home/$b/${d}_mom.txt)
  echo -e "$c\t $b \t $d\n" >> /home/Jay_Jay/mom.txt
  fi 
  d=$(date --date "$d + 1 day" +%Y-%m-%d)
  done
