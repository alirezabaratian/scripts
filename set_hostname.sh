#!/bin/bash

read -p "Enter your hostname: " HOST_NAME
sudo hostnamectl set-hostname $HOST_NAME
sudo cp /etc/hosts /etc/hosts.bak
echo "127.0.0.1 $HOST_NAME" | sudo tee -a /etc/hosts
