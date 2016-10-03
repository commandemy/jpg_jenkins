name             'jpg_jenkins'
maintainer       'Infralovers'
maintainer_email 'team@infralovers.com'
license          'team@infralovers.com'
description      'Installs/Configures jpg_jenkins'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

depends 'il-base'
depends 'apt'
depends 'git'
depends 'jenkins', '2.6.0'

supports 'ubuntu'
