#!/bin/sh
dbuser=root
mysql_password=
mysql_dbname=$1
#STEP 1 - CREATE DB
#check if db exists first
echo "Creating a database for $newdb"
DBS=`mysql -u$dbuser -p$mysql_password -Bse 'show databases'| egrep -v 'information_schema|mysql'`
for db in $DBS; do
if [ "$db" = "$mysql_dbname" ]
then
echo "This database already exists : exiting now"
    exit
  fi
done
mysqladmin -u$dbuser -p$mysql_password create $mysql_dbname;
echo "Database $mysql_dbname created"

