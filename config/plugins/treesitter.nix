{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    folding.enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      css
      elixir
      heex
      html
      javascript
      json
      lua
      make
      markdown
      nix
      regex
      scss
      svelte
      toml
      tsx
      typescript
      vim
      vimdoc
      xml
      yaml
    ];

    settings.highlight = {
      enable = true;
      additional_vim_regex_highlighting = [ "ruby" ];
    };
  };
}
