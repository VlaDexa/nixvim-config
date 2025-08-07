{
  imports = [
    ./mini
    ./neo-tree.nix
    ./which-key.nix
    ./conform.nix
    ./blink-cmp.nix
  ];
  plugins = {
    web-devicons.enable = true;
    treesitter = {
      enable = true;
      folding = true;
      settings.highlight = {
        enable = true;
        additional_vim_regex_highlighting = [ "ruby" ];
      };
    };
    lazydev.enable = true;
    sleuth.enable = true;
    nvim-autopairs.enable = true;
    telescope.enable = true;
    todo-comments = {
      enable = true;
      settings.signs = false;
    };
    friendly-snippets.enable = true;
    indent-blankline.enable = true;
  };
}
