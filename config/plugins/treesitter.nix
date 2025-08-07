{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    folding = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      typescript
      javascript
    ];

    settings.highlight = {
      enable = true;
      additional_vim_regex_highlighting = [ "ruby" ];
    };
  };
}
