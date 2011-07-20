#!/bin/sh
dbuser=root
dbpass=
newdb=medigy
#STEP 1 - CREATE DB
#check if db exists first
echo "Creating a database for $newdb"
mysqladmin -u$dbuser -p$dbpass create $newdb;
echo "Database $newdb created"
