
#!/bin/bash

apt-get update -y
apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

echo '<h1>Welcome to Varun Terraform EC2</h1>' > /var/www/html/index.html
