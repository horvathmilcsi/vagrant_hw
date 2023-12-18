#!/bin/bash
sudo cp /vagrant/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo
yum install -y mongodb-org
sudp cp /etc/mongod.conf /etc/mongod.conf.orig
sudo cp /vagrant/mongod.conf /etc/mongod.conf
systemctl start mongod
systemctl enable mongod

