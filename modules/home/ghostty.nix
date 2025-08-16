{ pkgs, host, ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      font-family = [
        "Maple Mono"
        "DejaVu Sans"
      ];
      font-size = "${if (host == "laptop") then "16" else "17"}";
      font-feature = [
        "calt"
        "ss03"
      ];

      bold-is-bright = false;
      selection-invert-fg-bg = true;

      # Theme
      theme = "gruvbox";
      background-opacity = 0.66;

      cursor-style = "bar";
      cursor-style-blink = false;
      adjust-cursor-thickness = 1;

      resize-overlay = "never";
      copy-on-select = false;
      confirm-close-surface = false;
      mouse-hide-while-typing = true;

      window-theme = "ghostty";
      # window-padding-x = 4;
      # window-padding-y = 6;
      window-padding-balance = true;
      window-padding-color = "background";
      window-inherit-working-directory = true;
      window-inherit-font-size = true;
      window-decoration = false;

      gtk-titlebar = false;
      gtk-single-instance = false;
      gtk-tabs-location = "bottom";
      gtk-wide-tabs = false;

      auto-update = "off";
      term = "ghostty";
      clipboard-paste-protection = false;
      keybind = [
        "alt+f4=unbind"
        "alt+1=unbind"
        "alt+2=unbind"
        "alt+3=unbind"
        "alt+4=unbind"
        "alt+5=unbind"
        "alt+6=unbind"
        "alt+7=unbind"
        "alt+8=unbind"
        "alt+9=unbind"
        "ctrl+alt+down=unbind"
        "ctrl+alt+left=unbind"
        "ctrl+alt+right=unbind"
        "ctrl+alt+shift+j=unbind"
        "ctrl+alt+up=unbind"
        "ctrl+enter=unbind"

        "ctrl+comma=open_config"
        "ctrl+equal=increase_font_size:1"
        "ctrl+insert=copy_to_clipboard"
        "ctrl+minus=decrease_font_size:1"
        "ctrl+plus=increase_font_size:1"

        "ctrl+page_down=unbind"
        "ctrl+page_up=unbind"
        "ctrl+shift+a=unbind"
        "ctrl+shift+c=unbind"
        "ctrl+shift+comma=unbind"
        "ctrl+shift+e=unbind"
        "ctrl+shift+enter=unbind"
        "ctrl+shift+i=unbind"
        "ctrl+shift+j=unbind"
        "ctrl+shift+left=unbind"
        "ctrl+shift+n=unbind"
        "ctrl+shift+o=unbind"
        "ctrl+shift+page_down=unbind"
        "ctrl+shift+page_up=unbind"
        "ctrl+shift+q=unbind"
        "ctrl+shift+right=unbind"
        "ctrl+shift+t=unbind"
        "ctrl+shift+tab=unbind"
        "ctrl+shift+v=unbind"
        "ctrl+shift+w=unbind"
        "ctrl+tab=unbind"
        "ctrl+zero=unbind"
        "shift+down=unbind"
        "shift+end=unbind"
        "shift+home=unbind"
        "shift+insert=unbind"
        "shift+left=unbind"
        "shift+page_down=unbind"
        "shift+page_up=unbind"
        "shift+right=unbind"
        "shift+up=unbind"
        "super+ctrl+left_bracket=unbind"
        "super+ctrl+right_bracket=unbind"
        "super+ctrl+shift+down=unbind"
        "super+ctrl+shift+left=unbind"
        "super+ctrl+shift+plus=unbind"
        "super+ctrl+shift+right=unbind"
        "super+ctrl+shift+up=unbind"
      ];
    };

    themes.gruvbox = {
      background = "1d2021";
      foreground = "fbf1c7";

      cursor-color = "D5C4A1";

      selection-foreground = "282828";
      selection-background = "98971A";

      palette = [
        "0=#32302f"
        "1=#cc241d"
        "2=#98971a"
        "3=#d79921"
        "4=#458588"
        "5=#b16286"
        "6=#689d6a"
        "7=#ebdbb2"

        "8=#928374"
        "9=#fb4934"
        "10=#b8bb26"
        "11=#fabd2f"
        "12=#83a598"
        "13=#d3869b"
        "14=#8ec07c"
        "15=#fbf1c7"
      ];
    };
  };
}
