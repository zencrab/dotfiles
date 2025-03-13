#!/bin/sh

# Install ansible
sudo pacman -Sy --needed ansible

# Install ansible modules
ansible-galaxy collection install kewlfft.aur

# Run ansible installation
ansible-playbook -i ~/.bootstrap/inventory.yml ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."
