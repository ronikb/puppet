# This will execute git clone for medigy-drupal-db repository

class gitclone_application {        
	exec { "gitclone-application":
        command => "git clone $gitclone_application $gitclone_application_destination",
		require => Exec['gitclone-db']
}
}


