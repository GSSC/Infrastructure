#
# Cookbook Name:: bs-hardening::create_user
# Recipe:: default
#
# Copyright 2015, GSSC C.A
#
# All rights reserved - Do Not Redistribute
#



node['groups'].each do|d|
	group d do
          action  :create
	  #gid     group_id   
	end
end


node['users_admin'].each do|d|
	group d do
          action  :create
	  #gid     group_id   
	end	
	user d do
	  action :create
	  shell		"/bin/bash"
	  supports 	:manage_home => true
	  #uid 1000+1
  	  gid d
	end
end

# Create directory
#directory node['directory'] do
#  owner "jbravov"
#  group "jbravov"
#  mode "0755"
#  action :create
#end

