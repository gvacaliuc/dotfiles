#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/.dotfiles"
CONFIG_BACKUP_DIR="$HOME/.config-backup"

function cmd_exists {
    command -v "$1" > /dev/null
}

cmd_exists git || echo "error: install git first"

if [[ -d "$DOTFILES" ]] ; then
    echo "info: using existing git dir $DOTFILES"
else
    git clone --bare "https://github.com/gvacaliuc/dotfiles.git" "$DOTFILES"
fi

function config {
   git --git-dir="$DOTFILES" --work-tree="$HOME" "$@"
}

if ! config checkout
then
    echo "info: backing up existing files to $CONFIG_BACKUP_DIR";
    mkdir -p "$CONFIG_BACKUP_DIR"
    set +o pipefail
    config checkout 2>&1 | grep "^\s\+[a-zA-Z\.\/0-9_-]\+" | sed -e "s|^\s\+|$HOME/|" | xargs ls -d > /tmp/rsync-files
    set -o pipefail
    rsync -dl --remove-source-files --delete --files-from=/tmp/rsync-files "/" "$CONFIG_BACKUP_DIR"
    config checkout
fi
echo "successfully checked out files"

config config status.showUntrackedFiles no
