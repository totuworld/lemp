#!/usr/bin/env bash

# Create an ssh key if not already created.
if [ ! -f ~/.ssh/id_rsa ]; then
  echo -e "\n\n\n" | ssh-keygen -t rsa
fi

# Install Ansible and its dependencies if not installed.
if [ ! -f /usr/bin/ansible ]; then
  echo "Adding Ansible repository..."
  sudo apt-add-repository ppa:ansible/ansible-1.9
  echo "Updating system..."
  sudo apt-get -y update
  echo "Installing Ansible..."
  sudo apt-get -y install ansible
fi

echo "Copy Playbooks"
cd /vagrant
cp -a ansible/ ~/ansible

echo "change hosts chmod"
cd ~/ansible
chmod -x hosts

echo "Running Ansible Playbooks"
cd ~/ansible
echo -e "\n\n\n" | ansible-playbook -i hosts lemp_install.yml --sudo --user=vagrant --connection=local

echo "remove Ansible Playbooks"
cd ~
rm -rf ./ansible
