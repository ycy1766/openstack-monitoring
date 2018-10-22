#!/bin/bash

ansible-playbook -v  playbooks/03_zabbix_install.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"

