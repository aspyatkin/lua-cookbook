id = :lua

case node['platform_family']
when 'debian'
  default[id][:packages] = %w{ lua5.1 }
  default[id][:devel_packages] = %w{ liblua5.1-dev }
  default[id][:package_manager] = 'apt'
else
  default[id][:packages] = %w{ lua }
  default[id][:devel_packages] = %w{ lua-devel }
  default[id][:package_manager] = 'yum'
end

default[id][:install_devel] = true
