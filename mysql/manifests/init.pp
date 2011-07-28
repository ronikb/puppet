
class mysql {
include mysql::install, mysql::gitclone, mysql::config, mysql::service, mysql::dbcreate, mysql::dbrestore
}
