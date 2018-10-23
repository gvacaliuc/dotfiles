# set up base16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# set up cargo
[ -s $HOME/.cargo/env ] && . "$HOME/.cargo/env"

# loads nvm, but doesn't completely initialize it, since it's very slow.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# set up virtualenv wrapper
export WORKON_HOME="~/.virtualenvs"
#source virtualenvwrapper.sh

eval "$(basher init -)"
