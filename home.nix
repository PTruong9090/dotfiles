{ config, pkgs, ... }:

{
  home.username = "ptruong9090";
  home.homeDirectory = "/home/ptruong9090/";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    neovim
    starship
    ripgrep
    fd
    fzf
    lazygit
    gcc
    nodejs
    python3
  ];

  programs.git = {
    enable = true;
  };

  programs.starship = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
  };
}
