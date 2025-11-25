{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    folding = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      javascript
      json
      lua
      make
      markdown
      nix
      regex
      toml
      tsx
      typescript
      vim
      vimdoc
      xml
      yaml
      elixir
    ];

    settings.highlight = {
      enable = true;
      additional_vim_regex_highlighting = [ "ruby" ];
    };
  };
}
