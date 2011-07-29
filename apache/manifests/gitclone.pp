# This will execute git clone for medigy-drupal-db repository

class apache::gitclone {        
	exec { "gitclone-application":
        command => "git clone $gitclone_application $gitclone_application_destination",
}
}



