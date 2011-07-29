class apache::config {
# This will edit default apache2 conf file
        exec { "edit-apache2-conf-file":
		command => "sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/sites-available/default",
        require => Package["apache2"]
}
        exec { "edit-documentRoot-folder-path":
        command => "/etc/puppet/modules/apache/scripts/edit-documentRoot-folder-path.sh $apache_default_documentroot $apache_current_documentroot",
        require => Package["apache2"]
}
}

