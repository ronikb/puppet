# This will create MySql database 
	class db-restore {
        exec { "db-restore":
                command =>"/etc/puppet/manifests/scripts/db-restore.sh $mysql_password $newdb $db_destination_for_restore",
                require => Exec['db-create'],
}
}
