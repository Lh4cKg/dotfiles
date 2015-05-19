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

# python manage.py
alias pm="python manage.py"

# python manage.py shell
alias pms="python manage.py shell"

# python manage.py collectstatic
alias pmc="python manage.py collectstatic"

# python manage.py makemessages -l
alias pmm="python manage.py makemessages -l"

# python manage.py compilemessages -l
alias pmc="python manage.py compilemessages -l"


###########################
##         git           ##
###########################

# git init
alias gi="git init"

# git status
alias gs="git status"

# git add
alias ga="git add"

# git commit
alias gc="git commit -m"

# git pull
alias gpl="git pull"

# git pull origin master
alias gplo="git pull origin master"

# git push
alias gps="git push"

# git push origin master
alias gpso="git push origin master"

# git log
alias gl="git log"

# git remote
alias gr="git remote"

# git remote -v
alias grv="git remote -v"

# git remote add
alias gra="git remote add"

# git remote add origin repo
alias grao="git remote add origin"

# git remote remove
alias grr="git remote remove"

# git remote remove origin repo
alias grro="git remote remove origin"


################
##   Ruby     ##
################

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
