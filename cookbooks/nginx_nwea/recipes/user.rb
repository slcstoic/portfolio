#
# Cookbook Name:: nginx_nwea
# Recipe:: user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['nginx_nwea']['group']

user node['nginx_nwea']['user'] do
	group node['nginx_nwea']['group']
	system true
	shell '/bin/bash'
end
