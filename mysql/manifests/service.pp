class mysql::service {
service { "mysql":
ensure => running,
hasstatus => true,
hasrestart => true,
require => Class["mysql::config"],
}
}
