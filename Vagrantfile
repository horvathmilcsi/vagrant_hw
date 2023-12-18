# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.vm.define "mongodb" do |mongodb|
    mongodb.vm.box = "geerlingguy/centos7"
    mongodb.vm.network "private_network", ip: "192.168.56.100"
#    mongodb.vm.provision "file", source: "mongodb-org-4.4.repo", destination: "/etc/yum.repos.d/mongodb-org-4.4.repo"
    mongodb.vm.network "forwarded_port", guest: 27017, host: 27017
    mongodb.vm.provision "shell", path: "mongod_install.sh"
  end

  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "geerlingguy/centos7"
    nginx.vm.network "forwarded_port", guest: 80, host: 80
    nginx.vm.provision "shell", path: "nginx_install.sh"
  end
end
