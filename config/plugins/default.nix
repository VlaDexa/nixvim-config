{
  imports = [
    ./mini
    ./blink-cmp.nix
    ./conform.nix
    ./gitsigns.nix
    ./neo-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  plugins = {
    copilot-vim.enable = true;
    friendly-snippets.enable = true;
    guess-indent.enable = true;
    indent-blankline.enable = true;
    lazydev.enable = true;
    nvim-autopairs.enable = true;
    rustaceanvim.enable = true;
    todo-comments = {
      enable = true;
      settings.signs = false;
    };
    web-devicons.enable = true;
  };
}
