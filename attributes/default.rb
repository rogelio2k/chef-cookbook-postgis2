include_attribute "postgresql"

default[:postgis][:template_name] = "template_postgis"

#Set the version number for the current version
#of PostgreSQL
default[:postgis][:postgresversion] = node["postgresql"]["version"]

default[:postgis][:package] = "postgresql-#{node[:postgis][:postgresversion]}-postgis-2.1"
default[:postgis][:packagescripts] = "postgresql-#{node[:postgis][:postgresversion]}-postgis-2.1-scripts"
