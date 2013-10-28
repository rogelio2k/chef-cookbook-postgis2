apt_repository "apt.postgresql.org" do
  uri "http://apt.postgresql.org/pub/repos/apt"
  distribution node['lsb']['codename']
  distribution "precise"
  components ["main"]
  keyserver "www.postgresql.org/media/keys"
  key "ACCC4CF8"
  deb_src false
  action :add
end
