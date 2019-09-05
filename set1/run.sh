#!/usr/bin/env bash

set -exuo pipefail
IFS=$'\n\t'

docker-compose up -d

echo "Will now ask for root access to add app1.test and app2.test to /etc/hosts\n"

sudo bash -c 'echo "127.0.0.1 app1.test" >> /etc/hosts'
sudo bash -c 'echo "127.0.0.1 app2.test" >> /etc/hosts'

curl http://app1.test/
curl http://app2.test/
