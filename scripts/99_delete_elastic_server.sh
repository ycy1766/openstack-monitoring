#!/bin/bash

ansible-playbook playbooks/99_delete_elastic_server.yml \
-e ansible_python_interpreter="{{ PIP_VIRTUALENV_DIRECTORY }}/bin/python"



