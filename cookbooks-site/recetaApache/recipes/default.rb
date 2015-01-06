#
# Cookbook Name:: recetaApache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
action :install
end

template node['nodo1']['path'] + '/index.html' do
source 'index.html.erb'
mode 0755
owner 'root'
group 'root'
end

service "apache2" do
action :restart
end
