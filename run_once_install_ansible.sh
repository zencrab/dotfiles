#!/bin/sh

# Install ansible
sudo pacman -Sy --needed ansible
echo "Ansible installation complete."

# Install galaxy modules 
ansible-galaxy install -r ~/.bootstrap/requirements.yml
echo "Ansible collections installation complete."

# Run ansible installation
ansible-playbook -i ~/.bootstrap/inventory.yml ~/.bootstrap/setup.yml --ask-become-pass
echo "Ansible playbook setup.yml competed."
