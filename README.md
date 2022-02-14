# automated-setup #
Automating my personal setup on my PC, but figured other people could also use if they wish.

## Before using ##
You will need to install ansible manually on your Ubuntu 20.04 setup, but that should be it

## Summary of roles ##
* Adds code repositories for installing
* Cleans with apt autoremove
* Installs ubuntu/nvidia drivers
* Installs set of packages
* Updates cache, updates packages, upgrades packages
* Sets up Google DNS servers on local PC
* Sets up firefox, downloads extensions
* Downloads, installs, and sets favorite font as primary in various environments
* Sets up Gnome GUI customized how I enjoy
* Links Google Drive to local PC using FUSE
* Sets up TMUX env
* Adds local user to SUDO grp

### Future features to be added as roles ###
* Adds dot files and sets them up in env
  * Still need to implement
