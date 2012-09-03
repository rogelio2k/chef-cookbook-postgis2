Description
===========

Installs and configures PostGIS 2


Requirements
============

## Platforms

* Debian, Ubuntu

Tested on:

* Ubuntu 12.04

## Cookboooks

Requires Opscode's `openssl`, `postgresql` and `apt` cookbooks.


Attributes
==========

The following attributes are set based on the platform, see the
`attributes/default.rb` file for default values.

* node['postgis']['template_name'] = name of the db template use for postgis


Recipes
=======

default
-------

Include all the recepies on this cookbook to get postgis up and running

add-apt-repositories
------

Add new repositories to get the (unofficial) packages for PostGIS 2

create-db-template
------

Creates a new database template as indicated on PostGIS 2 installation
documentation

fix-locale
------

Sets locale variables

initialise-db-template
------

Initialise the template database as indicated on Postgis 2 installation
documentation

install-postgis2
------

Install PostGIS 2 packages from the (unofficial) repositories added on 
`add-apt-repositories`

install-support-packages
------

Basically installs the `python-software-properties` package to support the
`apt-add-repository` command


Usage
=====

On systems that need to connect to a PostgreSQL database, add to a run
list `recipe[postgis2]`


License and Author
==================

Author:: Rogelio Castillo (<public@rogeliocastillo.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.