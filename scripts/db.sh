#!/bin/sh
dbuser=root
mysql_password=$1
newdb=$2
#STEP 1 - CREATE DB
#check if db exists first
echo "Creating a database for $newdb"
DBS=`mysql -u$dbuser -p$mysql_password -Bse 'show databases'| egrep -v 'information_schema|mysql'`
for db in $DBS; do
if [ "$db" = "$newdb" ]
then
echo "This database already exists : exiting now"
    exit
  fi
done
mysqladmin -u$dbuser -p$mysql_password create $newdb;
echo "Database $newdb created"
