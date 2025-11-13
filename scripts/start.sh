#!/bin/bash
set -e

echo "Starting application..."

# Restart Apache (or install & start if missing)
if ! command -v httpd &> /dev/null
then
    yum install -y httpd
fi

systemctl restart httpd
systemctl enable httpd

echo "Application started"
