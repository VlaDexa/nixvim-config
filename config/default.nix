{ lib, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./lsp.nix
    ./opts.nix
    ./keymaps.nix
    ./diagnostic.nix
  ];

  colorschemes.tokyonight = {
    enable = true;
    settings = {
      style = "night";
      styles = {
        comments.italic = false; # Disable italics in comments
      };
    };
  };

  globals.mapleader = " ";
  globals.maplocalleader = " ";

  performance.byteCompileLua.enable = true;
  performance.byteCompileLua.plugins = true;
  performance.combinePlugins.enable = true;
  performance.combinePlugins.standalonePlugins = [
    "conform.nvim"
    "copilot.vim"
  ];

  clipboard.register = "unnamedplus";

  autoCmd = [
    {
      event = [ "TextYankPost" ];
      callback = lib.nixvim.mkRaw "function() vim.highlight.on_yank() end";
      group = "kickstart-highlight-yank";
    }
  ];

  autoGroups.kickstart-highlight-yank.clear = true;

  nixpkgs.config.allowUnfree = true;
}
