#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Android Stuff
# export PATH=$PATH:/opt/android-sdk/sdk/tools:/opt/android-sdk/sdk/platform-tools:/opt/android-sdk/eclipse

# Ruby Gems
export PATH=$PATH:/home/robert/.gem/ruby/2.0.0/bin

# modified commands
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 3'
alias ..='cd ..'

# new commands
alias wime='sudo wifi-menu'
alias wcwifi='sudo netcfg -r wlan0-WirelessCanes'
alias homewifi='sudo netcfg -r wlan0-CB50S49OL'
alias anyu='sudo netcfg -r wlan0-AnyusNetwork'
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'      # requires an argument
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'         # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)

# privileged access
if [ $UID -ne 0 ]; then
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
    alias update='sudo pacman -Su'
fi

# ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -larth'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | less'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

#############################
# - Pacman/Packer aliases - #
#############################

# default pac 	- install one or more packages
alias pac="sudo /usr/bin/pacman -S"	

# default packe	- install one or more packages including AUR
alias aur="/usr/bin/packer -S"			

# '[u]pdate'	- upgrade all packages to their newest version
alias pacu="/usr/bin/packer -Syu"

# '[r]emove'	- uninstall one or more packages
alias pacr="sudo /usr/bin/pacman -Rs"	

# '[s]earch'	- search for a package using one or more keywords
alias pacs="/usr/bin/pacman -Ss"	

# '[s]earch'    - search for a package or a PKGBUILD using one or more keywords
alias aurs="/usr/bin/packer -Ss"	

# '[i]nfo'	- show information about a package
alias paci="/usr/bin/packer -Si"		

# '[l]ist [o]rphans'	- list all packages which are orphaned
alias paclo="/usr/bin/pacman -Qdt"		

# '[c]lean cache'	- delete all not currently installed package files
alias pacc="sudo /usr/bin/pacman -Scc"		

# '[l]ist [f]iles'	- list all files installed by a given package
alias paclf="/usr/bin/pacman -Ql"		

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
