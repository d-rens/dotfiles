{ pkgs, config, ... }:
{
    home.packages = with pkgs; [
      texliveFull
    ];
}