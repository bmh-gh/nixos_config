{ lib, config, pkgs, ... }:
{
  imports = [
    ./helix.nix
    ./alacritty.nix
    ./librewolf.nix
    ./git.nix
  ];
}
