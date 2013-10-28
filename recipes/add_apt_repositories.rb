apt_repository "postgis" do
  uri "http://apt.postgresql.org/pub/repos/apt"
  distribution node['lsb']['codename'] + "-pgdg"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "ACCC4CF8"
  deb_src false
  action :add
end
