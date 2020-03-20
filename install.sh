#!/bin/bash

BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
NC='\033[0m'

echo -e "${BYellow}Installing dependencies ${NC}"
sudo apt update && sudo apt install -y git python-pip python-dev
echo -e "${BGreen}done ${NC}"
echo -e "${BYellow}Downloading and installing ansible ${NC}"
sudo pip install --upgrade ansible
echo -e "${BGreen}done ${NC}"

echo -e "${BYellow}Cloning playbook repository ${NC}"
# git clone git@github.com:jamesddube/ansible-local-setup.git ~/ansible-local-setup
# cd ~/ansible-local-setup
echo -e "${BYellow}Let the games begin... ${NC}"
git checkout development
ls -l
ansible-playbook playbooks/setup.yml -i ./hosts.yml
