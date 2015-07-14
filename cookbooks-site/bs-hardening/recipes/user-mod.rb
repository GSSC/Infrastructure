#
# Cookbook Name:: bs-hardening::create_user
# Recipe:: default
#
# Copyright 2015, GSSC C.A
#
# All rights reserved - Do Not Redistribute
#
node['users_admin'].each do|d|
	group "administrador"  do
          action  :modify
	  members  d
	  append true   
	end	
end
node['users_admin'].each do|d|
	group "wheel"  do
          action  :modify
	  members  d
	  append true   
	end	
end

group "administrador"  do
          action  :modify
	  gid  2000
	  append true   
end	
group "wheel"  do
          action  :modify
	  gid  2001
	  append true   
end	

