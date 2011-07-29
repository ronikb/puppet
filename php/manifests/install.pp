#This will install php5 in ubuntu systems
class php::install {
	package { [ "php5","libapache2-mod-php5","php5-cli","php5-mysql","php5-gd" ]:
        ensure => installed,
}
}



