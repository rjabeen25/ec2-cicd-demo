#!/bin/bash
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl stop httpd
rm -rf /var/www/html/*
