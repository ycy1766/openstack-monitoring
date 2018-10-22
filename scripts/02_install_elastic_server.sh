#!/bin/bash

ansible-playbook playbooks/02_elastic_install.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"


