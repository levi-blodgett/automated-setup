# automated-setup

Automating my personal setup on my PC.

## How to use

1. Install Ubuntu <br />
2. Make your user a sudoer using: <br />
   _usermod -aG sudo $USER_
3. Install Ansible and Git <br />
   _sudo apt install ansible git_
4. Setup git
   _Instructions: https://levi-blodgett.github.io/git-practice/ _
6. Clone this repo <br />
   _cd ~/; git clone git@github.com:levi-blodgett/automated-setup.git_
5. Run this playbook <br />
   _ansible-playbook -K -e 'username=$USER' ~/automated-setup/setup_ubuntu_environment.yml_

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
- Sets up bash aliases, functions, .bashrc, and bash prompt
- Sets up TMUX env
- Sets up VIM env
- Sets up VS Code env
- Notifies user to reboot when able
- Sets a cron job to run when rebooted, setting and updating the system again
