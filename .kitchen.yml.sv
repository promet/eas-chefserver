---
driver:
  name: vagrant
  driver_config:
    use_vagrant_cachier: true
  
provisioner:
  name: chef_solo

platforms:
  - name: ubuntu-14.04

suites:
  - name: default
    run_list:
      - recipe[infra-chefserver::default]
    attributes:
