# This will change php memory limit
	class php::config  {
        exec { "increase-php-memory-limit":
		command => "sed -i 's/memory_limit = .*/memory_limit = $php_memory_limit/' /etc/php5/apache2/php.ini",
        require => Class["php::install"],
}
}
