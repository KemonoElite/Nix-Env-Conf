{pkgs, ...}:{
  home.packages = with pkgs; [
    kitty bemenu tmux 
    firefox tmux  wget vim ffmpeg wl-clipboard
    wf-recorder
    gnome3.adwaita-icon-theme
    mpv grim slurp
    qemu
    gruvbox-dark-gtk
    gruvbox-dark-icons-gtk
    transmission-gtk
    easyeffects pulsemixer
    openjdk 
    git 
    freeciv
    openttd xonotic
    drawterm plan9port libreoffice
    gimp yt-dlp zathura
    nsxiv
    mypaint
    (wine.override { wineBuild = "wine64"; })
    (callPackage ./modules/gamescope.nix {})
    winetricks
  ];
}
