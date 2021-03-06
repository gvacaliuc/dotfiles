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
alias gcb='git copy-branch-name'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias d='docker $*'
alias d-c='docker-compose $*'

# handy aliases that color output
if [[ "$(uname)" == "Darwin" ]] ; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi
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

# get jupyter token from compose service
alias jtoken='docker-compose logs jupyter | grep -oe "[a-z0-9]\{48\}" | tail -n1'

# temporary
alias gb-serve='nix-shell -p nodejs-10_x --run "npm install gitbook-cli && npx gitbook install && npx gitbook serve"'

# ripgrep
alias rgh='rg --hidden'

# preview scrolling key bindings
export FZF_DEFAULT_OPTS="--bind ctrl-j:preview-page-down,ctrl-k:preview-page-up"

# git fzf stuff
fzf-git-branch() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    git branch --color=always --all --sort=-committerdate |
        grep -v HEAD |
        fzf --height 50% --ansi --no-multi --preview-window right:65% \
            --preview 'git log -n 50 --color=always --date=short --pretty="format:%C(auto)%cd %h%d %s" $(sed "s/.* //" <<< {})' |
        sed "s/.* //"
}

fzf-git-checkout() {
    git rev-parse HEAD > /dev/null 2>&1 || return

    local branch

    branch=$(fzf-git-branch)
    if [[ "$branch" = "" ]]; then
        echo "No branch selected."
        return
    fi

    # If branch name starts with 'remotes/' then it is a remote branch. By
    # using --track and a remote branch name, it is the same as:
    # git checkout -b branchName --track origin/branchName
    if [[ "$branch" = 'remotes/'* ]]; then
        git checkout --track $branch
    else
        git checkout $branch;
    fi
}

alias gb='fzf-git-branch'
alias gco='fzf-git-checkout'

fzf-git-diff() {
    local base=`git merge-base --fork-point HEAD master`
    git diff --color=always --name-only "$base" |
        fzf --height 50% --ansi --no-multi --preview-window right:65% \
            --preview "git diff \"${base}\" --color=always {}" |
        sed "s/.* //"
}

alias vd='vim `fzf-git-diff`'
