apt_repository "geos" do
  uri "http://ppa.launchpad.net/sharpie/for-science/ubuntu"
  distribution node['lsb']['codename']
  distribution "precise"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "DAF764E2"
  deb_src false
  action :add
  notifies :run, "execute[apt-get update]", :immediately # bug on chef 10.10 does not run the update command
end

apt_repository "postgis-nightly" do
  uri "http://ppa.launchpad.net/sharpie/postgis-nightly/ubuntu"
  distribution node['lsb']['codename']
  distribution "precise"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "DAF764E2"
  deb_src false
  action :add
  notifies :run, "execute[apt-get update]", :immediately # bug on chef 10.10 does not run the update command
end
