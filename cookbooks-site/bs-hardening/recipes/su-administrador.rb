#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 	"chown-su" do
command 	"chown root:administrador /bin/su"
user 		"root"
action 		:run
end

execute 	"chmod-su" do
command 	"chmod 5750 /bin/su"
user 		"root"
action 		:run
end

