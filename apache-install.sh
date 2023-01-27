#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<h1>This web application is created using Terraform in us-east-1 region</h1>" > /var/www/html/index.html