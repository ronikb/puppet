# This will create MySql database 
	class db-create {
        exec { "db-create":
                command =>"/etc/puppet/manifests/scripts/db.sh $mysql_password $newdb",
                require => Exec ["set-mysql-password"],
}
}
