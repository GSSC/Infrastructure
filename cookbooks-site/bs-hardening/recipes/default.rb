#
# Cookbook Name:: bs-hardening
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'bs-hardening::banner'
include_recipe 'bs-hardening::create_user'
include_recipe 'bs-hardening::su-administrador'
include_recipe 'bs-hardening::config-system-auth'
include_recipe 'bs-hardening::login-defs'
include_recipe 'bs-hardening::ssh-config'
include_recipe 'bs-hardening::repo-local'
include_recipe 'bs-hardening::passwd-change'
include_recipe 'bs-hardening::user-mod'
include_recipe 'bs-hardening::yum-package'
include_recipe 'bs-hardening::snmpd'
include_recipe 'bs-hardening::service-restart'
