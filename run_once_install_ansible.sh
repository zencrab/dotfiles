#|/bin/sh

# Install ansible
sudo pacman -Syu
sudo pacman -Sy ansible

# Install ansible module for AUR
ansible-galaxy collection install kewlfft.aur

# Run ansible installation
ansible-playbook ~/.bootstrap/setup_archlinux.yaml --ask-become-pass

echo "Ansible installation complete."
