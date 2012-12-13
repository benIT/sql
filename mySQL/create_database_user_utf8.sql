#command to create a new database UTF8 encoded nammed 'MY_DATABASE' with user credential ='MY_DATABASE_USER'/'MY_DATABASE_PWD'

#call mysql
mysql

#create a new database UTF8
create database MY_DATABASE default character set utf8 collate utf8_bin;

#create a new user 
CREATE USER 'MY_DATABASE_USER'@'%' IDENTIFIED BY 'MY_DATABASE_PWD';

#grant privileges
GRANT USAGE ON * . * TO 'MY_DATABASE_USER'@'%' IDENTIFIED BY 'MY_DATABASE_PWD' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `MY_DATABASE` . * TO 'MY_DATABASE_USER'@'%' WITH GRANT OPTION;