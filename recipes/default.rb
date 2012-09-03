# postgresql client and server
include_recipe "postgresql::server"
include_recipe "postgresql::server_debian"

# install support packages
include_recipe "postgis2::install-support-packages"

# add apt repositories
include_recipe "postgis2::add-apt-repositories"

# install support packages
include_recipe "postgis2::install-postgis2"

# create db template
include_recipe "postgis2::create-db-template"

# initialise db template
include_recipe "postgis2::initialise-db-template"
