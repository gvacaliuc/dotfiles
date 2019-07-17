# sets up the prompt for bash
PROMPT_DIRTRIM=2
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Save current working dir
PROMPT_COMMAND='[[ -f ${XDG_RUNTIME_DIR}/.cwd ]] && rm ${XDG_RUNTIME_DIR}/.cwd; pwd > "${XDG_RUNTIME_DIR}/.cwd"'
