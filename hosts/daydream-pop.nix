{ config, pkgs, lib, ... }:

{
  imports = [
    # Main config
    ./common.nix
    
    # ../modules/vscode.nix
    # ../modules/eww/eww.nix
    # ../modules/kitty.nix
    ../modules/wezterm.nix
    # ../modules/pass.nix
  ];

  # For non NixOS systems
  targets.genericLinux.enable = true;

  # Local packages
  home.packages = with pkgs; [
    bitwarden
    gthumb
    neovim

    # For OpenGL programs e.g. kitty
    nixgl.nixGLNvidia
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  # Set env vars
  home.sessionVariables = {
  };

}
