
class apache {
include apache::gitclone, apache::install, apache::service, apache::config, class apache::symlink 
}

