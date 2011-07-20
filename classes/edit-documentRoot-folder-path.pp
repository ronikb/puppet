class  edit-documentRoot-folder-path {
	exec { "edit-documentRoot-folder-path":
	command => "/etc/puppet/manifests/scripts/edit-documentRoot-folder-path.sh $var1 $var2",
        require => Package["apache2"]
}
}
