#!/bin/sh
#var1=/var/www
apache_default_documentroot=$1
apache_current_documentroot=$2
#var2=/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/
sed -i "s%${apache_default_documentroot}%${apache_current_documentroot}%" /etc/apache2/sites-available/default
echo "edit successfull"

