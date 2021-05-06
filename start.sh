#!/bin/bash 

set -e 

echo "starting vault..."
bin/start-nginx-debug bundle exec unicorn -c config/unicorn.rb
./dev-config.sh > /tmp/dev.json
# ./unsealer.sh &

vault server -config=/tmp/dev.json

