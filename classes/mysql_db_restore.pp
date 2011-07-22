# This will create MySql database 
	class db-restore {
        exec { "db-restore":
                command =>"/etc/puppet/manifests/scripts/db-restore.sh $mysql_dbname $mysql_dump_location_for_dbrestore",
                require => Exec['db-create'],
}
}
