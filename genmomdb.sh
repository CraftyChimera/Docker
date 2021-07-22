#!/bin/bash
d=2019-09-27
a=$(date +%F)
y=$(date --date="$a+1 day" +%Y-%m-%d)
while [ "$d" != "$y" ]; do 
 if [ $(grep $d ./attendance.txt | wc -l) -gt 0 ] && [ $(grep $d ./attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|wc -l) -gt 0 ]
 then
  b=$(grep $d ./attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+')
  mysql<<AGE
  CREATE DATABASE IF NOT EXISTS store;
  use store;
  CREATE TABLE IF NOT EXISTS genmom(name varchar(50),datemom date,mom varchar(200));
  INSERT INTO genmom values("$b","$d","happy new year");
AGE
  fi 
  d=$(date --date "$d + 1 day" +%Y-%m-%d)
  done
