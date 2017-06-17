# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "lempUbuntu"

  config.vm.box_check_update = false

  # port forwarding
  # http
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # maraidb
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  
  # redis
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  # mongodb
  # config.vm.network "forwarded_port", guest: 27017, host: 27017

  # config.vm.network "private_network", ip: "192.168.33.11"

  # config.vm.synced_folder "../data", "/vagrant_data"


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
  config.vm.provision "shell", path: "ansible/install_lemp.sh"
end