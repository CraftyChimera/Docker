#!/bin/bash
#Users should create a password as soon as they log in
groupadd 3sys
groupadd 3web
groupadd 3app
groupadd 4sys
groupadd 4web
groupadd 4app
groupadd qhead
useradd -m Jay_Jay
usermod -aG 3sys,4sys,3app,4app,3web,4web,qhead Jay_Jay
passwd -d Jay_Jay
for i in {1..30}
do
if [ $i -lt 10 ]
then
   useradd -m sysAd_0$i
   passwd -d sysAd_0$i
   useradd -m appDev_0$i
   passwd -d appDev_0$i
   useradd -m webDev_0$i
   passwd -d webDev_0$i
else
   useradd -m sysAd_$i
   passwd -d sysAd_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3sys sysAd_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4sys sysAd_$i 
   fi
   useradd -m appDev_$i
   passwd -d appDev_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3app appDev_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4app appDev_$i 
   fi
   useradd -m webDev_$i
   passwd -d webDev_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3web webDev_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4web webDev_$i 
   fi
fi  
done
