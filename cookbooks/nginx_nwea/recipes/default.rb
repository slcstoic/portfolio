#
# Cookbook Name:: nginx_nwea
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "yum::default"
include_recipe "chef-sugar::default"
include_recipe 'firewall::default'
include_recipe 'nginx_nwea::user'
include_recipe 'nginx_nwea::nginx'
