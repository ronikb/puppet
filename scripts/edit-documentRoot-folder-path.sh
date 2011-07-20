#!/bin/sh
#var1=/var/www
var1=$1
var2=$2
#var2=/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/
sed -i "s%${var1}%${var2}%" /etc/apache2/sites-available/default
echo "edit successfull"
