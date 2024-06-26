{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'
      return {
        color_scheme = "Catppuccin Mocha",
        font = wezterm.font "FiraCode Nerd Font",
        hide_tab_bar_if_only_one_tab = false,
      }
    '';
    # For future OLEDppuccin setup
    # extraConfig = ''
    #   local wezterm = require("wezterm")

    #   local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
    #   custom.background = "#000000"
    #   custom.tab_bar.background = "#040404"
    #   custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
    #   custom.tab_bar.new_tab.bg_color = "#080808"

    #   return {
    #     color_schemes = {
    #       ["OLEDppuccin"] = custom,
    #     },
    #     color_scheme = "OLEDppuccin",
    #   }
    # '';
  };
}
