#!/bin/bash

read -p "Enter your domain: " DOMAIN
sudo certbot certonly --standalone --agree-tos --register-unsafely-without-email -d $DOMAIN