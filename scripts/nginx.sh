#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/django-blog-project/nginx/nginx.conf /etc/nginx/sites-available/blog
sudo rm -f /etc/nginx/sites-enabled/blog  # Remove existing link
sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled/
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx
