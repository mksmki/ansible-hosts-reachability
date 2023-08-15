#!/bin/bash

set +x

python3 -m venv .venv
source ./.venv/bin/activate

pip install \
    ansible \
    ansible-lint

time ansible-playbook -i localhost, main.yaml
time ansible-playbook -i localhost, parallel_ping.yaml
