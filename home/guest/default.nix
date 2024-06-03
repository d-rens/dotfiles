{ config, pkgs, ... }:

{
  imports = [
    ../common/core

    ../common/optional/kitty.nix
    ../common/optional/music.nix
    ../common/optional/river.nix
    ../common/optional/tmux.nix
    ../common/optional/video.nix
    ../common/optional/waybars.nix
  ];

  home = {
    username = "guest";
    homeDirectory = "/home/guest";
    stateVersion = "24.11";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };

  programs = {
    home-manager.enable = true;
  };
}

