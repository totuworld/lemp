#!/usr/bin/env bash

# Create an ssh key if not already created.
if [ ! -f ~/.ssh/id_rsa ]; then
  echo -e "\n\n\n" | ssh-keygen -t rsa
fi

# Install Ansible and its dependencies if not installed.
if [ ! -f /usr/bin/ansible ]; then
  echo "Adding Ansible repository..."
  sudo apt-add-repository ppa:ansible/ansible
  echo "Updating system..."
  sudo apt-get -y update
  echo "Installing Ansible..."
  sudo apt-get -y install ansible
fi

echo "Running Ansible Playbooks"
cd /vagrant/ansible
echo -e "\n\n\n" | ansible-playbook -i hosts lemp_install.yml --sudo --user=vagrant --connection=local