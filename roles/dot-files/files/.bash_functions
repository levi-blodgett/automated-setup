#########################
# Jira
#########################
# Open Jira OPS ticket in browser
jops() {
  xdg-open https://jira.centralsquare.com/browse/OPS-$1/
}
# Open Jira PS ticket in browser
jps() {
  xdg-open https://jira.centralsquare.com/browse/PS-$1/
}

#########################
# Ansible
#########################
# ansible with targets
anst(){
  ansible-playbook -e 'targets='"$1" -D "${@:2}"
}

#########################
# Grep Convenience
#########################
function ag-ans() {
    ag -ri --numbers "$1" /home/$USER/ansible
}

#########################
# Miscellaneous
#########################
check_yaml() {
 python -c 'import yaml,sys;yaml.safe_load(sys.stdin)' < $1 && echo 'Seems fine.' || echo -e $'\e[1m\e[31mIt\'s broken'
}
