#!/bin/bash
set -e

echo "Running install.sh"

# Create the application directory if it doesn't exist
mkdir -p /var/www/html/

# Copy latest files to the web directory (CodeDeploy will place bundle in /opt)
cp -r /opt/codedeploy-agent/deployment-root/*/*/index.html /var/www/html/ 2>/dev/null || true

echo "Install completed"
