{ config, lib, pkgs, ... }:

{
  programs.emacs = {
    enable = true;
  };

  # Enable daemon for clients
  services.emacs = {
    enable = true;
    client.enable = true;
  };

  # Dependencies
  home.packages = with pkgs; [
    fd
    ripgrep
    cmake
    gnumake
    libtool
    shellcheck

    # Lang servers
    nil # Nix LS
    nixfmt # Nix formatter
    typescript
    nodePackages.typescript-language-server
    yaml-language-server
    dockerfile-language-server-nodejs
  ];
  
}