package "postgresql-9.1-postgis" do
  action :install
  options "--force-yes" # due the workaround to add new repositories, this option is needed to installed the new packages
end