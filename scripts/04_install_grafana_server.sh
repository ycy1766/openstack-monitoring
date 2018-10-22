#!/bin/bash

ansible-playbook   playbooks/04_grafana_install.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"


