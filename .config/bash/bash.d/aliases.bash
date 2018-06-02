# handy aliases that color output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hgrep='grep -H'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#  TODO add to i3 aliases
alias tohdmi2='i3-msg move workspace to output HDMI2'
alias tohdmi1='i3-msg move workspace to output HDMI1'
alias tolaptop='i3-msg move workspace to output eDP1'

alias fixscreen1='correct_monitor.sh HDMI1'
alias fixscreen2='correct_monitor.sh HDMI2'

#   may not be necessary, was sort of a single use thing
alias digitaleditions='wine ~/.wine/drive_c/Program\ Files/Adobe/Adobe\ Digital\ Editions/digitaleditions.exe'

alias x='xclip -selection clipboard'
alias xo='x -o'
alias ap='ansible-playbook'
alias ag='ansible-galaxy'
