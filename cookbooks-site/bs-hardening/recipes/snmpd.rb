#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template node['path-config'] + '/snmp/snmpd.conf' do
source 'snmpd.conf.erb'
mode 0600
owner 'root'
group 'root'
end
