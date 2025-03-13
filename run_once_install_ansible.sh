#!/bin/sh

# Install ansible
sudo pacman -Sy ansible

# Install ansible module for AUR packages
ansible-galaxy collection install kewlfft.aur

# Run ansible installation
ansible-playbook -i ~/.bootstrap/inventory.yml ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."
