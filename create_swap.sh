#!/usr/bin/env bash

function main() {
    clear
    echo "This script allocates a swap partition and makes it persistant after reboots."
    read -p "How much swap do you want in GB? " amount
    
    # Create a swapfile in / and set permissions
    sudo fallocate -l ${amount}G /swapfile > /dev/null
    sudo chmod 600 /swapfile

    # Make a swap partition out
    sudo mkswap /swapfile >> /dev/null
    sudo swapon /swapfile >> /dev/null

    # Apply the setting for reboots
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

    if [ $? -eq 0 ]; then
        echo "Done."
    else
        echo "An error occured!"
    fi
}

main
