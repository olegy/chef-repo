#
# Cookbook Name:: erun
# Recipe:: default
#
# Copyright (C) 2013 OLY2K
#
# All rights reserved - Do Not Redistribute
#
user(node['erun']['web_user']) do
  home      "/home/#{node['erun']['web_user']}"
  shell     "/bin/bash"
  supports  :manage_home => true
end

directory "/home/#{node['erun']['web_user']}/.ssh" do
  action :create
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode   '0700'
end

template "/home/#{node['erun']['web_user']}/.ssh/authorized_keys" do
  source 'authorized_keys.erb'
  owner  node['erun']['web_user']
  group  node['erun']['web_user']
  mode  '0600'
  variables :keys => data_bag_item('users', 'deploy')["ssh_keys"]
end

include_recipe "erun::ruby"

include_recipe "erun::database"
