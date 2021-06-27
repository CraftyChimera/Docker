#!/bin/bash
if [ $(grep "@reboot $(readlink -f $0) &" /var/spool/cron/crontabs/root|wc -l) -lt 1 ] #check if there is already an entry in crontab
then                                                                                   #Saving it to root crontab because root can access it's own crontab and grep doesn't fail and make if statement vacuously true because of lack of permissions
crontab -u root -l > cron_new #$readlink -f $0 outputs the location of this script
echo "@reboot $(readlink -f $0) &" >> cron_new
crontab -u root cron_new
rm cron_new       #add startup at boot condition
echo " " > /home/Jay_Jay/schedule.txt

for i in {1..30}
do
if [ $i -lt 10 ]
then
ln /home/Jay_Jay/schedule.txt /home/sysAd_0$i/
ln /home/Jay_Jay/schedule.txt /home/webDev_0$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_0$i/
else
ln /home/Jay_Jay/schedule.txt /home/sysAd_$i/
ln /home/Jay_Jay/schedule.txt /home/webDev_$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_$i/
fi
done

fi


if [ $(grep $(date +%F) /scripts/future.txt | wc -l) -gt 0 ]
then
grep $(date +%F) /scripts/future.txt > /home/Jay_Jay/schedule.txt
fi
