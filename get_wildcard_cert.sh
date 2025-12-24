#!/bin/bash

sudo apt update
sudo apt install certbot python3-certbot-dns-cloudflare

/etc/letsencrypt/cloudflare.ini

dns_cloudflare_api_token = YOUR_TOKEN
chmod 600 /etc/letsencrypt/cloudflare.ini
