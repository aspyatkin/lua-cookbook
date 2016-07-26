name 'lua'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
version '1.0.1'
description 'Installs and configures lua 5.1 along with development packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe 'lua', 'Installs and configures lua 5.1 along with development packages'

source_url 'https://github.com/aspyatkin/lua-cookbook'

depends 'yum'
depends 'apt'

%w(
  ubuntu
  centos
).each do |distro|
  supports distro
end
