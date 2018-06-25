# .bashrc
# Author: Gabriel Vacaliuc : (gv8@rice.edu)
# MIT License

# folder to organize my bashrc
export BASH_CONFIG_DIR="$HOME/.config/bash"

function __load_file { [ -s "$1" ] && source "$1"; }

# initial setup
__load_file "$BASH_CONFIG_DIR/setup.bash"

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
