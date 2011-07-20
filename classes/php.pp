#
class php {
	package { [ "php5","libapache2-mod-php5","php5-cli","php5-mysql" ]:
        ensure => installed,
}
}


