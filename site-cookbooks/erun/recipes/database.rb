include_recipe "postgresql::ruby"

directory "#{node['erun']['cap_base']}" do
  action :create
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode '0755'
end

directory "#{node['erun']['deploy_to']}" do
  action :create
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode '0755'
end

directory "#{node['erun']['deploy_to']}/shared" do
  action :create
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode '0755'
end

template "#{node['erun']['deploy_to']}/shared/database.yml" do
  source 'database.yml.erb'
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode '0644'
end

postgresql_database node['erun']['database'] do
  connection ({:host => "127.0.0.1", :port => 5432, :username => 'postgres', :password => node['postgresql']['password']['postgres']})
  template 'template0'
  encoding 'utf8'
  collation 'en_US.utf8'
  action :create
end
