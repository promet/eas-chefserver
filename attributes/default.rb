normal['chef-server']['package_file'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.1.4-1_amd64.deb'

# Disable the chef-server webui; changed need to go to git first
normal['chef-server']['configuration']['chef_server_webui']['enable'] = false

# Increate the s3_url_ttl from default 900 to 3600
normal['chef-server']['configuration']['erchef']['s3_url_ttl'] = 3600

# Speed up the solr commit intervals from default 60000 to 30000
normal['chef-server']['configuration']['chef_solr']['commit_interval'] = 30000

# Listen only on https; disable nginx listening on port 80 and redirects from 80 to 443.
normal['chef-server']['configuration']['nginx']['enable_non_ssl'] = false
normal['chef-server']['configuration']['nginx']['non_ssl_port'] = false
