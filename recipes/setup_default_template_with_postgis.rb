execute :setup_postgis_on_template1 do
  user "postgres"
  command "psql -c 'create extension postgis;' -d template1"
  not_if do "psql -c '\dx' -d template1 | grep postgis" end
  action :run
end
