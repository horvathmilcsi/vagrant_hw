#!/bin/bash
yum install epel-release -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx

