if [ -e /home/gvacaliuc/.nix-profile/etc/profile.d/nix.sh ]; then . /home/gvacaliuc/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# fixes locale issues
export LOCALE_ARCHIVE=$(nix-build --no-out-link '<nixpkgs>' -A glibcLocales)/lib/locale/locale-archive
