#!/bin/sh 
mysql_password=
mysql_dbname=$1
db_destination_for_restore=$2
mysql --user=root --password=$mysql_password  $mysql_dbname < $db_destination_for_restore
echo "Database restored"

