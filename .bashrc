# .bashrc
# Author: Gabriel Vacaliuc : (gv8@rice.edu)
# MIT License

# folder to organize my bashrc
export BASH_CONFIG_DIR="$HOME/.config/bash"

function __load_file { [ -s "$1" ] && source "$1"; }

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# initial setup
__load_file "$BASH_CONFIG_DIR/setup.bash"

# setup nix package manager
__load_file "$BASH_CONFIG_DIR/nix.bash"

# setup path
__load_file "$BASH_CONFIG_DIR/path.bash"

# grab local settings
__load_file "$HOME/.localrc"

# setup environment variables
__load_file "$BASH_CONFIG_DIR/env.bash"

# setup any user defined functions
__load_file "$BASH_CONFIG_DIR/functions.bash"

# add any other configuration
__load_file "$BASH_CONFIG_DIR/config.bash"

# space to add completion scripts
__load_file "$BASH_CONFIG_DIR/completion.bash"

# setup aliases
__load_file "$BASH_CONFIG_DIR/aliases.bash"

unset BASH_CONFIG_DIR

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gvacaliuc/.sdkman"
[[ -s "/home/gvacaliuc/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gvacaliuc/.sdkman/bin/sdkman-init.sh"
