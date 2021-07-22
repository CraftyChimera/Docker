#!/bin/bash
d=2019-09-27
d=$(date --date "$d + 1 day" +%Y-%m-%d)
  mysql <<AGE
  use store;
  INSERT INTO genmom values("sad","$d","happy new year");
AGE

