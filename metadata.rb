name 'lua'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
version '1.0.0'
description 'Installs and configures lua 5.1 along with development packages'
# long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe 'lua', 'Installs and configures lua 5.1 along with development packages'

# source_url 'https://github.com/aspyatkin/libxslt-cookbook' if respond_to?(:source_url)

# depends 'yum'
depends 'apt'

%w{ ubuntu}.each do |distro|
  supports distro
end
