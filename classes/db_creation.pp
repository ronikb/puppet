# This will create MySql database 
	class db-create {
        exec { "db-create":
                command =>"/etc/puppet/manifests/scripts/db.sh $newdb",
		require => [Exec['gitclone-medigy-drupal-db'],Package ["mysql-server"]],
}
}
