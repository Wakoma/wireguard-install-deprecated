#!/usr/bin/env bash

set -euo pipefail

export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_FORCE_COLOR=true
export ANSIBLE_VERBOSITY=0

ansible-galaxy collection install -r requirements.yml

ansible-playbook -i hosts.yml playbook.yml

