# This will create sym link for files folder
class apache::symlink {
        exec { "symlink-for-files-folder":
        command => "ln -s $symlink_files_folder_source $symlink_files_folder_destination",
	require => Class["apache::service"],
}
}


