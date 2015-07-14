#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template node['path'] + '/banner' do
source 'banner_bs.erb'
mode 0644
owner 'root'
group 'root'
end
