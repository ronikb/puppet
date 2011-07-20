# This will execute git clone for medigy-drupal-db repository

class gitclone_medigy-drupal {        
	exec { "gitclone-medigy-drupal":
        command => "git clone $gitclone_medigy_drupal $git_destination1",
}
}


