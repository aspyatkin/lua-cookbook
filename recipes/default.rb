include_recipe node['lua']['package_manager']


node['lua']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

if node['lua']['install_devel'] == true
  node['lua']['devel_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
