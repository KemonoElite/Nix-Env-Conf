{ pkgs, config, ... }:{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  
    plugins = with pkgs.vimPlugins; [
      vim-nix 
      gruvbox
    ];
    extraConfig = ''
      set mouse=""
      set termguicolors
      colorscheme gruvbox
      hi Normal guibg=NONE ctermbg=NONE
      set number relativenumber
      set tabstop=2 expandtab shiftwidth=2
      set clipboard+=unnamedplus
    '';
};
}
