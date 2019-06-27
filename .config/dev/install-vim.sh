#!/usr/bin/env bash

set -euo pipefail

# install deps
apt install -y \
    libncurses5-dev \
    libgnome2-dev \
    libgnomeui-dev \
    libgtk2.0-dev \
    libatk1.0-dev \
    libbonoboui2-dev \
    libcairo2-dev \
    libx11-dev \
    libxpm-dev \
    libxt-dev \
    python3-dev \
    ruby-dev \
    lua5.1 \
    liblua5.1-dev \
    libperl-dev \
    git \
    curl


# remove existing packages
apt remove vim vim-runtime gvim

VIM_DIR=$(mktemp -d)
VIM_VERSION="v8.1.1585"
VIM_ARCHIVE_URL="https://github.com/vim/vim/archive/$VIM_VERSION.tar.gz"

# get vim source
curl -L "$VIM_ARCHIVE_URL" | tar zx --strip-components=1 -C "$VIM_DIR"

PYTHON_VERSION_SHORT=$(python3 --version | cut -d" " -f2 | head -c3)

# configure and install
cd "$VIM_DIR"
./configure \
    --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-config-dir="/usr/lib/python$PYTHON_VERSION_SHORT/config" \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
make install
