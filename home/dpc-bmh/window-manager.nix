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
      # Set Resolution of Screens
      output."DP-2" = {
        resolution = "3840x2160";
      };
      output."DP-0" = {
        resolution = "1920x1080";
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