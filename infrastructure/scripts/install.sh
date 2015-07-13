#!/bin/sh

echo "=====> Stopping helloworld service"
ssh -i ~/.vagrant.d/insecure_private_key vagrant@192.168.33.10 "service helloworld stop"

echo "=====> Removing helloworld jar"
ssh -i ~/.vagrant.d/insecure_private_key vagrant@192.168.33.10 "rm -rf app/helloworld.jar"

echo "=====> Generate jar"
./gradlew stage

echo "=====> Copy jar to app folder"
scp -i ~/.vagrant.d/insecure_private_key helloworld.jar vagrant@192.168.33.10:app/

echo "=====> Starting helloworld service"
ssh -i ~/.vagrant.d/insecure_private_key vagrant@192.168.33.10 "service helloworld start"
