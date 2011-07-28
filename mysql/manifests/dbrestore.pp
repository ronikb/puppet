# This will create MySql database 
	class mysql::dbrestore {
        exec { "db-restore":
                command =>"/etc/puppet/modules/mysql/scripts/mysql-db-restore.sh $mysql_dbname $mysql_dump_location_for_dbrestore",
                require => Class["mysql::dbcreate"],
}
}

