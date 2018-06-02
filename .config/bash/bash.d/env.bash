#   Set up environment var / themes

#   Allow bindings to ctrl-s
stty -ixon

#   Set Base 16 shell up
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
[ -s $HOME/.cargo/env ] && \. "$HOME/.cargo/env"

#   Set drone configurations
export DRONE_SERVER=https://drone.flamingpigeon.co
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoiZ3ZhY2FsaXVjIiwidHlwZSI6InVzZXIifQ.Fidlw271yhFXDP5J4xbXk7rOOH3GZui9My-br2ZDazQ
