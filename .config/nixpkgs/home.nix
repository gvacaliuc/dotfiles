{ pkgs, ... }:

{

  imports = [
    ./vim.nix
    ./bash.nix
  ];

  programs = {
    home-manager.enable = true;
    home-manager.path = https://github.com/rycee/home-manager/archive/release-18.09.tar.gz;

    autorandr = {
      enable = true;
      profiles = {
        "laptop" = {
          fingerprint = {
            eDP1 = "00ffffffffffff0030e400000000000000170104a01d117802f195a35552a1260f505400000001010101010101010101010101010101885e00a0a0a029503020230025a510000019053f00a0a0a029503020230025a5100000190000000000000000000000000000000000000000000200072dff0a3caa221432aa0000000055";
          };
          config = {
            eDP1 = {
              enable = true;
              mode = "2560x1440";
              position = "0x0";
              primary = true;
              rate = "60.07";
            };
          };
        };
      };
    };

    zathura.enable = true;

  };

}
