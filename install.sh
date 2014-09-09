#!/bin/bash

DIR=$(pwd)
CHEFDK=chefdk_0.2.1-1_amd64.deb
COOKBOOK_PATH=/tmp/cookbooks
cd /tmp
if [ ! -f /tmp/$CHEFDK ]; then
   wget  https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/$CHEFDK
fi

sudo dpkg -i $CHEFDK

cd $DIR

if [  -d $COOKBOOK_PATH ]; then
   rm -rf $COOKBOOK_PATH
fi

 
/opt/chefdk/embedded/bin/berks vendor $COOKBOOK_PATH
cat > /tmp/solo.rb << EOF
file_cache_path "/tmp"
cookbook_path    ["/tmp/cookbooks/"]
log_level        :debug
EOF
sudo chef-solo -c /tmp/solo.rb -j $DIR/node.json
