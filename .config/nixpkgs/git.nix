{ pkgs, ... }:

{

  programs = {
    git = {
      package = pkgs.git-hub;
      userEmail = "gabe.vacaliuc@gmail.com";
      userName = "Gabriel Vacaliuc";
      aliases = {
        co = "checkout";
        promote = "!~/bin/git-promote";
        wtf = "!~/bin/git-wtf";
        rank-contributors = "!~/bin/git-rank-contributors";
        count = "!git shortlog -sn";
      };
      ignores = [
        # Compiled source #
        ###################
        "*.com"
        "*.class"
        "*.dll"
        "*.exe"
        "*.o"
        "*.so"

        # Packages #
        ############
        # it's better to unpack these files and commit the raw source
        # git has its own built in compression methods
        "*.7z"
        "*.dmg"
        "*.gz"
        "*.iso"
        "*.jar"
        "*.rar"
        "*.tar"
        "*.zip"

        # Logs and databases #
        ######################
        "*.log"
        "*.sql"
        "*.sqlite"

        # OS generated files #
        ######################
        ".DS_Store"
        ".DS_Store?"
        "._*"
        ".Spotlight-V100"
        ".Trashes"
        "ehthumbs.db"
        "Thumbs.db"

        # vim swp files #
        #################
        "*.swp"
        "*.swo"
        "*.swn"
        "*.swm"

        # latex files
        "*.aux"
        "*.out"
        "_minted*"
      ];
    };

    bash.sessionVariables = {
      GIT_CREDENTIAL_HELPER="~/.git_credentials";
    };
  };

}
