# git-dir for the dotfile git bare repo
export DOTFILE_GIT_DIR="$HOME/.dotfiles"

export JUPYTER_CONFIG_DIR=$HOME/.jupyter
export NBCONVERT_TEMPLATE_HOME=$HOME/.jupyter/templates
export NBCONVERT_DEFAULT_TEMPLATE=$NBCONVERT_TEMPLATE_HOME/rice_assignment_with_code.tplx
export NBCONVERT_TEMPLATE=$NBCONVERT_DEFAULT_TEMPLATE
export GIT_CREDENTIAL_HELPER=~/.git_credentials

export EDITOR=vim

#   Set drone configurations
export DRONE_SERVER=https://drone.flamingpigeon.co
DRONE_TOKEN_FILE="$HOME/.drone/$DRONE_SERVER/token"
export DRONE_TOKEN=$(cat $DRONE_TOKEN_FILE 2>/dev/null || echo "")
