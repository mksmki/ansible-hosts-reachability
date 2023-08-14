#!/bin/bash

set +x

python3 -m venv .ansible
source ./.ansible/bin/activate

pip install ansible

time ansible-playbook -i localhost, main.yaml
time ansible-playbook -i localhost, parallel_ping.yaml
