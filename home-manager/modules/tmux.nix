{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a";
    terminal = "tmux-256color";
    escapeTime = 0;
    extraConfig = ''
      set -g mouse on
      bind-key C new-window -c "#{pane_current_path}"
      bind-key -n C-J previous-window
      bind-key -n C-K next-window
      bind-key C-a send-prefix
      bind-key '"' split-window -v -c "#{pane_current_path}"
      bind-key '%' split-window -h -c "#{pane_current_path}"
    '';
  };
}
