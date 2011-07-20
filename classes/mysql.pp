#
class mysql {
	package { [ "mysql-server","mysql-client" ]:
        ensure => installed,
}

                service { "mysql":
                 hasstatus => true,
                 hasrestart => true,
                 ensure => running,
                 require => Package["mysql-server"]
}
}

