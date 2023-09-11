{ lib, config, pkgs, ... }:
{
  imports = [
    ../common
    ./window-manager.nix
    ./foot.nix
  ];

  home.packages = with pkgs; [
    # fonts
    source-code-pro
    dejavu_fonts
    liberation_ttf
    source-serif-pro
    font-awesome
    nerdfonts
    roboto
    # communication
    discord
    signal-desktop
  ];

  home.stateVersion = "23.05";
}
