# This will create MySql database 
	class mysql::dbcreate {
        exec { "db-create":
                command =>"/etc/puppet/modules/mysql/scripts/mysql-db-create.sh $mysql_dbname",
		require => Class["mysql::service"],
}
}
