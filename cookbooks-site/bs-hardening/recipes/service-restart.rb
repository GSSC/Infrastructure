#
# Cookbook Name:: bs-hardening::create_user
# Recipe:: default
#
# Copyright 2015, GSSC C.A
#
# All rights reserved - Do Not Redistribute
#

node['service_restart'].each do |i|
	service i do
	action :restart
	end
end 

