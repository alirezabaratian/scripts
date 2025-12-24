#!/bin/bash

# Install prerequisites
sudo apt update
sudo apt install -y curl git zsh

# One-line install command
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
