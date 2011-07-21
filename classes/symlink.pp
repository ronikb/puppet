# This will create sym link for files folder
class symlink {
        exec { "symlink-for-files-folder":
        command => "ln -s $source $destination",
		require => Exec['gitclone-medigy-drupal']
}
}

