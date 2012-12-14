#snippet to export and import a mySQL DB

#DB_USER : db user who connect to the db
#DB_PWD : db user pwd
#DB_HOST : db host
#BACKUP_DB_NAME : name of the file to export/import


#export
#mysqldump -u DB_USER -h DB_HOST -R DB_NAME -pDB_PWD > BACKUP_DB_NAME$(date +%Y_%m_%d-%H_%M_%S).sql


#import
mysql -u DB_USER  -pDB_PWD -h DB_HOST -D DB_NAME < BACKUP_DB_NAME.sql