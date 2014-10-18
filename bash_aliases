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
alias ping='ping -c 3'

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
alias rm='rm -I'  # 'rm -i' prompts for each file
alias ln='ln -i'
