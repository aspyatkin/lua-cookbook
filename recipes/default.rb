id = 'lua'
include_recipe node[id]['package_manager']

node[id]['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

if node[id]['install_deve']
  node[id]['devel_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
