#!/bin/bash

mysql_ready(){ #logic for waiting for mysql to finish setup
mysqladmin ping -hdata -uroot -phi -P 3306 > /dev/null 2>&1
}
while !(mysql_ready)
do
 sleep 3
done

if [ $(/scripts/getmom.sh|wc -l) -eq 0 ] #check if this is the first time the containers are started
then
/scripts/genmom.sh
fi

cat #we don't want the server container to just quit. This is to ensure the server stays up in detached mode
