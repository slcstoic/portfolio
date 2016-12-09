# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "msorensen48"
client_key               "C:/Users/admin/code/kitchen/keys/msorensen48.pem"
chef_server_url          "https://api.chef.io/organizations/pinn_systems"
cookbook_path            ["C:/Users/admin/code/kitchen/cookbooks"]
