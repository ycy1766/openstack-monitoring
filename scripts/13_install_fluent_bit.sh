#!/bin/bash

ansible-playbook  playbooks/50_pip_venv_install.yml

ansible-playbook -v  playbooks/13_fluent_bit_install.yml  \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"
