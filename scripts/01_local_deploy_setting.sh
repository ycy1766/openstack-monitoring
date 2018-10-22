#!/bin/bash

ansible-playbook playbooks/01_local_repo_install.yml  \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python" 
