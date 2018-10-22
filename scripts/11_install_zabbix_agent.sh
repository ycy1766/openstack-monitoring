#!/bin/bash


#ansible-playbook -v playbooks/11_zabbix_agent_install.yml 

ansible-playbook -v playbooks/11_zabbix_agent_install.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python2.7"
