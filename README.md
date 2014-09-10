# infra-chefserver/-cookbook

Bootstrapping opensource chef server for EAS infrastructure project.

## Supported Platforms

- Ubuntu 14.04

## Attributes


## Usage

To initially bootstrap a Chef Server for the EAS infrastructure, following steps need to be taken:

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

### infra-chefserver::default

Include `eas-chefserver` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[eas-chefserver::default]"
  ]
}
```

## License and Authors

Author:: opscale (<cookbooks@opscale.com>)
