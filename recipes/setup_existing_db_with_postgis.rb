execute :setup_postgis_on_db do
  user "postgres"
  command "psql -c 'create extension postgis;' -d #{node[:postgis][:db_name]}"
  only_if "psql -l | grep #{node[:postgis][:db_name]}"
  not_if "psql -c '\dx' -d #{node[:postgis][:db_name]} | grep postgis"
  action :run
end
