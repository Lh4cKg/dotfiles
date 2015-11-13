#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

# PS1 = \n \[\e[1;37m\]┌─[\[\e[1;36m\] \d \[\e[1;31m\]\T \[\e[1;37m\]] \n\[\e[1;37m\] └─[ \[\e[1;34m\]@ \[\e[1;32m\]\w \[\e[1;37m\]]\[\e[1;35m\]---> \[\e[0;37m\]

export PS1=" [ \[$(tput sgr0)\]\[\033[38;5;6m\]\d\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;160m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\] ] \n [ \[$(tput sgr0)\]\[\033[38;5;40m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] {\[$(tput sgr0)\]\[\033[38;5;56m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]} ]\[$(tput sgr0)\]\[\033[38;5;1m\]-\[$(tput sgr0)\]\[\033[38;5;4m\]-\[$(tput sgr0)\]\[\033[38;5;19m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

  # function _update_ps1() {
  #      PS1="$(~/powerline-shell.py $? 2> /dev/null)"
  #   }

  #   if [ "$TERM" != "linux" ]; then
  #       PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
  #   fi

# Extract function
function extract() {
          if [ -f $1 ] ; then
             case $1 in
              *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

##############################
# autocomplite xfce-terminal
##############################

complete -cf sudo
complete -cf man

########################
# history completion
########################

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#####################
# git completion
#####################

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

# source bin/activare
alias a="source bin/activate"

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


##########################
##       pip            ##
##########################

# pip install
alias ppi="pip install"

# pip remove
alias ppr="pip remove"

# pip install search
alias pps="pip search"

# pip list
alias ppl="pip list"


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

##################
##  pacman
##################

# sudo pacman -Syu
alias update="sudo pacman -Syu"

# sudo pacman -S
alias install="sudo pacman -S"

# sudo pacman -Ss
alias search="sudo pacman -Ss"

# sudo pacman
alias pac="sudo pacman"

# sudo pacman -R 
alias remove="sudo pacman -R"
