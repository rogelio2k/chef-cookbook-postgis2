# postgresql client and server
include_recipe "postgresql::server"
include_recipe "postgresql::server_debian"

# install support packages
include_recipe "postgis2::install_support_packages"

# add apt repositories
include_recipe "postgis2::add_apt_repositories"

# install support packages
include_recipe "postgis2::install_postgis2"

# create db template
include_recipe "postgis2::create_db_template"

# initialise db template
include_recipe "postgis2::initialise_db_template"
