#!/bin/bash
d=${1:-2019-09-27}
a=${2:-2020-12-31}
d=$(date --date "$d" +%Y-%m-%d);
a=$(date --date "$a" +%Y-%m-%d); #mysql is super convenient for this particular task.
mysql -uroot -hdata -P 3306 -N -phi<<END
use store;
SELECT * from genmom where datemom between '$d' and '$a';
END
