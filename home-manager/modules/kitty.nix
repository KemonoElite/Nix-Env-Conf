{config, pkgs, ...}:{
  programs.kitty = {
    enable = true;
    font = {
      name = "Fira Code";
      size = 12;
    };
    settings = {
      background_opacity = "0.95";
      enable_audio_bell = "no";
      cursor                  = "#fbf1c7";
      cursor_text_color       = "background";
      url_color               = "#83a598";
      background              = "#282828";
      foreground              = "#fbf1c7";
      selection_foreground     = "#928374";
      selection_background     = "#ebdbb2";
      active_tab_foreground    = "#fbf1c7";
      active_tab_background    = "#665c54";
      inactive_tab_foreground  = "#a89984";
      inactive_tab_background  = "#3c3836";
      color0                   = "#282828";
      color8                   = "#7c6f64";
      color1                   = "#cc241d";
      color9                   = "#fb4934";
      color2                   = "#98971a";
      color10                  = "#b8bb26";
      color3                  = " #d79921";
      color11                  = "#fabd2f";
      color4                   = "#458588";
      color12                  = "#83a598";
      color5                   = "#b16286";
      color13                  = "#d3869b";
      color6                   = "#689d6a";
      color14                  = "#8ec07c";
      color7                   = "#a89984";
      color15                  = "#fbf1c7";
    };
  };
}
