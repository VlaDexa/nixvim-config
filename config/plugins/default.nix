{
  imports = [
    ./mini
    ./neo-tree.nix
    ./which-key.nix
    ./conform.nix
    ./blink-cmp.nix
    ./treesitter.nix
    ./gitsigns.nix
  ];
  plugins = {
    web-devicons.enable = true;
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
    rustaceanvim.enable = true;
    copilot-vim.enable = true;
  };
}
