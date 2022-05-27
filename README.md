# automated-setup

Automating my personal setup on my PC.

## Before using

You will need to install Ubuntu, then install Ansible, clone this repo, and make your user a sudoer using:
_usermod -aG sudo $USER_

## How to use

ansible-playbook -K -e 'username=$USER' ~/ansible/setup_ubuntu_environment.yml
_enter sudo password_

## Summary of roles

- Adds code repositories for installing
- Cleans with apt autoremove
- Installs ubuntu/nvidia drivers
- Installs favorite packages
- Updates cache, updates packages, upgrades packages
- Sets up Google DNS servers on local PC
- Sets up firefox, downloads extensions
- Downloads, installs, and sets favorite font as primary in various environments
- Sets up Gnome GUI
- Links Google Drive to local PC using FUSE
- Sets up TMUX env
- Sets up VIM env
- Sets up VS Code env
