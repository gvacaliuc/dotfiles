# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ ${#hub_path} -gt 0  ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias d='docker $*'
alias d-c='docker-compose $*'
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
function alert() {
    notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e 's/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//')"
}

#  TODO add to i3 aliases
alias tohdmi2='i3-msg move workspace to output HDMI2'
alias tohdmi1='i3-msg move workspace to output HDMI1'
alias tolaptop='i3-msg move workspace to output eDP1'

alias x='xclip -selection clipboard'
alias xo='x -o'
alias ap='ansible-playbook'
alias ag='ansible-galaxy'

# To initialize nvm, since its rather slow on startup.
alias nvminit='. "$NVM_DIR/nvm.sh"'

# IDEA
alias idea='idea.sh > /dev/null 2>>/tmp/idea-errors.txt'

alias newpass='cat /dev/urandom | base64 | head -c10'

# eclipse
alias eclipse='SWT_GTK3=0 ~/eclipse/java-photon/eclipse/eclipse'

# fuck typos
alias dc='cd'

# get jupyter token
alias jtoken='docker-compose logs jupyter | grep -oe "[a-z0-9]\{48\}" | tail -n1'

# temporary
alias gb-serve='nix-shell -p nodejs-10_x --run "npm install gitbook-cli && npx gitbook install && npx gitbook serve"'
