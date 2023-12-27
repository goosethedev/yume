{ config, lib, pkgs, ... }:

{
  # LSP to use for Emacs or Helix
  home.packages = with pkgs; [
    # Nix
    nil # Lang server
    nixpkgs-fmt # Formatter

    # Web
    typescript
    nodePackages.typescript-language-server
    vscode-langservers-extracted
    tailwind-language-server

    # Python (Pyright + Ruff + Black)
    nodePackages.pyright
    ruff
    black

    # Utils
    nodePackages.bash-language-server
    clang-tools # C / C++
    dockerfile-language-server-nodejs
    marksman # Markdown
    taplo # TOML
    yaml-language-server
  ];
}
