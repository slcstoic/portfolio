#!/bin/bash




groupadd chef
usermod -aG chef vagrant
usermod -aG web_admin nginx
usermod -aG wheel Mike
usermod -aG web_admin root


mkdir /tmp/packer-chef-client
chmod 0750 /tmp/packer-chef-client

sudo -u chef mkdir -p /etc/chef/ohai/hints
sudo -u chef touch /etc/chef/ohai/hints/ec2.json
chown -fhR chef:root /etc/chef/
chmod 0770 -R /etc/chef

sudo -u nginx mkdir -p /etc/nginx/sites-enabled
chown -R nginx:web_admin /var/www/customers
chmod 0770 -R /etc/nginx

sudo -u chef mkdir -p /var/log/chef


exit 0
