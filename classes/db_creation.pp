# This will create MySql database 
	class db-create {
        exec { "db-create":
                command =>"/etc/puppet/manifests/scripts/db-create.sh $dbname",
                require => Package ["mysql-server"],
}
}
