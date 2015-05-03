#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install python-setuptools aptitude git python-dev libxml2-dev libxslt-dev python-yaml

sudo easy_install pip

sudo pip install -r requirements.txt

echo -e "please make sure to edit the config.json file followed by [ENTER]" && read USELESS_VAR

ansible-playbook setup.yml -i hosts --ask-sudo-pass  --module-path ./ansible_modules 

source ~/.zshrc
exit 0
