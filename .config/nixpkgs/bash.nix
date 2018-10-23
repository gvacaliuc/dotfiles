{ pkgs, ... }:

{
  programs.bash = {
    enable = true;

    shellOptions = [
      # append to the history file, don't overwrite it
      "histappend"
      # check the window size after each command and, if necessary,
      # update the values of LINES and COLUMNS.
      "checkwinsize"
      # If set, the pattern "**" used in a pathname expansion context will
      # match all files and zero or more directories and subdirectories.
      "globstar"
      #  Allows negating wildcards, ex:
      #  $ ls
      #  ~/foobar$ ls
      #  abar  afoo  bbar  bfoo
      #  ~/foobar> ls !(b*)
      #  abar  afoo
      "extglob"
    ];

    initExtra = ''
      # don't put duplicate lines or lines starting with space in the history.
      # See bash(1) for more options
      HISTCONTROL=ignoreboth

      # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
      HISTSIZE=10000
      HISTFILESIZE=20000

      # folder to organize my bashrc
      export BASH_CONFIG_DIR="$HOME/.config/bash"
      [ -s $BASH_CONFIG_DIR/prompt.bash ] && source $BASH_CONFIG_DIR/prompt.bash
      function __load_file { [ -s "$1" ] && source "$1"; }

      TERMINAL="$(which gnome-terminal || echo \"\")"

      # git-dir for the dotfile git bare repo
      DOTFILE_GIT_DIR="$HOME/.dotfiles"
      function config() {
        git --git-dir=$DOTFILE_GIT_DIR --work-tree=$HOME $@
      }

      # jupyter stuff
      JUPYTER_CONFIG_DIR="$HOME/.jupyter"
      NBCONVERT_TEMPLATE="$HOME/.jupyter/templates/rice_assignment_with_code.tplx"

      EDITOR="vim"

      # drone
      DRONE_SERVER="https://drone.flamingpigeon.co"
      DRONE_TOKEN_FILE="$HOME/.drone/$DRONE_SERVER/token"
      DRONE_TOKEN="$(cat $DRONE_TOKEN_FILE 2>/dev/null || echo \"\")"

      # setup path
      export PATH="$PATH:$HOME/bin/"
      export GOPATH="$HOME/go"
      export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
      export PATH="$HOME/.basher/bin:$PATH"

      # misc configuration

      # set up base16 shell
      BASE16_SHELL=$HOME/.config/base16-shell/
      [ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

      # set up cargo
      [ -s $HOME/.cargo/env ] && . "$HOME/.cargo/env"

      # loads nvm, but doesn't completely initialize it, since it's very slow.
      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

      eval "$(basher init -)"

      # space to add completion scripts
      __load_file "$BASH_CONFIG_DIR/completion.bash"

      # setup aliases
      __load_file "$BASH_CONFIG_DIR/aliases.bash"

      unset BASH_CONFIG_DIR
    '';

    profileExtra = ''
      # set PATH so it includes user's private bin if it exists
      if [ -d "$HOME/bin" ] ; then
          PATH="$HOME/bin:$PATH"
      fi
    '';
  };
}
