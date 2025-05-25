{ config, pkgs, ... }:

{
  home.username = "nimishgj";
  home.homeDirectory = "/Users/nimishgj";
  home.stateVersion = "25.05"; 
  home.packages = [
    pkgs.hello
  ];
  home.file = {
  };
  home.sessionVariables = {
  };
  programs.home-manager.enable = true;
}
