#!/bin/bash
d=2019-09-27
a=$(date +%F)
y=$(date --date="$a+1 day" +%Y-%m-%d)
while [ "$d" != "$y" ]; do 
 if [ $(grep $d /scripts/attendance.txt | wc -l) -gt 0 ] && [ $(grep $d /scripts/attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|wc -l) -gt 0 ]
 then
  b=$(grep $d /scripts/attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+')
  #except for sql part,logic is same
  mysql -uroot -hdata -P 3306 -phi <<AGE
  use store;
  INSERT INTO genmom values("$b","$d","happy new year"); 
AGE
  fi 
  d=$(date --date "$d + 1 day" +%Y-%m-%d)
  done
