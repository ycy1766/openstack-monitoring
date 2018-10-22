#!/bin/bash

########### set variable ###########

ANSIBLE_VERSION="2.6.0"

########### install pip/ansible ###########

echo "Check epel repo"
CHECK_EPEL=`yum repolist | grep epel 2>/dev/null | wc -l`
if [ ${CHECK_EPEL} -eq 0 ];then
	echo "Install pip and ansible "
	yum install epel* -y
fi

echo "Check epel python-pip"
CHECK_PIP=`rpm -qa | grep python2-pip | wc -l`
if [ ${CHECK_PIP} -eq 0 ];then
	echo "Install python-pip  "
	yum install python-pip -y
fi

echo "Check ansible ${ANSIBLE_VERSION}"
CHECK_ANSIBLE=`pip list --disable-pip-version-check | grep "ansible (${ANSIBLE_VERSION})"| wc -l`
if [ ${CHECK_ANSIBLE} -eq 0 ];then
	echo "Install ansible ${ANSIBLE_VERSION}"
	ANSIBLE_RPM="ansible-${ANSIBLE_VERSION}.rpm"
	curl -o /tmp/${ANSIBLE_RPM}  http://52.79.162.121/CLOUD_REPOs/cloud-monitoring/packages/${ANSIBLE_RPM}
	yum localinstall /tmp/${ANSIBLE_RPM} -y
	rm -rf /tmp/${ANSIBLE_RPM}
fi

########### ansible-playbook ###########

ansible-playbook playbooks/30_local_virtualenv_install.yml  

ansible-playbook playbooks/40_docker_install.yml 
