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
#        exec { "edit-documentRoot-folder-path":
#        command => "/home/ubuntu/operations/configuration/server/puppet/manifests/common/edit-documentRoot-folder-path.sh",
#         require => Package["apache2"]
#}
}
