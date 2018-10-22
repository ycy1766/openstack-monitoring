#!/bin/bash

ansible-playbook -vvv playbooks/31_dump_zabbix_template.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"

