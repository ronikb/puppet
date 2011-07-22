class common {
# This will edit default apache2 conf file
        exec { "edit-apache2-conf-file":
	command => "sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/sites-available/default",
        require => Package["apache2"]
}
# This will increase php memory limit
        exec { "increase-php-memory-limit":
	command => "sed -i 's/memory_limit = .*/memory_limit = $php_memory_limit/' /etc/php5/apache2/php.ini",
        require => Package["php5"]
}
        exec { "edit-documentRoot-folder-path":
        command => "/etc/puppet/manifests/scripts/edit-documentRoot-folder-path.sh $apache_default_documentroot $apache_current_documentroot",
         require => Package["apache2"]
}
}


