name 'postgis2'
maintainer 'Rogelio Castillo'
maintainer_email 'public@rogeliocastillo.com'
license 'Apache v2.0'
description 'Installs and configures PostGIS 2'
version  '1.0.1'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))

depends 'apt'
depends 'postgresql', '>= 0.99.5'

%w{ ubuntu debian }.each do |os|
  supports os
end
