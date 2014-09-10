# infra-chefserver/-cookbook

Bootstrapping opensource chef server for EAS infrastructure project.

## Supported Platforms

- Ubuntu 14.04 (may work on other versions of Ubuntu, but target release is 14.04)

## Attributes

```rb
normal['chef-server']['package_file'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.1.4-1_amd64.deb'
normal['chef-server']['configuration']['chef_server_webui']['enable'] = false
normal['chef-server']['configuration']['erchef']['s3_url_ttl'] = 3600
normal['chef-server']['configuration']['chef_solr']['commit_interval'] = 30000
normal['chef-server']['configuration']['nginx']['enable_non_ssl'] = false
normal['chef-server']['configuration']['nginx']['non_ssl_port'] = false
```
## Usage

To initially bootstrap a Chef Server for the EAS infrastructure, following steps need to be completed:

- provide a system/node with at least 2GB of main memory.
- install git on this system e.g. sudo apt-get install git
- clone this repository in the systems tmp directory
- cd to /tmp/eas-chefserver
- run the `./install.sh` script

This script will perform all the necessary steps install and configure Chef Server version 11:
- download the chef developer kit
- install the chef developer kit
- run `berks vendor` to resolve the dependencies and download cookbooks
- create a config file for the chef-solo run
- run `chef-solo` install and configure the Chef Server

### runlist

Include `recipe[eas-chefserver::default]` in your node's `run_list`:

## License and Authors

Author:: opscale (<cookbooks@opscale.com>)
