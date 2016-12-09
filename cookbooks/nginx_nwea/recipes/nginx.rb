#
# Cookbook Name:: nginx_nwea
# Recipe:: nginx
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'epel-release' do
	action :install
end

package 'nginx' do
   action :install
end


nginx_service 'nginx'

document_root = '/var/www/customers/public_html'
sites_enabled_dir = '/etc/nginx/sites-enabled'
nginx_root = '/etc/nginx'
nginx_log = '/var/log/nginx'


# Create the document root directory
directory document_root do
  owner "nginx"
  group "web_admin"
  recursive true
end

directory nginx_log do
  owner "nginx"
  group "web_admin"
  recursive true
end

directory sites_enabled_dir do
  owner "nginx"
  group "web_admin"
	recursive true
end



# Create the default home page
file File.join(document_root, 'index.html') do
	content '  <head>
    	<title>NWEA tech_quiz sample index.html</title>
  		</head>
  		<body bgcolor=white>

    		<table border="0" cellpadding="10">
     		 <tr>
        		<td>
          		<h1>Hello, this is the sample page</h1>
        	</td>
      		</tr>
   		 </table>

  		</body>
		</html>'
	owner	'nginx'
	group	'web_admin'
	mode	'0774'
	action :create
end


execute "fixup /var/www owner" do
  command "chown -fhR nginx:web_admin '/var/www/customers'"
	command "chmod 2773 -R '/var/www/customers'"
end

execute "fixup /var/log/nginx owner" do
  command "chown -fhR nginx:web_admin '/var/log/nginx'"
	command "chmod 0664 -R '/var/log/nginx'"
end


execute "fixup /var/lock owner" do
  command "chown -fhR root:web_admin '/var/lock/subsys'"
	command "chmod 2773 -R '/var/lock/subsys'"
end



# Open TCP port 8888 for web traffic
firewall_rule 'http' do
  port 8888
  protocol :tcp
  action :create
end

nginx_service 'nginx' do
	action [:create, :start]
end

