#!/bin/bash

DIR=$(pwd)
COOKBOOK_PATH=/tmp/cookbooks
cd /tmp

curl -L https://www.getchef.com/chef/install.sh | sudo bash -s -- -P chefdk

cd $DIR

if [  -d $COOKBOOK_PATH ]; then
   rm -rf $COOKBOOK_PATH
fi

 
/opt/chefdk/embedded/bin/berks vendor $COOKBOOK_PATH
cat > /tmp/solo.rb << EOF
file_cache_path "/tmp"
cookbook_path    ["$COOKBOOK_PATH"]
EOF
sudo chef-solo -c /tmp/solo.rb -j $DIR/node.json
