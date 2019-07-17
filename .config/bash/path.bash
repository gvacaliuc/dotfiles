# Any additions to PATH
export PATH=$PATH:~/bin/

# go
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# rust
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

export PATH="$HOME/.basher/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

[[ -f "/home/gvacaliuc/google-cloud-sdk/path.bash.inc" ]] && . "/home/gvacaliuc/google-cloud-sdk/path.bash.inc"
