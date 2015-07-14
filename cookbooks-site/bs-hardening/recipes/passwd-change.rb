#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file 	"/tmp/change-passwd.sh" do
	source 	"change-passwd.sh"
	mode	0755
end
execute 	"passwd-change" do
command 	"sh /tmp/change-passwd.sh"
user 		"root"
action 		:run
end
