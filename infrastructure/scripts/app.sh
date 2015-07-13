#!/bin/sh

echo "----> Creating app folder"
rm -rf app/
mkdir app

echo "----> Creating service folder"
rm -rf service/
mkdir service

echo "----> Permissions to vagrant user"
sudo chown vagrant service
sudo chown vagrant app
