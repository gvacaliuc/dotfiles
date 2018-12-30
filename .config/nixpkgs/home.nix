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

    zathura = {
      enable = true;
      extraConfig = ''
        set selection-clipboard clipboard
      '';
    };

  };

  services = {
    dunst = {
      enable = true;
      settings = {
        global = {
          markup = "yes";
          # The format of the message.  Possible variables are:
          #   %a  appname
          #   %s  summary
          #   %b  body
          #   %i  iconname (including its path)
          #   %I  iconname (without its path)
          #   %p  progress value if set ([  0%] to [100%]) or nothing
          # Markup is allowed
          format = "<b>%s</b>\n%b";

          # Sort messages by urgency.
          sort = "no";

          # Show how many messages are currently hidden (because of geometry).
          indicate_hidden = "yes";

          # Alignment of message text.
          # Possible values are "left", "center" and "right".
          alignment = "center";

          # The frequency with wich text that is longer than the notification
          # window allows bounces back and forth.
          # This option conflicts with "word_wrap".
          # Set to 0 to disable.
          bounce_freq = 0;

          # Show age of message if message is older than show_age_threshold
          # seconds.
          # Set to -1 to disable.
          show_age_threshold = -1;

          # Split notifications into multiple lines if they don't fit into
          # geometry.
          word_wrap = "yes";

          # Ignore newlines '\n' in notifications.
          ignore_newline = "no";

          # Hide duplicate's count and stack them
          stack_duplicates = "yes";
          hide_duplicates_count = "yes";

          # [{width}]x{height}][+/-{x}+/-{y}]
          geometry = "2000x500-30+50";
          transparency = 0;
          browser = "firefox -new-tab";

          frame_width = 3;
          frame_color = "#8EC07C";
        };
        shortcuts = {
          # Close notification.
          close = "ctrl+space";
          # Close all notifications.
          close_all = "ctrl+shift+space";
          # Redisplay last message(s).
          # On the US keyboard layout "grave" is normally above TAB and left
          # of "1".
          history = "ctrl+grave";
          # Context menu.
          context = "ctrl+shift+period";
        };
        urgency_low = {
          frame_color = "#3B7C87";
          foreground = "#3B7C87";
          background = "#191311";
          timeout = 4;
        };
        urgency_normal = {
          frame_color = "#5B8234";
          foreground = "#5B8234";
          background = "#191311";
          timeout = 6;
        };
        urgency_critical = {
          frame_color = "#B7472A";
          foreground = "#B7472A";
          background = "#191311";
          timeout = 8;
        };
      };
    };
  };

}
