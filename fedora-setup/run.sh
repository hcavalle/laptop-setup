#!/bin/bash
# Add the EPEL repository, and install Ansible.
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum -y install ansible python-setuptools

echo -e "please make sure to edit the config.json file followed by [ENTER]" && read USELESS_VAR

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules --extra-vars "@config.json"

source ~/.zshrc
exit 0
