#!/bin/sh 
mysql_password=
mysql_dbname=$1
mysql_dump_location_for_dbrestore=$2
mysql --user=root --password=$mysql_password  $mysql_dbname < $mysql_dump_location_for_dbrestore
echo "Database restored"

