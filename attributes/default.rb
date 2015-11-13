case node['platform_family']
when 'debian'
  default['lua']['packages'] = %w{ lua5.1 }
  default['lua']['devel_packages'] = %w{ liblua5.1-dev }
  default['lua']['package_manager'] = 'apt'
else
  default['lua']['packages'] = %w{ lua }
  default['lua']['devel_packages'] = %w{ lua-devel }
  default['lua']['package_manager'] = 'yum'
end

default['lua']['install_devel'] = true
