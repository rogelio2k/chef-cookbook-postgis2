package "postgresql-9.3-postgis-2.1" do
  action :install
  options "--force-yes" # due the workaround to add new repositories, this option is needed to installed the new packages
end

package "postgresql-9.3-postgis-2.1-scripts" do
  action :install
end
