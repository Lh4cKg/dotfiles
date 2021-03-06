# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# git branch prompt
source ~/.git-prompt.sh

###################
#  colors
###################

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White
# custom colors
NF1='\033[38;5;6m'
NF2='\033[38;5;56m'


export PS1="\[$Cyan\]|\[$Green\]\u\[$White\] {\[$NF2\]\W\[$White\]}\[$Purple\]$(__git_ps1)\[$Green\]|\[$Red\]>\[$Green\]>\[$Blue\]>\[$Green\] "

##############################
# autocomplite qterminal-terminal
##############################

complete -cf sudo
complete -cf man

#############################
# history completion
#############################

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#############################
# git completion
#############################

source ~/.git-completion.bash

#if [ -f ~/.git-completion.bash ]; then
#  . ~/.git-completion.bash
#fi

############################
##  bash custom commands  ##
############################

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

# Create a TAR archive -> *.tar.gz
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive -> *.zip.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }


#--------------------------
#        Aliases          #
#--------------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias hg='history | grep'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pag='ps aux | grep'
alias k9='kill -9'
alias cl='clear'

# PATH variables
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias dufs='du -skh'  # file size 
alias du='du -kh'    # show list file size
alias df='df -kTh'

alias ul='cut -d: -f1 /etc/passwd' # user list

###################################
#   ls commands
###################################
# Add colors for filetype and human-readable sizes by default on ls
alias ls='ls -h --color'
alias lfs='ls -lh --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# ll directories first, with alphanumeric sorting
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# less 
alias more='less'

##############################
#  aliases for python 3.5
##############################

export PYTHONSTARTUP=~/.pythonrc

# start python3.5.1
alias py="python"

# start python3.3.6
alias py3="python3.3"

# start python2.7.11
alias py2="python2"

# python inspect interactively after running script
alias pyi="python -i" # python -i /path/somefile.py

# python debug output from parser
alias pyd="python -d" # python -d somefile.py

# python program passed in as string (terminates option list)
alias pyc="python -c" # python -c "import sys; print(sys.version,sys.platform)"

#############################
# django completion
#############################

source ~/.django-completion.bash

# activate -> soft
alias env_soft="cd dev/projects/soft && source bin/activate"

# activate -> vmix
alias env_vmix="cd dev/projects/env_vmixdotge && source bin/activate && cd vmixdotge"

# activate -> vmix
alias env_shop="cd dev/projects/env_shopsondotge && source bin/activate && cd shopsondotge"

# activate -> bukinistebi
alias env_buk="cd dev/projects/env_bukinistebi && source bin/activate && cd bukinistebi"
alias env_bK="cd dev/projects/env_bukinistebi && source bin/activate && cd django_project"

# elitremont
alias env_bK="cd dev/projects/env_elitremont && source bin/activate && cd elitremontdotge"

###############################
##  command aliases for project          ##
###############################

# virtualenv -> dev/projects
alias dev="cd dev/projects"

# source bin/activare
alias a="source bin/activate"
alias ac="source bin/activate"
# source bin/activare to navigate up one directory level
alias ..a="source ../bin/activate"

# deactivate
alias d="deactivate"
alias da="deactivate"

# makemigrations
alias mm="python manage.py makemigrations"

# migrate
alias m="python manage.py migrate"

# createsuperuser
alias c="python manage.py createsuperuser"
alias cs="python manage.py createsuperuser"

# startproject
alias sp="django-admin.py startproject"

# startapp
alias sa="django-admin.py startapp"

# runserver
alias r="python manage.py runserver"
alias mr="python manage.py runserver"

# python manage.py
alias pm="python manage.py"

# python manage.py shell
alias pms="python manage.py shell"

# python manage.py collectstatic
alias pmcs="python manage.py collectstatic"

# python manage.py makemessages -l
alias pmm="python manage.py makemessages -l"

# python manage.py compilemessages -l
alias pmc="python manage.py compilemessages -l"


##########################
##       pip            ##
##########################

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

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

# git
alias g="git"

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
alias gps="git push -u"

# git push origin master
alias gpso="git push -u origin master"

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

export PATH="$HOME/.rbenv/bin:$PATH"
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

##################
##  pacman
##################

# sudo pacman -Syu
alias update="sudo pacman -Syu"
alias up="sudo pacman -Syu"


# sudo pacman -S
alias install="sudo pacman -S"
alias in="sudo pacman -S"

# sudo pacman -Ss
alias search="sudo pacman -Ss"
alias se="sudo pacman -Ss"

# sudo pacman
alias pac="sudo pacman"

# sudo pacman -R 
alias remove="sudo pacman -R"
alias re="sudo pacman -R"

#######################
# yaourt 
#######################

# yaourt -Syu
alias yupdate="yaourt -Syu"
alias yup="yaourt -Syu"

# yaourt -S
alias yinstall="yaourt -S"
alias yin="yaourt -S"

# yaourt -Ss
alias ysearch="yaourt -Ss"
alias yse="yaourt -Ss"

# yaourt
alias ya="yaourt"

# yaourt -R 
alias yremove="yaourt -R"
alias yre="yaourt -R"


####################################
## powerline config
####################################

# function _update_ps1() {
#      PS1="$(~/powerline-shell.py $? 2> /dev/null)"
#   }

#   if [ "$TERM" != "linux" ]; then
#       PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#   fi

#####################################
##     liquidprompt config
#####################################

# [[ $- = *i* ]] && source /usr/bin/liquidprompt

# # LP_PS1_PREFIX="\[\e]0;\u@\h: \w\a\]"

# if [ -f /etc/bashrc ]; then
#     . /etc/bashrc   # --> Read /etc/bashrc, if present.
# fi

# if [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion

