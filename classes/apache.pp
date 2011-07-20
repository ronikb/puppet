#This will install apache2 in ubuntu systems
class apache {
	package { [ "apache2" ]:
        ensure => installed,
}

                service { "apache2":
                 hasstatus => true,
                 hasrestart => true,
                 ensure => running,
                 require => Package["apache2"]
}
}

