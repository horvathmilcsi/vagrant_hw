#!/bin/bash
sudo cp /vagrant/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo
yum install -y mongodb-org
systemctl start mongod
systemctl enable mongod

