# configuration files

Standard configuration files from my development machine.  The root of this
repository reflects the root of my home folder.  I manage them in a git bare
repo detailed in this [ Atlassian Developer post
](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

## installation
```bash
$ curl -L http://bit.ly/gsv-config-install
DOTFILES=$HOME/.dotfiles
CONFIG_BACKUP_DIR=$HOME/.config-backup
git clone --bare https://github.com/gvacaliuc/dotfiles.git $DOTFILES
function config {
   /usr/bin/git --git-dir=$DOTFILES --work-tree=$HOME $@
}
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    mkdir -p $CONFIG_BACKUP_DIR
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $CONFIG_BACKUP_DIR/{}
    config checkout
fi;
config config status.showUntrackedFiles no
```

```
$ curl -L http://bit.ly/gsv-config-install | bash
```
