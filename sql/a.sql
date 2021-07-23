CREATE user 'Jay'@'%' IDENTIFIED by 'yo';
GRANT SELECT,SHOW VIEW on store.* to 'Jay'@'%';
CREATE DATABASE IF NOT EXISTS store;
use store;
CREATE TABLE IF NOT EXISTS genmom(name varchar(50),datemom date,mom varchar(200));
