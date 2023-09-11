{ lib, config, pkgs, ... }:
{
  programs.helix = {
    enable = true;
    # defaultEditor = true;
    settings = {
      theme = "nord";      
    };        
  };
}
