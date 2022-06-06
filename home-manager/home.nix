{ config, pkgs, ... }:
{
  imports = [
    ./modules/alacritty.nix
    ./modules/bash.nix
    ./modules/bspwm.nix
    ./modules/dunst.nix
    ./modules/fish.nix
    ./modules/git.nix
    ./modules/gtk.nix
    ./modules/i3.nix
    ./modules/kitty.nix
    ./modules/mpv.nix
    ./modules/qutebrowser.nix
    ./modules/scripts.nix
    ./modules/sway.nix
    ./modules/tmux.nix
    ./modules/vim.nix
    ./packages.nix
  ];
  
  home.username = "sera";
  home.homeDirectory = "/home/sera";
  home.sessionVariables = {
      XDG_CURRENT_DESKTOP = "sway"; 
      GTK_IM_MODULE       = "fcitx";
      GLFW_IM_MODULE      = "fcitx";
      QT_IM_MODULE        = "fcitx";
      MOZ_ENABLE_WAYLAND  = 1;
      XMODIFIERS          = "@im=fcitx";
    };
  nixpkgs.overlays = [
    (self: super: {
    })
  ];
  home.stateVersion = "22.05";

  programs.home-manager.enable = true;
}
