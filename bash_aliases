# enable color support of ls and also add handy aliases
alias ls='ls -G'
alias dir='dir -G'
alias vdir='vdir -G'

alias grep='grep -G'
alias fgrep='fgrep -G'
alias egrep='egrep -G'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# modified commands
alias ..='cd ..'
alias ins="ssh ins-sw-bld11"
alias robc="ssh robc-jumpbox.cisco.com"
alias mininet="ssh -Y mininet@mininet-vm"
alias logviewer='ssh techsupport@apic-logviewer -t "bash --rcfile ~/.benjwils_bashrc -i"'
alias n5k2="ssh admin@n5k2"
alias n5k3="ssh admin@n5k3"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# privileged access
if [ $UID -ne 0 ]; then
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
fi

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'


# MAC OSX Show / Hide Hidden Files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
