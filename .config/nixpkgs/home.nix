{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "shivang";
  home.homeDirectory = "/home/shivang";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";
  home.packages = [
    pkgs.nitch
    pkgs.du-dust
    pkgs.stylua
    pkgs.htop-vim
    pkgs.starship
    pkgs.vimv
    pkgs.lsd
    pkgs.lf
    pkgs.cinnamon.warpinator

    pkgs.nwg-drawer
    pkgs.nwg-bar
    pkgs.waybar
  ];

  # Let Home Manager install and manage itself.
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

}
