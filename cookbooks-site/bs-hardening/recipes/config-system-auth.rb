#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 	"set-system-auth" do
command 	"sed -i 's/password    requisite     pam_cracklib.so try_first_pass retry=3 type=/password    requisite     pam_cracklib.so retry=3 minlen=8 difok=5/' /etc/pam.d/system-auth"
user 		"root"
action 		:run
end

execute 	"disabled-selinux" do
command 	"sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config"
user 		"root"
action 		:run
end

