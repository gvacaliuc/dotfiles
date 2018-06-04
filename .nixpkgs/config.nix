{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    my-custom-vim = import ./vim { inherit pkgs; };
  };
}
