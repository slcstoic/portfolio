name 'nginx_nwea'
maintainer 'The Authors'
maintainer_email 'mikes@pinn.us'
license 'all_rights'
description 'Installs/Configures nginx_nwea'
long_description 'Installs/Configures nginx_nwea'
version '0.2.4'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/nginx_nwea/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://api.opscode.com/organizations/pinn_systems/nginx_nwea' if respond_to?(:source_url)


depends 'sudo', '~> 2.6.1'
depends 'yum', '~> 4.1.0'
depends 'chef-sugar', '~> 3.4.0'
depends 'firewall', '~> 2.5.3'


