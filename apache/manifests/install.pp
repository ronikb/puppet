class apache::install {
	package { [ "apache2" ]:
	ensure => present,
	require => Class["apache::gitclone"],
}
}
