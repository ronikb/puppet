# This will execute git clone for medigy-drupal-db repository
#$gitclone_db="git@github.com:netspective/medigy-drupal-db.git"
#$git_destination2="/medigy/medigy-drupal-db/"
#Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
class gitclone_medigy-drupal-db {        
	exec { "gitclone-medigy-drupal-db":
        command => "git clone $gitclone_db $git_destination2",
	timeout => 3600, 
        logoutput=> on_failure 
}
}



