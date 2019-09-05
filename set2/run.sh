#!/usr/bin/env bash

set -exuo pipefail
IFS=$'\n\t'

docker-compose up -d

echo "Will now ask for root access to add app3.test and app4.test to /etc/hosts\n"

sudo bash -c 'echo "127.0.0.1 app3.test" >> /etc/hosts'
sudo bash -c 'echo "127.0.0.1 app4.test" >> /etc/hosts'

curl http://app3.test/
curl http://app4.test/
