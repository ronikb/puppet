# This will change php memory limit
	class change_php_memory_limit {
        exec { "increase-php-memory-limit":
		command => "sed -i 's/memory_limit = .*/memory_limit = $php_memory_limit/' /etc/php5/apache2/php.ini",
        require => Package["php5"]
}