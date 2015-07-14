#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Dir['/etc/yum.repos.d/*'].each do |path|
  file path do
    action :delete
    #only_if { ::File.stat(path).ctime < (Time.now - 60*60*24*7) }
  end
end


directory node['directory_yum'] do
  owner "root"
  group "root"
  mode "0755"
  action :create
end


template node['path-config'] + '/yum.repos.d/public-yum-ol6-local.repo' do
source 'public-yum-ol6-local.repo.erb'
mode 0644
owner 'root'
group 'root'
end
