# These all are variables. We can edit this (Double coated value)for customisation
$gitclone_application="git@github.com:netspective/medigy-drupal.git"
$gitclone_application_destination="/var/www/html/edge.devl.medigy.com/medigy-drupal/"
$gitclone_db="git@github.com:netspective/medigy-drupal-db.git"
$gitclone_db_destination="/medigy/medigy-drupal-db/"
$mysql_dump_location_for_dbrestore="/medigy/medigy-drupal-db/db/medigy.sql"
$php_memory_limit="384M"
$apache_default_documentroot="/var/www"
$apache_current_documentroot="/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/"
$mysql_dbname="medigy"
$symlink_files_folder_source="/medigy/medigy-drupal-db/files"
$symlink_files_folder_destination="/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/sites/default/files"

Exec { 
    path => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"], 
}
node default {
  include mysql 
}
