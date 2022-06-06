{pkgs, ...}: let
  sysupgrade = pkgs.writeScriptBin "sysupgrade" ''
    #!/usr/bin/env bash
    nix flake update
    sudo nixos-rebuild switch --flake $HOME/.config/env#$USER
  '';
  sysrebuild = pkgs.writeScriptBin "sysrebuild" ''
    #!/usr/bin/env bash
    sudo nixos-rebuild switch --flake $HOME/.config/env#$USER
  '';
in {
  home.packages = [
    sysupgrade
    sysrebuild
  ];
}
