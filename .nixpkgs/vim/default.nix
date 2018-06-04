{ pkgs }:

let
  configurable_nix_path = <nixpkgs/pkgs/applications/editors/vim/configurable.nix>;
  my_vim_configurable = with pkgs; vimUtils.makeCustomizable (callPackage configurable_nix_path {
    inherit (darwin.apple_sdk.frameworks) CoreServices Cocoa Foundation CoreData;
    inherit (darwin) libobjc cf-private;

    features = "huge";
    lua = pkgs.lua5_1;
    python = python3;
    gui = config.vim.gui or "auto";

    # optional features by flags
    flags = [ "python" "X11" ];
  });

in with pkgs; my_vim_configurable.customize {
  name = "vim";
  vimrcConfig = {
    customRC = ''
      "  Gets Vundle information
      if filereadable(expand("$HOME/.config/vim/plugins.vim"))
          source $HOME/.config/vim/plugins.vim 
      endif
   
      "  helper functions
      if filereadable(expand("$HOME/.config/vim/functions.vim"))
          source $HOME/.config/vim/functions.vim
      endif
   
      "  settings / config
      if filereadable(expand("$HOME/.config/vim/config.vim"))
          source $HOME/.config/vim/config.vim
      endif
   
      "  sets theme
      if filereadable(expand("$HOME/.config/vim/theme.vim"))
          source $HOME/.config/vim/theme.vim
      endif
   
      "  all key mappings
      if filereadable(expand("$HOME/.config/vim/mappings.vim"))
          source $HOME/.config/vim/mappings.vim
      endif
    '';
  };
}
