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


# my terminal commands

# hotel
alias hotel="cd env/project && source bin/activate && cd hotel"

# neweco
alias neweco="cd env/project && source bin/activate && cd neweco"

# store
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
alias s="django-admin.py startproject"

# startapp
alias sa="django-admin.py startapp"

# runserver
alias r="python manage.py runserver"

