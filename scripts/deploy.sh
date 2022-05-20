#!/bin/bash

# Update Repos:
sleep 60
sudo apt-get update -y
sleep 60

# Install Apache and Figet:
sudo apt-get install -y apache2 figlet

# Generate WebPage:
sudo /bin/bash -c 'echo "<pre>" > /var/www/html/index.html'
sudo /bin/bash -c 'hostname | figlet >> /var/www/html/index.html'
sudo /bin/bash -c 'echo -e "\n======" >> /var/www/html/index.html'
sudo /bin/bash -c 'hostname -i | figlet >> /var/www/html/index.html'
sudo /bin/bash -c 'echo "</pre>" >> /var/www/html/index.html'

# Restart for good measure and enable it (to survive post-reboot):
sudo systemctl restart apache2
sudo systemctl enable apache2
