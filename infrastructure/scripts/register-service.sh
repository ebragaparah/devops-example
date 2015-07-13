#!/bin/sh

echo "----> Removing service"
sudo update-rc.d -f helloworld remove

echo "----> Creating service"
sudo mv service/service.sh /etc/init.d/helloworld
sudo chmod +x /etc/init.d/helloworld
sudo update-rc.d helloworld defaults
