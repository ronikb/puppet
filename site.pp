$gitclone_medigy_drupal="git@github.com:netspective/medigy-drupal.git"
$git_destination1="/var/www/html/edge.devl.medigy.com/medigy-drupal/"
$gitclone_db="git@github.com:netspective/medigy-drupal-db.git"
$git_destination2="/medigy/medigy-drupal-db/"
$db_destination_for_restore="/medigy/medigy-drupal-db/db/medigy.sql"
$php_memory_limit="384M"
$var1="/var/www"
$var2="/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/"
$mysql_password="medigy01"
$newdb="medigy"
#for symlink
$source="/medigy/medigy-drupal-db/files"
$destination="/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/sites/default/files"

import "classes/*"
Exec { 
    path => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"], 
}
node default {
	include apache
	include php
	include mysql
	include gitclone_medigy-drupal-db
	include gitclone_medigy-drupal
	include common
	include set-mysql-password
	include db-create
	include symlink
	include db-restore
}
