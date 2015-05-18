#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# autocomplite xfce-terminal

complete -cf sudo
complete -cf man

# history completion

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# git completion

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

############################
##  bash custom commands  ##
############################

# hotel -> temporary command
alias hotel="cd env/project && source bin/activate && cd hotel"

# neweco -> temporary command
alias neweco="cd env/project && source bin/activate && cd neweco"

# store -> temporary command
#alias store="cd env/project && source bin/activate && cd store"

###############################
##  python3 custom commands  ##
###############################

# virtualenv -> env/project activate
alias env="cd env/project && source bin/activate"
alias a="cd env/project && source bin/activate"

# deactivate
alias d="deactivate"

# makemigrations
alias mm="python manage.py makemigrations"

# migrate
alias m="python manage.py migrate"

# createsuperuser
alias c="python manage.py createsuperuser"

# startproject
alias sp="django-admin.py startproject"

# startapp
alias sa="django-admin.py startapp"

# runserver
alias r="python manage.py runserver"

###########################
##         git           ##
###########################

# git status
alias gs="git status"

# git add
alias ga="git add"

# git commit
alias gc="git commit -m"

# git pull
alias gpl="git pull"

# git push
alias gps="git push"

# git log
alias gl="git log"
