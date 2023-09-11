{ lib, config, pkgs, ... }:
{
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      terminal = "foot";
      fonts = {
        names = [ "SourceCodePro-Regular" ];
        size = 12.0;
      };
      input."*" = {
        xkb_layout = "us";
      };
      output."Virtual-1" = {
        resolution = "3840x2160";
      };
      # keybindings = 
      # let
      #   mod = config.wayland.windowManager.sway.config.modifier;
      # in
      # lib.mkOptionDefault {
        
      # };
    };
  };
  programs.swaylock = {
    enable = true;
    settings = {
      indicator-idle-visible = true;
    };
  };
}