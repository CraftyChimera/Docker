#!/bin/bash
chmod go-rwx /home/Jay_Jay
chgrp 3sys /home/sysAd_10
chmod go-rwx /home/sysAd_10
chmod g+r /home/sysAd_10
chgrp 3web /home/webDev_10
chmod go-rwx /home/webDev_10
chmod g+r /home/webDev_10
chgrp 3app /home/appDev_10
chmod go-rwx /home/appDev_10
chmod g+r /home/appDev_10
for i in {1..30}
do
if [ $i -lt 10 ]
then
chgrp 3sys /home/sysAd_0$i #add to group,if 3year owns 2nd year home directories,that makes it simple to give all of 3year,4year students and Jay_Jay read permissions
chmod go-rwx /home/sysAd_0$i
chmod g+r /home/sysAd_0$i
chgrp 3app /home/appDev_0$i
chmod go-rwx /home/appDev_0$i 
chmod g+r /home/appDev_0$i 
chgrp 3web /home/webDev_0$i
chmod go-rwx /home/webDev_0$i
chmod g+r /home/webDev_0$i   
elif [ $i -eq 10 ]
then
continue
elif [ $i -lt 21 ]
then
chgrp 4sys /home/sysAd_$i 
chmod go-rwx /home/sysAd_$i
chmod g+r /home/sysAd_$i
chgrp 4app /home/appDev_$i 
chmod go-rwx /home/appDev_$i
chmod g+r /home/appDev_$i 
chgrp 4web /home/webDev_$i 
chmod go-rwx /home/webDev_$i
chmod g+r /home/webDev_$i  
elif [ $i -lt 31 ]
then
chgrp qhead /home/sysAd_$i 
chmod go-rwx /home/sysAd_$i
chmod g+r /home/sysAd_$i
chgrp qhead /home/appDev_$i 
chmod go-rwx /home/appDev_$i
chmod g+r /home/appDev_$i 
chgrp qhead /home/webDev_$i 
chmod go-rwx /home/webDev_$i
chmod g+r /home/webDev_$i 
fi
done
