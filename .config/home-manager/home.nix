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
    pkgs.starship
    pkgs.lazygit
    pkgs.julia
    pkgs.zellij
    pkgs.mprocs
    pkgs.htop-vim
    pkgs.lsd
    #pkgs.distrobox

    # pkgs.waybar
    # pkgs.nwg-drawer
    # pkgs.nwg-bar
    # pkgs.autotiling-rs
  ];

  # Let Home Manager install and manage itself.
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

}
