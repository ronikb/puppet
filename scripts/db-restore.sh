#!/bin/sh 
mysql_password=$1
newdb=$2
db_destination_for_restore=$3
mysql --user=root --password=$mysql_password  $newdb < $db_destination_for_restore
echo "Database restored"

