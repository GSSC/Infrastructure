#
# Cookbook Name:: bs-hardening::create_user
# Recipe:: default
#
# Copyright 2015, GSSC C.A
#
# All rights reserved - Do Not Redistribute
#

node['package_deinstall'].each do |i|
	package i do
	#puts i
	action :remove
	end
end 

node['package_install'].each do |d|
	package d do	
	action :install
	end
end
