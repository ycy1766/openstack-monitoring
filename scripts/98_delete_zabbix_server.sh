#!/bin/bash

ansible-playbook playbooks/98_zabbix_delete.yml\
 -e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"

