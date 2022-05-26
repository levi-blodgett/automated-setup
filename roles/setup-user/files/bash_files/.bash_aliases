# Enable color support for some commands via aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
 
# Lastpass
alias lpcp='lpass -c -p '
alias lpcu='lpass -c -u '
alias lpsearch='lpass ls |grep -i '
alias lpl='lpass login firstname.lastname@centralsquare.com'
alias winpin='lpass show local-hardware/windows-vm-pin --password'
alias sshlpass='lpass show -c "ops/zt ~/.ssh/id_rsa" --password'
alias adpass='lpass show -c "centralsquare.com" --password'
alias lpp='lpass show -c "lastpass.com" --password'
 
# Ansible
alias ans='ansible-playbook '
alias ansi='ansible-playbook -i ~/src/veritas_hosts/ '
alias ans_listtargets="ansible --list-hosts -i ~/src/veritas_hosts "
alias ans_listhosts="ansible --list-hosts -i ~/src/veritas_hosts "
 
# SVN
alias svns="svn status -q"
alias svnb="svn blame"
alias svnd="svn diff"
alias svndw="svn diff"
alias svnc="svn diff -c $1"
alias svnu="svn up"
alias svnca="svn commit -F automessage.txt"
alias svnaw="svn resolve --accept working"
alias svnrp="svn propedit svn:log --revprop -r"
alias svnR="svn revert --recursive ."
 
# ls
alias ll='ls -alF'
alias lr='ls -tralF'
alias lk='ls -tralF --block-size=K'
alias lm='ls -tralF --block-size=M'
alias lg='ls -tralF --block-size=G'
alias la='ls -A'
alias l='ls -CF'

# disc
alias df='df -h | grep -v "/snap/"'
alias du='du -h --max-depth=1 | sort -hr'

# grep

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
 
# Date
alias datef='date +%F'
alias dateu='date +%s'
alias datefu='date +%F-%s'
 
# Miscellaneous
alias genssh="gen_ssh_conf.py --force"
alias jumpme="ssh your-computer-name"
alias heck='echo ???'
alias create_password="< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c14"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ssh-proxy='ssh -D 9000 -fCqN zheng'
