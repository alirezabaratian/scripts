#!/usr/bin/env bash

main() {
    read -p "Enter the new SSH port: " new_port
    sudo sed -i "s/^#Port.*/Port $new_port/" /etc/ssh/sshd_config
    sudo systemctl restart ssh >> /dev/null
    echo "SSH port changed to $new_port"
}

main
