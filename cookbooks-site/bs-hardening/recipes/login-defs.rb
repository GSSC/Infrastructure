#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template node['path-config'] + '/login.defs' do
source 'login.defs.erb'
mode 0644
owner 'root'
group 'root'
end
