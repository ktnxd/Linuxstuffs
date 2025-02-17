#        _                     
#   ___ | |__  _ __ ___  _   _ 
#  / _ \| '_ \| '_ ` _ \| | | |
# | (_) | | | | | | | | | |_| |
#  \___/|_| |_|_| |_| |_|\__, |
#                        |___/ 
# ~/.bashrc

# My Bash RC mostly yoinked from DT

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi  

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### ALIASES ###

#shutdown
alias shutdown='sudo shutdown now'

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'
alias steam='cd /run/media/ohmy/steam/'
alias lindat='cd /run/media/ohmy/linuxdata/'
alias aosp='cd /run/media/ohmy/AOSP/'

# pacman and paru
alias pac='sudo pacman'
alias pacsyu='sudo pacman -Syyu'                   # update only standard pkgs
alias parusua="paru -Sua --noconfirm"              # update only AUR pkgs
alias parusyu="paru -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"      # remove pacman lock
alias purge='sudo pacman -Rns $(pacman -Qtdq)'     # remove orphaned packages
#######^noobunutu####

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Proton
export STEAM_COMPAT_DATA_PATH=$HOME/proton

#Bash Prompt
PS1='\[\e[0;1;38;5;196m\][\[\e[0;1;38;5;214m\]\u\[\e[0;1;38;5;185m\]@\[\e[0;1;38;5;38m\]\H\[\e[m\] \[\e[0;1;38;5;139m\]\w\[\e[0;1;38;5;196m\]]\[\e[0;1;97m\]$\[\e[m\] \[\e0'
