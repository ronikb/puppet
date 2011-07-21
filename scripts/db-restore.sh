#!/bin/sh 
mysql_password=
newdb=$1
db_destination_for_restore=$2
mysql --user=root --password=$mysql_password  $newdb < $db_destination_for_restore
echo "Database restored"

